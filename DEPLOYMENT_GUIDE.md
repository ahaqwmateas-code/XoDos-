# XoDos Ultra AI - Deployment & Build Guide

**Version:** 2.0.0+20260414  
**Status:** Production Ready  
**Last Updated:** April 14, 2026

---

## 📋 Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Building for Different Platforms](#building-for-different-platforms)
4. [Deployment Instructions](#deployment-instructions)
5. [Troubleshooting](#troubleshooting)
6. [Performance Optimization](#performance-optimization)

---

## Prerequisites

### System Requirements

#### For Android Development
- **Operating System:** Linux, macOS, or Windows
- **Flutter SDK:** 3.24.0 or later
- **Android SDK:** API 28 or higher
- **Java Development Kit:** Version 17+
- **Git:** Latest version
- **RAM:** Minimum 8GB (16GB recommended)
- **Disk Space:** At least 10GB free

#### For Termux/Termux-X11
- **Device:** Android 9+ (API 28+)
- **Termux App:** Latest version from F-Droid or GitHub
- **Termux-X11:** Latest version (for X11 support)
- **Storage:** At least 5GB free space

#### For Web Development
- **Node.js:** 16+ (optional, for local testing)
- **Modern Browser:** Chrome, Firefox, Safari, or Edge

#### For Linux/macOS/Windows
- **Flutter Desktop Support:** Enabled
- **Development Tools:** XCode (macOS), Visual Studio (Windows), or build-essential (Linux)

### Software Installation

#### Install Flutter
```bash
# Download Flutter
git clone https://github.com/flutter/flutter.git -b stable

# Add to PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Verify installation
flutter doctor
```

#### Install Android SDK
```bash
# Using Android Studio (recommended)
# Download from: https://developer.android.com/studio

# Or using command-line tools
wget https://dl.google.com/android/repository/commandlinetools-linux-*.zip
unzip commandlinetools-linux-*.zip
```

#### Install Java 17
```bash
# Ubuntu/Debian
sudo apt-get install openjdk-17-jdk

# macOS
brew install openjdk@17

# Windows (using Chocolatey)
choco install openjdk17
```

---

## Installation

### Step 1: Clone the Repository

```bash
# Using GitHub CLI
gh repo clone ahaqwmateas-code/XoDos-

# Or using Git
git clone https://github.com/ahaqwmateas-code/XoDos-.git
cd XoDos-
```

### Step 2: Verify Flutter Installation

```bash
# Check Flutter version
flutter --version

# Run Flutter doctor to check dependencies
flutter doctor

# Expected output should show:
# - Flutter (Channel stable)
# - Android toolchain
# - Android SDK
# - Java
```

### Step 3: Install Dependencies

```bash
# Get all Dart/Flutter dependencies
flutter pub get

# Update dependencies to latest versions
flutter pub upgrade

# Check for any issues
flutter pub outdated
```

### Step 4: Configure Android Build

```bash
# Accept Android licenses
flutter doctor --android-licenses

# Verify Android SDK
flutter config --android-sdk-path /path/to/android/sdk
```

---

## Building for Different Platforms

### Android - APK Release Build

#### Standard Release Build
```bash
# Build optimized APK
flutter build apk --release

# Output: build/app/outputs/flutter-app.apk
```

#### Obfuscated Release Build (Recommended)
```bash
# Build with obfuscation and split debug info
flutter build apk --release \
  --obfuscate \
  --split-debug-info=build/app/outputs/symbols

# Output: build/app/outputs/flutter-app.apk
```

#### Debug Build (for testing)
```bash
# Build debug APK
flutter build apk --debug

# Output: build/app/outputs/flutter-app-debug.apk
```

### Android - App Bundle (Google Play)

```bash
# Build Android App Bundle for Google Play
flutter build appbundle --release \
  --obfuscate \
  --split-debug-info=build/app/outputs/symbols

# Output: build/app/outputs/app-release.aab
```

### Web Build

```bash
# Build for web
flutter build web --release

# Output: build/web/

# Serve locally for testing
flutter run -d chrome
```

### Linux Build

```bash
# Build for Linux
flutter build linux --release

# Output: build/linux/x64/release/bundle/
```

### macOS Build

```bash
# Build for macOS
flutter build macos --release

# Output: build/macos/Build/Products/Release/
```

### Windows Build

```bash
# Build for Windows
flutter build windows --release

# Output: build/windows/runner/Release/
```

### Termux/Termux-X11 Build

```bash
# In Termux terminal
pkg install flutter

# Clone repository
git clone https://github.com/ahaqwmateas-code/XoDos-.git
cd XoDos-

# Install dependencies
flutter pub get

# Build APK
flutter build apk --release

# Install on device
adb install build/app/outputs/flutter-app.apk
```

---

## Deployment Instructions

### Android Deployment

#### Via ADB (Android Debug Bridge)

```bash
# Connect device via USB
adb devices

# Install APK
adb install build/app/outputs/flutter-app.apk

# Or reinstall if already installed
adb install -r build/app/outputs/flutter-app.apk

# Launch app
adb shell am start -n com.ahaqwmateas.xodos.elite/.MainActivity
```

#### Via File Transfer

1. Build the APK: `flutter build apk --release`
2. Transfer `build/app/outputs/flutter-app.apk` to your device
3. Open file manager and tap the APK file
4. Follow installation prompts

#### Via Google Play Store

1. Build App Bundle: `flutter build appbundle --release`
2. Upload to Google Play Console
3. Configure store listing and pricing
4. Submit for review
5. Publish when approved

### Web Deployment

#### Deploy to Firebase Hosting

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase project
firebase init hosting

# Build Flutter web
flutter build web

# Deploy
firebase deploy
```

#### Deploy to GitHub Pages

```bash
# Build Flutter web
flutter build web --base-href="/XoDos-/"

# Create gh-pages branch
git checkout --orphan gh-pages
git rm -rf .

# Copy build files
cp -r build/web/* .
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages
```

#### Deploy to Netlify

```bash
# Build Flutter web
flutter build web

# Install Netlify CLI
npm install -g netlify-cli

# Deploy
netlify deploy --prod --dir=build/web
```

### Linux/macOS/Windows Deployment

#### Create Distribution Package

```bash
# For Linux
tar -czf xodos-linux-x64.tar.gz build/linux/x64/release/bundle/

# For macOS
ditto build/macos/Build/Products/Release/xodos.app xodos-macos.app
zip -r xodos-macos.zip xodos-macos.app

# For Windows
7z a xodos-windows.zip build/windows/runner/Release/
```

#### Create Installer

```bash
# Linux (using FPM)
fpm -s dir -t deb -n xodos -v 2.0.0 \
  -C build/linux/x64/release/bundle/ \
  -p xodos-2.0.0.deb

# macOS (using create-dmg)
create-dmg xodos-macos.dmg xodos-macos.app

# Windows (using NSIS or WiX)
# Use Windows installer tools for professional packaging
```

---

## Troubleshooting

### Common Build Issues

#### Issue: "Flutter not found"
```bash
# Solution: Add Flutter to PATH
export PATH="$PATH:$(pwd)/flutter/bin"

# Or install Flutter properly
git clone https://github.com/flutter/flutter.git -b stable
```

#### Issue: "Android SDK not found"
```bash
# Solution: Set Android SDK path
flutter config --android-sdk-path /path/to/android/sdk

# Or install Android SDK
flutter doctor --android-licenses
```

#### Issue: "Java version mismatch"
```bash
# Solution: Use Java 17
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

# Verify
java -version
```

#### Issue: "Gradle build failed"
```bash
# Solution: Clean and rebuild
flutter clean
flutter pub get
flutter build apk --release
```

#### Issue: "Dependencies conflict"
```bash
# Solution: Update dependencies
flutter pub upgrade
flutter pub get
flutter clean
flutter build apk --release
```

### Platform-Specific Issues

#### Android Issues

```bash
# Clear Android build cache
rm -rf android/.gradle
rm -rf android/app/build

# Rebuild
flutter build apk --release
```

#### Web Issues

```bash
# Clear web build cache
rm -rf build/web

# Rebuild
flutter build web --release
```

#### Termux Issues

```bash
# Update Termux packages
pkg update
pkg upgrade

# Reinstall Flutter
pkg install flutter

# Clear cache
flutter clean
flutter pub get
```

---

## Performance Optimization

### Build Optimization

```bash
# Enable obfuscation
flutter build apk --release --obfuscate

# Split debug info
flutter build apk --release --split-debug-info=build/app/outputs/symbols

# Reduce APK size
flutter build apk --release --target-platform android-arm64
```

### Runtime Optimization

#### Reduce App Size
- Remove unused assets
- Optimize images
- Enable code shrinking
- Use ProGuard rules

#### Improve Performance
- Use release builds
- Enable hardware acceleration
- Optimize database queries
- Cache frequently used data

#### Memory Management
- Monitor memory usage
- Dispose resources properly
- Avoid memory leaks
- Use lazy loading

### Testing Before Release

```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/

# Build and test release APK
flutter build apk --release
adb install -r build/app/outputs/flutter-app.apk
```

---

## Release Checklist

Before releasing to production:

- [ ] All tests passing
- [ ] No console errors or warnings
- [ ] Performance verified
- [ ] Security reviewed
- [ ] Documentation updated
- [ ] Version number updated
- [ ] Changelog created
- [ ] Release notes written
- [ ] Build artifacts created
- [ ] Deployment tested
- [ ] Rollback plan prepared
- [ ] User communication ready

---

## Support & Resources

- **Flutter Documentation:** https://flutter.dev/docs
- **Android Documentation:** https://developer.android.com/docs
- **GitHub Repository:** https://github.com/ahaqwmateas-code/XoDos-
- **Issue Tracker:** https://github.com/ahaqwmateas-code/XoDos-/issues

---

**XoDos Ultra AI - Build & Deploy with Confidence** 🚀

Developed by Ahaqwmateas Elite - 2026
