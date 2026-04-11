.class public Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;
.super Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;
.source "TermuxTerminalExtraKeys.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxTerminalExtraKeys"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field private mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

.field final mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

.field final mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/view/TerminalView;Lcom/termux/app/terminal/TermuxTerminalViewClient;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "terminalView"    # Lcom/termux/view/TerminalView;
    .param p3, "termuxTerminalViewClient"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .param p4, "termuxTerminalSessionActivityClient"    # Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    .line 36
    invoke-direct {p0, p2}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;-><init>(Lcom/termux/view/TerminalView;)V

    .line 38
    iput-object p1, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 39
    iput-object p3, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    .line 40
    iput-object p4, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    .line 42
    invoke-direct {p0}, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->setExtraKeys()V

    .line 43
    return-void
.end method

.method private setExtraKeys()V
    .locals 10

    .line 50
    const-string v0, "extra-keys-style"

    const-string v1, "default"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    .line 56
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v4

    const-string v5, "extra-keys"

    invoke-virtual {v4, v5, v3}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, "extrakeys":Ljava/lang/String;
    iget-object v5, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v5}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .local v5, "extraKeysStyle":Ljava/lang/String;
    invoke-static {v5}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;->getCharDisplayMapForStyle(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    move-result-object v6

    .line 60
    .local v6, "extraKeyDisplayMap":Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    sget-object v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->DEFAULT_CHAR_DISPLAY:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {v7, v6}, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    const-string v7, "TermuxSharedProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The style \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" for the key \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\" is invalid. Using default style instead."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    move-object v5, v1

    .line 65
    :cond_0
    new-instance v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    sget-object v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v0, v4, v5, v7}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    iput-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v4    # "extrakeys":Ljava/lang/String;
    .end local v5    # "extraKeysStyle":Ljava/lang/String;
    .end local v6    # "extraKeyDisplayMap":Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mActivity:Lcom/termux/app/TermuxActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load and set the \"extra-keys\" property from the properties file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 68
    const-string v4, "TermuxTerminalExtraKeys"

    invoke-static {v4, v6, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :try_start_1
    new-instance v5, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    const-string v6, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\']]"

    sget-object v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v5, v6, v1, v7}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    iput-object v5, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e2":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v6, "Can\'t create default extra keys"

    invoke-static {v5, v6, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 74
    const-string v3, "Could create default extra keys: "

    invoke-static {v4, v3, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iput-object v2, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    .line 78
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e2":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mExtraKeysInfo:Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    return-object v0
.end method

.method public onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "fnDown"    # Z

    .line 87
    const-string v0, "KEYBOARD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onToggleSoftKeyboardRequest()V

    goto :goto_1

    .line 90
    :cond_0
    const-string v0, "DRAWER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->getActivity()Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    .line 92
    .local v0, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 96
    .end local v0    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "PASTE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_6

    .line 98
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_1

    .line 99
    :cond_3
    const-string v0, "SCROLL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->getActivity()Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    .line 101
    .local v0, "terminalView":Lcom/termux/view/TerminalView;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->toggleAutoScrollDisabled()V

    .line 103
    .end local v0    # "terminalView":Lcom/termux/view/TerminalView;
    :cond_4
    goto :goto_1

    .line 104
    :cond_5
    invoke-super/range {p0 .. p6}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V

    .line 106
    :cond_6
    :goto_1
    return-void
.end method
