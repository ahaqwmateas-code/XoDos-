.class public Lcom/termux/x11/controller/inputcontrols/InputControlsManager;
.super Ljava/lang/Object;
.source "InputControlsManager.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private maxProfileId:I

.field private profiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private profilesLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profilesLoaded:Z

    .line 36
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private copyAssetProfilesIfNeeded()V
    .locals 20

    .line 55
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, "profilesDir":Ljava/io/File;
    invoke-static {v2}, Lcom/termux/x11/controller/core/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    const-string v3, "inputcontrols/profiles"

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v3, v2}, Lcom/termux/x11/controller/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 63
    .local v4, "preferences":Landroid/content/SharedPreferences;
    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/x11/controller/core/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    .line 64
    .local v5, "newVersion":I
    const-string v0, "inputcontrols_app_version"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 65
    .local v7, "oldVersion":I
    if-ne v7, v5, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 69
    .local v8, "files":[Ljava/io/File;
    if-nez v8, :cond_2

    return-void

    .line 72
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 73
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "assetFiles":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_6

    aget-object v11, v3, v10

    .line 75
    .local v11, "assetFile":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inputcontrols/profiles/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, "assetPath":Ljava/lang/String;
    iget-object v13, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/InputStream;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v13

    .line 78
    .local v13, "originProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    const/4 v14, 0x0

    .line 79
    .local v14, "targetFile":Ljava/io/File;
    array-length v15, v8

    :goto_1
    if-ge v6, v15, :cond_4

    aget-object v16, v8, v6

    move-object/from16 v17, v16

    .line 80
    .local v17, "file":Ljava/io/File;
    move-object/from16 v16, v0

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .local v16, "assetManager":Landroid/content/res/AssetManager;
    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .end local v17    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    .local v18, "profilesDir":Ljava/io/File;
    :try_start_1
    invoke-static {v0, v2}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 81
    .local v0, "targetProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    move-object/from16 v17, v3

    .end local v3    # "assetFiles":[Ljava/lang/String;
    .local v17, "assetFiles":[Ljava/lang/String;
    iget v3, v13, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v19, v4

    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .local v19, "preferences":Landroid/content/SharedPreferences;
    :try_start_2
    iget v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v13}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    move-object v14, v2

    .line 83
    goto :goto_2

    .line 79
    .end local v0    # "targetProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    goto :goto_1

    .line 92
    .end local v11    # "assetFile":Ljava/lang/String;
    .end local v12    # "assetPath":Ljava/lang/String;
    .end local v13    # "originProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v16    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "assetFiles":[Ljava/lang/String;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    goto :goto_4

    .line 79
    .end local v18    # "profilesDir":Ljava/io/File;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    .local v2, "profilesDir":Ljava/io/File;
    .restart local v3    # "assetFiles":[Ljava/lang/String;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v11    # "assetFile":Ljava/lang/String;
    .restart local v12    # "assetPath":Ljava/lang/String;
    .restart local v13    # "originProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .restart local v14    # "targetFile":Ljava/io/File;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 87
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "profilesDir":Ljava/io/File;
    .end local v3    # "assetFiles":[Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v16    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v17    # "assetFiles":[Ljava/lang/String;
    .restart local v18    # "profilesDir":Ljava/io/File;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    :goto_2
    if-eqz v14, :cond_5

    .line 88
    iget-object v0, v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v12, v14}, Lcom/termux/x11/controller/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 92
    .end local v11    # "assetFile":Ljava/lang/String;
    .end local v12    # "assetPath":Ljava/lang/String;
    .end local v13    # "originProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v16    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "assetFiles":[Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 74
    .restart local v16    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v17    # "assetFiles":[Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    const/4 v6, 0x0

    goto :goto_0

    .end local v16    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "assetFiles":[Ljava/lang/String;
    .end local v18    # "profilesDir":Ljava/io/File;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "profilesDir":Ljava/io/File;
    .restart local v3    # "assetFiles":[Ljava/lang/String;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "profilesDir":Ljava/io/File;
    .end local v3    # "assetFiles":[Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v18    # "profilesDir":Ljava/io/File;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    goto :goto_4

    .line 92
    .end local v18    # "profilesDir":Ljava/io/File;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .restart local v2    # "profilesDir":Ljava/io/File;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    .end local v2    # "profilesDir":Ljava/io/File;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v18    # "profilesDir":Ljava/io/File;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    :goto_4
    nop

    .line 93
    return-void
.end method

.method public static getProfilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "profiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v0, "profilesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 42
    :cond_0
    return-object v0
.end method

.method public static loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 197
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/InputStream;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static loadProfile(Landroid/content/Context;Ljava/io/InputStream;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 205
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v0, "reader":Landroid/util/JsonReader;
    const/4 v1, 0x0

    .line 207
    .local v1, "profileId":I
    const/4 v2, 0x0

    .line 208
    .local v2, "profileName":Ljava/lang/String;
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 209
    .local v3, "cursorSpeed":F
    const/4 v4, 0x0

    .line 211
    .local v4, "fieldsRead":I
    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 212
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "name":Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    move v1, v6

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    :cond_0
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    :cond_1
    const-string v6, "cursorSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    :cond_2
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 231
    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 233
    :cond_4
    :goto_2
    new-instance v5, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-direct {v5, p0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;-><init>(Landroid/content/Context;I)V

    .line 234
    .local v5, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    invoke-virtual {v5, v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5, v3}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->setCursorSpeed(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    nop

    .line 237
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    return-object v5

    .line 205
    .end local v1    # "profileId":I
    .end local v2    # "profileName":Ljava/lang/String;
    .end local v3    # "cursorSpeed":F
    .end local v4    # "fieldsRead":I
    .end local v5    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inStream":Ljava/io/InputStream;
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    .end local v0    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public createProfile(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v2, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;-><init>(Landroid/content/Context;I)V

    .line 116
    .local v0, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 118
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-object v0
.end method

.method public duplicateProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 7
    .param p1, "source"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 124
    const-string v0, "template"

    const/4 v1, 0x1

    .line 125
    .local v1, "i":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "newName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 127
    .local v3, "found":Z
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 128
    .local v5, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    invoke-virtual {v5}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_2

    .line 132
    .end local v5    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :cond_0
    goto :goto_1

    .line 133
    :cond_1
    :goto_2
    if-nez v3, :cond_3

    .line 136
    .end local v1    # "i":I
    .end local v3    # "found":Z
    iget v1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    .line 137
    .local v1, "newId":I
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    .line 140
    .local v3, "newFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v6, p1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v5, v6}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v4, "data":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    nop

    .end local v4    # "data":Lorg/json/JSONObject;
    goto :goto_3

    :catch_0
    move-exception v0

    .line 148
    :goto_3
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 149
    .local v0, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-object v0

    .line 124
    .end local v0    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v3    # "newFile":Ljava/io/File;
    .local v1, "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public exportProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)Ljava/io/File;
    .locals 5
    .param p1, "profile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 188
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 189
    .local v0, "downloadsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Winlator/profiles/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".icp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v1, "destination":Ljava/io/File;
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v3, p1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v2, v3}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/termux/x11/controller/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 191
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v1

    :cond_0
    return-object v4
.end method

.method public getProfile(I)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 3
    .param p1, "id"    # I

    .line 244
    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .local v1, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    iget v2, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    .end local v1    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "ignoreTemplates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profilesLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public importProfile(Lorg/json/JSONObject;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 9
    .param p1, "data"    # Lorg/json/JSONObject;

    .line 160
    const-string v0, "id"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 161
    :cond_0
    iget v2, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    .line 162
    .local v2, "newId":I
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    .line 163
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 165
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 167
    .local v0, "newProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    const/4 v4, -0x1

    .line 168
    .local v4, "foundIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 170
    .local v6, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    invoke-virtual {v6}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    move v4, v5

    .line 172
    goto :goto_1

    .line 168
    .end local v6    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v5    # "i":I
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 177
    iget-object v5, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 179
    :cond_3
    iget-object v5, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_2
    return-object v0

    .line 160
    .end local v0    # "newProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v2    # "newId":I
    .end local v3    # "newFile":Ljava/io/File;
    .end local v4    # "foundIndex":I
    :cond_4
    :goto_3
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    return-object v1
.end method

.method public loadProfiles(Z)V
    .locals 9
    .param p1, "ignoreTemplates"    # Z

    .line 96
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "profilesDir":Ljava/io/File;
    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->copyAssetProfilesIfNeeded()V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/x11/controller/inputcontrols/ControlsProfile;>;"
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 102
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 103
    .local v5, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v6

    .line 104
    .local v6, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    if-eqz p1, :cond_0

    invoke-virtual {v6}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->isTemplate()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget v7, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    iget v8, v6, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->maxProfileId:I

    .line 102
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 110
    iput-object v1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    .line 111
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profilesLoaded:Z

    .line 112
    return-void
.end method

.method public removeProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v1, p1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    return-void
.end method
