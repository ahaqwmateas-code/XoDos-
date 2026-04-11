.class public Lcom/termux/x11/utils/TermuxX11ExtraKeys;
.super Ljava/lang/Object;
.source "TermuxX11ExtraKeys.java"

# interfaces
.implements Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;


# static fields
.field static final ACTION_START_PREFERENCES_ACTIVITY:Ljava/lang/String; = "com.termux.x11.start_preferences_activity"

.field public static final DEFAULT_IVALUE_EXTRA_KEYS:Ljava/lang/String; = "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxX11ExtraKeys"

.field private static mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;


# instance fields
.field private altDown:Z

.field private ctrlDown:Z

.field private final mActivity:Lcom/termux/x11/MainActivity;

.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private final mEventListener:Landroid/view/View$OnKeyListener;

.field private final mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

.field private final mVirtualKeyboardKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private metaDown:Z

.field private shiftDown:Z


# direct methods
.method public constructor <init>(Landroid/view/View$OnKeyListener;Lcom/termux/x11/MainActivity;Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V
    .locals 2
    .param p1, "eventlistener"    # Landroid/view/View$OnKeyListener;
    .param p2, "activity"    # Lcom/termux/x11/MainActivity;
    .param p3, "extrakeysview"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mVirtualKeyboardKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 52
    iput-object p1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mEventListener:Landroid/view/View$OnKeyListener;

    .line 53
    iput-object p2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    .line 54
    iput-object p3, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 55
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 56
    return-void
.end method

.method public static getExtraKeysInfo()Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;
    .locals 1

    .line 225
    sget-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->setExtraKeys()V

    .line 227
    :cond_0
    sget-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    return-object v0
.end method

.method public static setExtraKeys()V
    .locals 8

    .line 202
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    .line 208
    :try_start_0
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "extrakeys":Ljava/lang/String;
    new-instance v2, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    const-string v3, "extra-keys-style"

    sget-object v4, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v2, v1, v3, v4}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;)V

    sput-object v2, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "extrakeys":Ljava/lang/String;
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load and set the \"extra-keys\" property from the properties file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 212
    const-string v2, "TermuxX11ExtraKeys"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :try_start_1
    new-instance v3, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    const-string v4, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    const-string v6, "default"

    sget-object v7, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v3, v4, v6, v7}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants$ExtraKeyDisplayMap;)V

    sput-object v3, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    goto :goto_0

    .line 216
    :catch_1
    move-exception v3

    .line 217
    .local v3, "e2":Lorg/json/JSONException;
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v4

    const-string v6, "Can\'t create default extra keys"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 218
    const-string v4, "Could create default extra keys: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    sput-object v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysInfo:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    .line 222
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "e2":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$performExtraKeyButtonHapticFeedback$0$com-termux-x11-utils-TermuxX11ExtraKeys(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)V
    .locals 4
    .param p1, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    .line 148
    iget-object v0, p1, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "META"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "CTRL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "ALT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 162
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v3, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    .local v0, "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x75

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    goto :goto_2

    .line 158
    .end local v0    # "pressed":Z
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v3, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    .restart local v0    # "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x3b

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 160
    goto :goto_2

    .line 154
    .end local v0    # "pressed":Z
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v3, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 155
    .restart local v0    # "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x39

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 156
    goto :goto_2

    .line 150
    .end local v0    # "pressed":Z
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v3, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v1, v3, v2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    .restart local v0    # "pressed":Z
    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    const/16 v3, 0x71

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 152
    nop

    .line 166
    .end local v0    # "pressed":Z
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xfd89 -> :sswitch_3
        0x1fba6b -> :sswitch_2
        0x240e05 -> :sswitch_1
        0x4b37462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 63
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->macro:Z

    if-eqz v1, :cond_e

    .line 64
    iget-object v1, v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ctrlDown":Z
    const/4 v3, 0x0

    .local v3, "altDown":Z
    const/4 v4, 0x0

    .local v4, "shiftDown":Z
    const/4 v5, 0x0

    .local v5, "metaDown":Z
    const/4 v6, 0x0

    .line 66
    .local v6, "fnDown":Z
    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_5

    aget-object v10, v1, v9

    .line 67
    .local v10, "key":Ljava/lang/String;
    sget-object v11, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v11}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 68
    const/4 v2, 0x1

    goto :goto_1

    .line 69
    :cond_0
    sget-object v11, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v11}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 70
    const/4 v3, 0x1

    goto :goto_1

    .line 71
    :cond_1
    sget-object v11, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v11}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 72
    const/4 v4, 0x1

    goto :goto_1

    .line 73
    :cond_2
    sget-object v11, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v11}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 74
    const/4 v5, 0x1

    goto :goto_1

    .line 75
    :cond_3
    sget-object v11, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->FN:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v11}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 76
    const/4 v6, 0x1

    .line 66
    .end local v10    # "key":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    :cond_5
    array-length v7, v1

    :goto_2
    if-ge v8, v7, :cond_b

    aget-object v15, v1, v8

    .line 80
    .local v15, "key":Ljava/lang/String;
    sget-object v9, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v9}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    sget-object v9, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 81
    invoke-virtual {v9}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 82
    invoke-virtual {v9}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    sget-object v9, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 83
    invoke-virtual {v9}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->FN:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 84
    invoke-virtual {v9}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 85
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v15

    move v12, v2

    move v13, v3

    move v14, v4

    move-object/from16 v17, v15

    .end local v15    # "key":Ljava/lang/String;
    .local v17, "key":Ljava/lang/String;
    move v15, v5

    move/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    goto :goto_3

    .line 84
    .end local v17    # "key":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    goto :goto_3

    .line 83
    .end local v17    # "key":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    goto :goto_3

    .line 82
    .end local v17    # "key":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    goto :goto_3

    .line 81
    .end local v17    # "key":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    goto :goto_3

    .line 80
    .end local v17    # "key":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v15

    .line 79
    .end local v15    # "key":Ljava/lang/String;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 88
    :cond_b
    if-nez v2, :cond_c

    if-nez v3, :cond_c

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    if-eqz v6, :cond_d

    .line 89
    :cond_c
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v16}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 92
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "ctrlDown":Z
    .end local v3    # "altDown":Z
    .end local v4    # "shiftDown":Z
    .end local v5    # "metaDown":Z
    .end local v6    # "fnDown":Z
    :cond_d
    goto :goto_4

    .line 93
    :cond_e
    iget-object v1, v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v17 .. v24}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    .line 95
    :goto_4
    return-void
