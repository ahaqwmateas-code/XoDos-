import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:clipboard/clipboard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

// ==================== DATA MODELS ====================

/// Represents a workstation profile
class WorkstationProfile {
  final String id;
  final String name;
  final String host;
  final int port;
  final String? username;
  final String? password;
  final String protocol;
  final Map<String, dynamic> settings;
  final DateTime createdAt;
  final DateTime? lastConnected;
  final bool isActive;

  const WorkstationProfile({
    required this.id,
    required this.name,
    required this.host,
    required this.port,
    this.username,
    this.password,
    required this.protocol,
    this.settings = const {},
    required this.createdAt,
    this.lastConnected,
    this.isActive = false,
  });

  WorkstationProfile copyWith({
    String? id,
    String? name,
    String? host,
    int? port,
    String? username,
    String? password,
    String? protocol,
    Map<String, dynamic>? settings,
    DateTime? createdAt,
    DateTime? lastConnected,
    bool? isActive,
  }) {
    return WorkstationProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
      username: username ?? this.username,
      password: password ?? this.password,
      protocol: protocol ?? this.protocol,
      settings: settings ?? this.settings,
      createdAt: createdAt ?? this.createdAt,
      lastConnected: lastConnected ?? this.lastConnected,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'host': host,
      'port': port,
      'username': username,
      'password': password,
      'protocol': protocol,
      'settings': settings,
      'createdAt': createdAt.toIso8601String(),
      'lastConnected': lastConnected?.toIso8601String(),
      'isActive': isActive,
    };
  }

  factory WorkstationProfile.fromJson(Map<String, dynamic> json) {
    return WorkstationProfile(
      id: json['id'] as String,
      name: json['name'] as String,
      host: json['host'] as String,
      port: json['port'] as int,
      username: json['username'] as String?,
      password: json['password'] as String?,
      protocol: json['protocol'] as String,
      settings: json['settings'] as Map<String, dynamic>? ?? {},
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastConnected: json['lastConnected'] != null
          ? DateTime.parse(json['lastConnected'] as String)
          : null,
      isActive: json['isActive'] as bool? ?? false,
    );
  }

  @override
  String toString() => 'WorkstationProfile(id: $id, name: $name, host: $host)';
}

enum ConnectionStatus { disconnected, connecting, connected, error, timeout }

class AppSettings {
  final bool keepScreenAwake;
  final bool enableNotifications;
  final String theme;
  final String locale;
  final int connectionTimeout;
  final bool autoReconnect;

  const AppSettings({
    this.keepScreenAwake = true,
    this.enableNotifications = true,
    this.theme = 'dark',
    this.locale = 'en',
    this.connectionTimeout = 30,
    this.autoReconnect = true,
  });

  Map<String, dynamic> toJson() {
    return {
      'keepScreenAwake': keepScreenAwake,
      'enableNotifications': enableNotifications,
      'theme': theme,
      'locale': locale,
      'connectionTimeout': connectionTimeout,
      'autoReconnect': autoReconnect,
    };
  }

  factory AppSettings.fromJson(Map<String, dynamic> json) {
    return AppSettings(
      keepScreenAwake: json['keepScreenAwake'] as bool? ?? true,
      enableNotifications: json['enableNotifications'] as bool? ?? true,
      theme: json['theme'] as String? ?? 'dark',
      locale: json['locale'] as String? ?? 'en',
      connectionTimeout: json['connectionTimeout'] as int? ?? 30,
      autoReconnect: json['autoReconnect'] as bool? ?? true,
    );
  }
}

// ==================== DATA PERSISTENCE ====================

class DataGuard {
  static const String _profilesKey = 'workstation_profiles';
  static const String _settingsKey = 'app_settings';
  static SharedPreferences? _prefs;
  static List<WorkstationProfile> _cachedProfiles = [];
  static AppSettings? _cachedSettings;

  static Future<void> initialize() async {
    try {
      _prefs ??= await SharedPreferences.getInstance();
      await loadProfiles();
      await loadSettings();
    } catch (e) {
      debugPrint('Error initializing DataGuard: $e');
    }
  }

  static Future<List<WorkstationProfile>> loadProfiles() async {
    try {
      await _ensureInitialized();
      final jsonString = _prefs?.getString(_profilesKey);
      if (jsonString == null || jsonString.isEmpty) {
        _cachedProfiles = [];
        return _cachedProfiles;
      }
      final jsonList = jsonDecode(jsonString) as List<dynamic>;
      _cachedProfiles = jsonList
          .map((item) => WorkstationProfile.fromJson(item as Map<String, dynamic>))
          .toList();
      return _cachedProfiles;
    } catch (e) {
      debugPrint('Error loading profiles: $e');
      _cachedProfiles = [];
      return _cachedProfiles;
    }
  }

