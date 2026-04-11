.class public Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "LoriePreferences.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoriePreferenceFragment"
.end annotation


# static fields
.field private static loriePreferences:Lcom/termux/x11/LoriePreferences;

.field private static final onSetInitialValue:Ljava/lang/reflect/Method;


# instance fields
.field final root:Ljava/lang/String;

.field private final updateLayout:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 381
    :try_start_0
    const-class v0, Landroidx/preference/Preference;

    const-string v1, "onSetInitialValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue:Ljava/lang/reflect/Method;

    .line 382
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    nop

    .line 386
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 375
    new-instance v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updateLayout:Ljava/lang/Runnable;

    .line 406
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->root:Ljava/lang/String;

    .line 407
    return-void
.end method

.method static synthetic access$000()Lcom/termux/x11/LoriePreferences;
    .locals 1

    .line 372
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    return-object v0
.end method

.method static synthetic access$002(Lcom/termux/x11/LoriePreferences;)Lcom/termux/x11/LoriePreferences;
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/LoriePreferences;

    .line 372
    sput-object p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    return-object p0
.end method

.method static synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)V
    .locals 1
    .param p0, "p"    # Landroidx/preference/Preference;

    .line 470
    sget v0, Lcom/termux/x11/R$layout;->display_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;)V
    .locals 1
    .param p0, "p"    # Landroidx/preference/Preference;

    .line 471
    const-string v0, "1.03.01-c050ebd-09.11.25"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$onCreatePreferences$2(Landroid/view/InputDevice;)Z
    .locals 1
    .param p0, "d"    # Landroid/view/InputDevice;

    .line 487
    const/16 v0, 0x4002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onDisplayPreferenceDialog$6(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "config"    # Landroid/widget/EditText;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 801
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->put(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method static synthetic lambda$onDisplayPreferenceDialog$7(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 806
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    const-string v1, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->put(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisplayPreferenceDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 807
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onPreferenceTreeClick$3()V
    .locals 2

    .line 668
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences;->openPreference(Z)V

    .line 670
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->openSoftwareKeyboard()V

    .line 672
    :cond_0
    return-void
.end method

.method static synthetic lambda$onPreferenceTreeClick$4(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 692
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    if-eqz v0, :cond_0

    .line 693
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->installX11ServerBridge()V

    .line 695
    :cond_0
    return-void
.end method

.method static synthetic lambda$onPreferenceTreeClick$5(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 697
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private setEnabled(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 523
    invoke-virtual {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 524
    .local v0, "p":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 526
    :cond_0
    return-void
.end method

.method private setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 595
    if-nez p1, :cond_0

    .line 596
    return-void

    .line 597
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 598
    .local v0, "p":Landroidx/preference/ListPreference;
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 599
    .local v1, "options":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 600
    const-string v3, "no action"

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 599
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "resId"    # I

    .line 505
    invoke-virtual {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 506
    .local v0, "pref":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 507
    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;-><init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 514
    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "resId"    # I

    .line 499
    invoke-virtual {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 500
    .local v0, "pref":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 502
    :cond_0
    return-void
.end method

.method private setVisible(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 517
    invoke-virtual {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 518
    .local v0, "p":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 520
    :cond_0
    return-void
.end method

.method private with(Ljava/lang/CharSequence;Lj$/util/function/Consumer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lj$/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 423
    .local p2, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<Landroidx/preference/Preference;>;"
    invoke-virtual {p0, p1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 424
    .local v0, "p":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {p2, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 426
    :cond_0
    return-void
.end method


# virtual methods
.method findId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 607
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 609
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updatePreferencesLayout()V

    .line 610
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 442
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 443
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->put(Ljava/lang/String;)V

    .line 445
    :cond_0
    sget v0, Lcom/termux/x11/R$xml;->preferences:I

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->root:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "main"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->root:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 449
    .local v0, "screen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findId(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "id":I
    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 452
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 453
    .local v3, "p":Landroidx/preference/Preference;
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    sget-object v4, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 456
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findId(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-eqz v4, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_summary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findId(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-eqz v4, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    :cond_4
    instance-of v4, v3, Landroidx/preference/ListPreference;

    if-eqz v4, :cond_5

    .line 463
    move-object v4, v3

    check-cast v4, Landroidx/preference/ListPreference;

    .line 464
    .local v4, "list":Landroidx/preference/ListPreference;
    sget-object v5, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v5, v5, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 465
    sget-object v5, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v5, v5, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 466
    invoke-static {}, Landroidx/preference/ListPreference$SimpleSummaryProvider;->getInstance()Landroidx/preference/ListPreference$SimpleSummaryProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 451
    .end local v3    # "p":Landroidx/preference/Preference;
    .end local v4    # "list":Landroidx/preference/ListPreference;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 470
    .end local v1    # "i":I
    :cond_6
    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "showAdditionalKbd"

    invoke-direct {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->with(Ljava/lang/CharSequence;Lj$/util/function/Consumer;)V

    .line 471
    new-instance v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda9;-><init>()V

    const-string v3, "version"

    invoke-direct {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->with(Ljava/lang/CharSequence;Lj$/util/function/Consumer;)V

    .line 473
    const-string v1, "displayStretch"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresExactOrCustom:I

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 474
    const-string v1, "adjustResolution"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresExactOrCustom:I

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 475
    const-string v1, "pauseKeyInterceptingWithEsc"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresIntercepting:I

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 476
    const-string v1, "scaleTouchpad"

    sget v3, Lcom/termux/x11/R$string;->pref_summary_requiresTrackpadAndNative:I

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V

    .line 478
    invoke-static {}, Lcom/termux/x11/utils/SamsungDexUtils;->available()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 479
    const-string v1, "dexMetaKeyCapture"

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 481
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v1, v4, :cond_8

    .line 482
    const-string v1, "hideCutout"

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 484
    :cond_8
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda10;-><init>()V

    .line 485
    invoke-interface {v1, v3}, Lj$/util/stream/IntStream;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda11;-><init>()V

    .line 486
    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda12;-><init>()V

    .line 487
    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->anyMatch(Lj$/util/function/Predicate;)Z

    move-result v1

    .line 489
    .local v1, "stylusAvailable":Z
    const-string v3, "showStylusClickOverride"

    invoke-direct {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 490
    const-string v3, "stylusIsMouse"

    invoke-direct {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 491
    const-string v3, "stylusButtonContactModifierMode"

    invoke-direct {p0, v3, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 493
    const-string v3, "volumeDownAction"

    invoke-virtual {p0, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "android volume control"

    invoke-direct {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    .line 494
    const-string v3, "volumeUpAction"

    invoke-virtual {p0, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    .line 495
    const-string v3, "mediaKeysAction"

    invoke-virtual {p0, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "android media control"

    invoke-direct {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setNoActionOptionText(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 785
    const-string v0, "extra_keys_config"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$layout;->extra_keys_config:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 788
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/termux/x11/R$id;->extra_keys_config:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 789
    .local v1, "config":Landroid/widget/EditText;
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 790
    sget-object v2, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 791
    sget v2, Lcom/termux/x11/R$id;->extra_keys_config_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 792
    .local v2, "desc":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 793
    sget v3, Lcom/termux/x11/R$string;->extra_keys_config_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 794
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 795
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 796
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 797
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 798
    const-string v4, "Extra keys config"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda5;-><init>(Landroid/widget/EditText;)V

    .line 799
    const-string v5, "OK"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 805
    const-string v5, "Reset"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 807
    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 808
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 810
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 812
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "config":Landroid/widget/EditText;
    .end local v2    # "desc":Landroid/widget/TextView;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    .line 813
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 720
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preferences"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object v1, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    sget-object v1, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updateLayout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 725
    const-string v1, "displayScale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 726
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 727
    .local v1, "scale":I
    rem-int/lit8 v3, v1, 0xa

    if-eqz v3, :cond_0

    .line 728
    int-to-float v3, v1

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    .line 729
    .end local v1    # "scale":I
    .local v3, "scale":I
    move-object v1, p1

    check-cast v1, Landroidx/preference/SeekBarPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    .line 730
    return v2

    .line 734
    .end local v3    # "scale":I
    :cond_0
    const-string v1, "displayResolutionCustom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 735
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 737
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, "resolution":[Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 739
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    nop

    .end local v4    # "resolution":[Ljava/lang/String;
    goto :goto_1

    .line 740
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 741
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Wrong resolution format"

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 742
    return v2

    .line 746
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    const-string v1, "showAdditionalKbd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 749
    :cond_2
    const-string v1, "enableAccessibilityServiceAutomatically"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 750
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 751
    invoke-static {v2}, Lcom/termux/x11/utils/KeyInterceptor;->shutdown(Z)V

    .line 752
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 754
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 755
    const-string v3, "Permission denied"

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 756
    const-string v3, "Android requires WRITE_SECURE_SETTINGS permission to start accessibility service automatically.\nPlease, launch this command using ADB:\nadb shell pm grant com.termux.x11 android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 759
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 760
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 762
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 764
    :cond_4
    return v2

    .line 773
    :cond_5
    const-string v1, "enableFloatBallMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 774
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 776
    :cond_6
    const-string v1, "enableGlobalFloatBallMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 777
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableGlobalFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 779
    :cond_7
    sget-object v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    iget-object v1, v1, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v1, v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->changePreference(Ljava/lang/String;)V

    .line 780
    return v3
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1, "p"    # Landroidx/preference/Preference;

    .line 614
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 615
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0

    .line 617
    :cond_0
    const-string v0, "version"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 619
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 620
    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 621
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 622
    const-string v2, "Copied to clipboard"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 628
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wine_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 629
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    :try_start_0
    const-string v0, "com.termux.app.XoDosWizard"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 633
    .local v0, "xoDosWizardClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    aput-object v4, v3, v1

    .line 634
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    aput-object v5, v4, v1

    .line 635
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 636
    .local v3, "xoDosWizardInstance":Ljava/lang/Object;
    const-string v4, "start"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 637
    .local v4, "startMethod":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    nop

    .end local v0    # "xoDosWizardClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "xoDosWizardInstance":Ljava/lang/Object;
    .end local v4    # "startMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 640
    sget-object v1, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open Wine settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v2

    .line 666
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "open_keyboard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "select_controller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->showInputControlsDialog()V

    .line 677
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "open_progress_manager"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 678
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->showProcessManager()V

    .line 680
    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "install_x11_server_bridge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/termux/x11/R$layout;->x11_server_bridge_config:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 683
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/termux/x11/R$id;->x11_server_bridge_config_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 684
    .local v1, "desc":Landroid/widget/TextView;
    sget v3, Lcom/termux/x11/R$string;->x11_server_bridge_config:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 685
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 686
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 687
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 688
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 689
    const-string v4, "XoDos X11 server installer"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    .line 690
    const-string v5, "OK"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda3;-><init>()V

    .line 697
    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 698
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 700
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 703
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "desc":Landroid/widget/TextView;
    :cond_7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop_desktop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 704
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->loriePreferences:Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->stopDesktop()V

    .line 708
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_9

    const-string v0, "requestNotificationPermission"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 709
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x65

    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 710
    return v2

    .line 713
    :cond_9
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updatePreferencesLayout()V

    .line 714
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 411
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 413
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 414
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    :cond_0
    return-void
.end method

.method onSetInitialValue(Landroidx/preference/Preference;)V
    .locals 4
    .param p1, "p"    # Landroidx/preference/Preference;

    .line 390
    :try_start_0
    sget-object v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 394
    return-void

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method updatePreferencesLayout()V
    .locals 10

    .line 530
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 535
    .local v2, "p":Landroidx/preference/Preference;
    if-eqz v2, :cond_1

    .line 536
    invoke-virtual {p0, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onSetInitialValue(Landroidx/preference/Preference;)V

    .line 537
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "p":Landroidx/preference/Preference;
    :cond_1
    goto :goto_0

    .line 539
    :cond_2
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "displayResMode":Ljava/lang/String;
    const-string v1, "scaled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "displayScale"

    invoke-direct {p0, v2, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 541
    const-string v1, "displayResolutionExact"

    const-string v2, "exact"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 542
    const-string v1, "displayResolutionCustom"

    const-string v3, "custom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 544
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    const-string v5, "dexMetaKeyCapture"

    invoke-direct {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 545
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    xor-int/2addr v1, v4

    const-string v5, "enableAccessibilityServiceAutomatically"

    invoke-direct {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 546
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 547
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_4

    .line 548
    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->isLaunched()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 546
    :goto_2
    const-string v7, "pauseKeyInterceptingWithEsc"

    invoke-direct {p0, v7, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 549
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->isLaunched()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    :goto_4
    invoke-direct {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 550
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->isLaunched()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, 0x1

    :goto_6
    const-string v5, "filterOutWinkey"

    invoke-direct {p0, v5, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 552
    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v1, 0x1

    .line 553
    .local v1, "displayStretchEnabled":Z
    :goto_8
    const-string v2, "displayStretch"

    invoke-direct {p0, v2, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 554
    const-string v2, "adjustResolution"

    invoke-direct {p0, v2, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 556
    sget-object v2, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v5, "native"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    :goto_9
    const-string v5, "scaleTouchpad"

    invoke-direct {p0, v5, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 557
    sget-object v2, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "showMouseHelper"

    invoke-direct {p0, v3, v2}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 559
    sget-object v2, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->enableFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    .line 560
    .local v2, "enableFloatBallMenu":Z
    const-string v3, "open_progress_manager"

    const-string v5, "select_controller"

    const-string v7, "open_keyboard"

    const-string v8, "stop_desktop"

    const-string v9, "enableGlobalFloatBallMenu"

    if-nez v2, :cond_c

    .line 561
    invoke-direct {p0, v9, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 562
    invoke-direct {p0, v9, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 563
    invoke-direct {p0, v8, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 564
    invoke-direct {p0, v8, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 565
    invoke-direct {p0, v7, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 566
    invoke-direct {p0, v7, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 567
    invoke-direct {p0, v5, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 568
    invoke-direct {p0, v5, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 569
    invoke-direct {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 570
    invoke-direct {p0, v3, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    goto :goto_a

    .line 572
    :cond_c
    invoke-direct {p0, v9, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 573
    invoke-direct {p0, v9, v4}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 574
    invoke-direct {p0, v8, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 575
    invoke-direct {p0, v8, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 576
    invoke-direct {p0, v7, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 577
    invoke-direct {p0, v7, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 578
    invoke-direct {p0, v5, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setEnabled(Ljava/lang/CharSequence;Z)V

    .line 579
    invoke-direct {p0, v5, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 580
    invoke-direct {p0, v3, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 581
    invoke-direct {p0, v3, v6}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 585
    :goto_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v3, v5, :cond_d

    .line 587
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_d

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    move v3, v4

    .line 588
    .local v3, "requestNotificationPermissionVisible":Z
    const-string v4, "requestNotificationPermission"

    invoke-direct {p0, v4, v3}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setVisible(Ljava/lang/CharSequence;Z)V

    .line 589
    return-void
.end method