.end method

.method public onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "metaDown"    # Z
    .param p7, "fnDown"    # Z

    .line 173
    move-object v0, p0

    move-object v1, p2

    const-string v2, "KEYBOARD"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v2}, Lcom/termux/x11/MainActivity;->toggleKeyboardVisibility(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 175
    :cond_0
    const-string v2, "DRAWER"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "PREFERENCES"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 177
    :cond_1
    const-string v2, "EXIT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->prepareToExit()V

    goto/16 :goto_2

    .line 179
    :cond_2
    const-string v2, "PASTE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    iget-object v2, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 181
    .local v2, "clipData":Landroid/content/ClipData;
    if-eqz v2, :cond_3

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    iget-object v5, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 183
    .local v4, "pasted":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 184
    iget-object v5, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mVirtualKeyboardKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v5

    .line 185
    .local v5, "events":[Landroid/view/KeyEvent;
    if-eqz v5, :cond_3

    .line 186
    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 187
    .local v7, "event":Landroid/view/KeyEvent;
    iget-object v8, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mEventListener:Landroid/view/View$OnKeyListener;

    iget-object v9, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v9}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    invoke-interface {v8, v9, v10, v7}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 186
    .end local v7    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "clipData":Landroid/content/ClipData;
    .end local v4    # "pasted":Ljava/lang/CharSequence;
    .end local v5    # "events":[Landroid/view/KeyEvent;
    :cond_3
    goto :goto_2

    :cond_4
    const-string v2, "MOUSE_HELPER"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    iget-object v2, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->toggleMouseAuxButtons()V

    goto :goto_2

    .line 192
    :cond_5
    const-string v2, "STYLUS_HELPER"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 193
    iget-object v2, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->toggleStylusAuxButtons()V

    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V

    goto :goto_2

    .line 176
    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/termux/x11/MainActivity;->openPreference(Z)V

    .line 196
    :goto_2
    return-void
.end method

.method protected onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "metaDown"    # Z
    .param p7, "fnDown"    # Z

    .line 98
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->ctrlDown:Z

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    .line 99
    iput-boolean p3, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->ctrlDown:Z

    .line 100
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2, p3}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->altDown:Z

    if-eq v0, p4, :cond_1

    .line 104
    iput-boolean p4, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->altDown:Z

    .line 105
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2, p4}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->shiftDown:Z

    if-eq v0, p5, :cond_2

    .line 109
    iput-boolean p5, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->shiftDown:Z

    .line 110
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2, p5}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 113
    :cond_2
    iget-boolean v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->metaDown:Z

    if-eq v0, p6, :cond_3

    .line 114
    iput-boolean p6, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->metaDown:Z

    .line 115
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, p6}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 118
    :cond_3
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .local v0, "keyCode":Ljava/lang/Integer;
    if-nez v0, :cond_4

    return-void

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 123
    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .end local v0    # "keyCode":Ljava/lang/Integer;
    goto :goto_0

    .line 124
    :cond_5
    if-eqz p2, :cond_6

    .line 126
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    goto :goto_1

    .line 124
    :cond_6
    :goto_0
    nop

    .line 128
    :goto_1
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 146
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public unsetSpecialKeys()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v2, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 136
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v4, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v2, v4, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 138
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v4, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v2, v4, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 140
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    sget-object v4, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    invoke-virtual {v2, v4, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 142
    :cond_4
    return-void
.end method