  static Future<bool> saveProfiles(List<WorkstationProfile> profiles) async {
    try {
      await _ensureInitialized();
      _cachedProfiles = profiles;
      final jsonList = profiles.map((p) => p.toJson()).toList();
      final jsonString = jsonEncode(jsonList);
      return await _prefs?.setString(_profilesKey, jsonString) ?? false;
    } catch (e) {
      debugPrint('Error saving profiles: $e');
      return false;
    }
  }

  static Future<bool> addProfile(WorkstationProfile profile) async {
    try {
      final profiles = List<WorkstationProfile>.from(_cachedProfiles);
      profiles.add(profile);
      return await saveProfiles(profiles);
    } catch (e) {
      debugPrint('Error adding profile: $e');
      return false;
    }
  }

  static Future<bool> updateProfile(WorkstationProfile profile) async {
    try {
      final profiles = List<WorkstationProfile>.from(_cachedProfiles);
      final index = profiles.indexWhere((p) => p.id == profile.id);
      if (index == -1) return false;
      profiles[index] = profile;
      return await saveProfiles(profiles);
    } catch (e) {
      debugPrint('Error updating profile: $e');
      return false;
    }
  }

  static Future<bool> deleteProfile(String profileId) async {
    try {
      final profiles = List<WorkstationProfile>.from(_cachedProfiles);
      profiles.removeWhere((p) => p.id == profileId);
      return await saveProfiles(profiles);
    } catch (e) {
      debugPrint('Error deleting profile: $e');
      return false;
    }
  }

  static WorkstationProfile? getProfile(String profileId) {
    try {
      return _cachedProfiles.firstWhere((p) => p.id == profileId);
    } catch (e) {
      debugPrint('Error getting profile: $e');
      return null;
    }
  }

  static List<WorkstationProfile> getAllProfiles() {
    return List<WorkstationProfile>.from(_cachedProfiles);
  }

  static Future<AppSettings> loadSettings() async {
    try {
      await _ensureInitialized();
      final jsonString = _prefs?.getString(_settingsKey);
      if (jsonString == null || jsonString.isEmpty) {
        _cachedSettings = const AppSettings();
        return _cachedSettings!;
      }
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      _cachedSettings = AppSettings.fromJson(json);
      return _cachedSettings!;
    } catch (e) {
      debugPrint('Error loading settings: $e');
      _cachedSettings = const AppSettings();
      return _cachedSettings!;
    }
  }

  static Future<bool> saveSettings(AppSettings settings) async {
    try {
      await _ensureInitialized();
      _cachedSettings = settings;
      final jsonString = jsonEncode(settings.toJson());
      return await _prefs?.setString(_settingsKey, jsonString) ?? false;
    } catch (e) {
      debugPrint('Error saving settings: $e');
      return false;
    }
  }

  static AppSettings getSettings() {
    return _cachedSettings ?? const AppSettings();
  }

  static Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
  }
}

// ==================== EXTRACTION MANAGER ====================

class ExtractionManager {
  static const String _extractionCompleteKey = 'extraction_complete';
  static const String _extractionProgressTKey = 'extraction_progress_t';
  static const double _maxProgressT = 300.0;

  static Future<bool> isExtractionComplete() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_extractionCompleteKey) ?? false;
    } catch (e) {
      debugPrint('Error checking extraction status: $e');
      return false;
    }
  }

  static Future<void> setExtractionComplete() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_extractionCompleteKey, true);
    } catch (e) {
      debugPrint('Error setting extraction complete: $e');
    }
  }

  static Future<double> getExtractionProgressT() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getDouble(_extractionProgressTKey) ?? 0.0;
    } catch (e) {
      debugPrint('Error getting extraction progress: $e');
      return 0.0;
    }
  }

  static Future<void> setExtractionProgressT(double progressT) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final clampedValue = progressT.clamp(0.0, _maxProgressT);
      await prefs.setDouble(_extractionProgressTKey, clampedValue);
    } catch (e) {
      debugPrint('Error setting extraction progress: $e');
    }
  }

  static Future<double> getExtractionProgress() async {
    try {
      if (await isExtractionComplete()) return 1.0;
      final progressT = await getExtractionProgressT();
      final progress = 1 - pow(10, progressT / -_maxProgressT).toDouble();
      return progress.clamp(0.0, 1.0);
    } catch (e) {
      debugPrint('Error calculating extraction progress: $e');
      return 0.0;
    }
  }

  static Future<void> resetProgress() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_extractionCompleteKey);
      await prefs.remove(_extractionProgressTKey);
    } catch (e) {
      debugPrint('Error resetting extraction progress: $e');
    }
  }
}

// ==================== MAIN APP ====================

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await DataGuard.initialize();
    await WakelockPlus.enable();
    runApp(const XodosApp());
  } catch (e) {
    debugPrint('Initialization error: $e');
    runApp(const ErrorApp());
  }
}

class XodosApp extends StatelessWidget {
  const XodosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XoDos Workstation',
      debugShowCheckedModeBanner: false,
      theme: _buildDarkTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.dark,
      home: const XodosDashboard(),
    );
  }

  static ThemeData _buildDarkTheme() {
    const primaryColor = Color(0xFF2196F3);
    const secondaryColor = Color(0xFF4CAF50);
    const surfaceColor = Color(0xFF1E1E1E);
    const backgroundColor = Color(0xFF0A0A0A);

    final baseTheme = ThemeData.dark(useMaterial3: true);

    return baseTheme.copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      cardTheme: const CardThemeData(
        color: surfaceColor,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      colorScheme: baseTheme.colorScheme.copyWith(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        background: backgroundColor,
        onBackground: Colors.white,
        onSurface: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: surfaceColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: surfaceColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    );
  }
}

class ErrorApp extends StatelessWidget {
  const ErrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF0A0A0A),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, color: Colors.red, size: 64),
              const SizedBox(height: 16),
              const Text(
                'Initialization Error',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => exit(0),
                child: const Text('Exit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== DASHBOARD SCREEN ====================

class XodosDashboard extends StatefulWidget {
  const XodosDashboard({super.key});

  @override
  State<XodosDashboard> createState() => _XodosDashboardState();
}

class _XodosDashboardState extends State<XodosDashboard> {
  late List<WorkstationProfile> _profiles = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProfiles();
  }

  void _loadProfiles() async {
    try {
      final profiles = await DataGuard.loadProfiles();
      if (mounted) {
        setState(() {
          _profiles = profiles;
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('Error loading profiles: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _deleteProfile(String profileId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Profile'),
        content: const Text('Are you sure you want to delete this profile?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await DataGuard.deleteProfile(profileId);
      _loadProfiles();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XoDos Workstation'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings coming soon')),
              );
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _profiles.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.computer, size: 64, color: Colors.grey[600]),
                      const SizedBox(height: 16),
                      const Text(
                        'No Profiles',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Add a workstation profile to get started',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: _profiles.length,
                  itemBuilder: (context, index) {
                    final profile = _profiles[index];
                    return ProfileCard(
                      profile: profile,
                      onDelete: () => _deleteProfile(profile.id),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Connecting to ${profile.name}')),
                        );
                      },
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProfileScreen()),
          );
          _loadProfiles();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final WorkstationProfile profile;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const ProfileCard({
    super.key,
    required this.profile,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profile.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${profile.host}:${profile.port}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Delete'),
                        onTap: onDelete,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      profile.protocol,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (profile.lastConnected != null)
                    Text(
                      'Last: ${_formatTime(profile.lastConnected!)}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final diff = now.difference(time);

    if (diff.inMinutes < 60) {
      return '${diff.inMinutes}m ago';
    } else if (diff.inHours < 24) {
      return '${diff.inHours}h ago';
    } else {
      return '${diff.inDays}d ago';
    }
  }
}

// ==================== ADD PROFILE SCREEN ====================

class AddProfileScreen extends StatefulWidget {
  const AddProfileScreen({super.key});

  @override
  State<AddProfileScreen> createState() => _AddProfileScreenState();
}

class _AddProfileScreenState extends State<AddProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _hostController;
  late TextEditingController _portController;
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  String _selectedProtocol = 'VNC';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _hostController = TextEditingController();
    _portController = TextEditingController(text: '5900');
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _hostController.dispose();
    _portController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final profile = WorkstationProfile(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text,
        host: _hostController.text,
        port: int.parse(_portController.text),
        username: _usernameController.text.isEmpty ? null : _usernameController.text,
        password: _passwordController.text.isEmpty ? null : _passwordController.text,
        protocol: _selectedProtocol,
        createdAt: DateTime.now(),
      );

      await DataGuard.addProfile(profile);

      if (mounted) {
        Navigator.pop(context);
      }
    } catch (e) {
      debugPrint('Error saving profile: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error saving profile')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Workstation'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Profile Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Profile Name',
                  hintText: 'e.g., Production Server',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Profile name is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _hostController,
                decoration: InputDecoration(
                  labelText: 'Host Address',
                  hintText: '192.168.1.100',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Host address is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _portController,
                decoration: InputDecoration(
                  labelText: 'Port',
                  hintText: '5900',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Port is required';
                  }
                  final port = int.tryParse(value!);
                  if (port == null || port < 1 || port > 65535) {
                    return 'Invalid port number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedProtocol,
                decoration: InputDecoration(
                  labelText: 'Protocol',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: 'VNC', child: Text('VNC')),
                  DropdownMenuItem(value: 'RDP', child: Text('RDP')),
                  DropdownMenuItem(value: 'SSH', child: Text('SSH')),
                  DropdownMenuItem(value: 'X11', child: Text('X11')),
                ]
                    .map((item) => DropdownMenuItem(
                          value: item.value,
                          child: item.child,
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => _selectedProtocol = value);
                  }
                },
              ),
              const SizedBox(height: 24),
              const Text(
                'Credentials (Optional)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _saveProfile,
                  child: _isLoading
                      ? const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Save Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== EXTRACTION PROGRESS CIRCLE ====================

class ExtractionProgressCircle extends StatefulWidget {
  const ExtractionProgressCircle({super.key});

  @override
  State<ExtractionProgressCircle> createState() =>
      _ExtractionProgressCircleState();
}

class _ExtractionProgressCircleState extends State<ExtractionProgressCircle> {
  double _progress = 0.0;
  Timer? _progressTimer;
  bool _showCircle = false;
  bool _extractionComplete = false;

  @override
  void initState() {
    super.initState();
    _initializeExtraction();
  }

  void _initializeExtraction() async {
    _extractionComplete = await ExtractionManager.isExtractionComplete();

    if (_extractionComplete) return;

    if (mounted) {
      setState(() => _showCircle = true);
    }

    _progressTimer = Timer.periodic(const Duration(milliseconds: 500), (_) async {
      if (!mounted) return;

      try {
        final progress = await ExtractionManager.getExtractionProgress();
        final complete = await ExtractionManager.isExtractionComplete();

        if (mounted) {
          setState(() {
            _progress = progress;
            _extractionComplete = complete;
          });

          if (complete && _showCircle) {
            _progressTimer?.cancel();
            Future.delayed(const Duration(seconds: 2), () {
              if (mounted) {
                setState(() => _showCircle = false);
              }
            });
          }
        }
      } catch (e) {
        debugPrint('Error updating extraction progress: $e');
      }
    });
  }

  @override
  void dispose() {
    _progressTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_showCircle || _extractionComplete) {
      return const SizedBox.shrink();
    }

    final percentage = (_progress * 100).toStringAsFixed(0);
    final progressColor = _progress > 0.8
        ? Colors.green
        : _progress > 0.5
            ? Colors.blue
            : Colors.orange;

    return Positioned(
      top: MediaQuery.of(context).padding.top + 10,
      right: 20,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
          shape: BoxShape.circle,
          border: Border.all(color: progressColor, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              blurRadius: 12,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: _progress,
              backgroundColor: Colors.grey[800],
              valueColor: AlwaysStoppedAnimation<Color>(progressColor),
              strokeWidth: 3,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$percentage%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'loading',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== UTILITY WIDGETS ====================

class RTLWrapper extends StatelessWidget {
  final Widget child;

  const RTLWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: child,
    );
  }
}

class FakeLoadingStatus extends StatefulWidget {
  const FakeLoadingStatus({super.key});

  @override
  State<FakeLoadingStatus> createState() => _FakeLoadingStatusState();
}

class _FakeLoadingStatusState extends State<FakeLoadingStatus> {
  double _progressT = 0.0;
  Timer? _timer;
  bool _extractionComplete = false;

  @override
  void initState() {
    super.initState();
    _loadInitialProgress();
  }

  void _loadInitialProgress() async {
    try {
      final savedProgressT = await ExtractionManager.getExtractionProgressT();
      final savedComplete = await ExtractionManager.isExtractionComplete();

      if (mounted) {
        setState(() {
          _progressT = savedProgressT;
          _extractionComplete = savedComplete;
        });
      }

      if (!_extractionComplete) {
        _startProgressAnimation();
      }
    } catch (e) {
      debugPrint('Error loading initial progress: $e');
    }
  }

  void _startProgressAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 135), (timer) async {
      if (_extractionComplete || !mounted) {
        timer.cancel();
        return;
      }

      try {
        setState(() => _progressT += 0.1);
        await ExtractionManager.setExtractionProgressT(_progressT);

        final progress = 1 - pow(10, _progressT / -300).toDouble();
        if (progress >= 0.999 && !_extractionComplete) {
          _extractionComplete = true;
          await ExtractionManager.setExtractionComplete();
          timer.cancel();
        }
      } catch (e) {
        debugPrint('Error updating progress: $e');
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final progress = 1 - pow(10, _progressT / -300).toDouble();
    return LinearProgressIndicator(
      value: progress.clamp(0.0, 1.0),
      minHeight: 4,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

