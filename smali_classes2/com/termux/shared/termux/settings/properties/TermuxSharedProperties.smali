.class public abstract Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;
.super Ljava/lang/Object;
.source "TermuxSharedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "TermuxSharedProperties"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mLabel:Ljava/lang/String;

.field protected mPropertiesFile:Ljava/io/File;

.field protected final mPropertiesFilePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPropertiesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

.field protected final mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p5, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/termux/shared/settings/properties/SharedPropertiesParser;",
            ")V"
        }
    .end annotation

    .line 33
    .local p3, "propertiesFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mLabel:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mPropertiesFilePaths:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mPropertiesList:Ljava/util/Set;

    .line 38
    iput-object p5, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 39
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->loadTermuxPropertiesFromDisk()V

    .line 40
    return-void
.end method

.method public static getBackKeyBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 498
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_BACK_KEY_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "back-key"

    const-string v3, "back"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBellBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 336
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "bell-character"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getCodePointForSessionShortcuts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 468
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 469
    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 470
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 472
    .local v2, "input":Ljava/lang/String;
    :goto_0
    array-length v5, v1

    const-string v6, "\' is not Ctrl+<something>"

    const-string v7, "Keyboard shortcut \'"

    const-string v8, "TermuxSharedProperties"

    if-ne v5, v4, :cond_7

    const/4 v5, 0x0

    aget-object v9, v1, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ctrl"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v4, :cond_3

    goto :goto_3

    .line 477
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 478
    .local v5, "c":C
    move v9, v5

    .line 479
    .local v9, "codePoint":I
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 480
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 484
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    goto :goto_2

    .line 481
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-object v0

    .line 488
    :cond_6
    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 473
    .end local v5    # "c":C
    .end local v9    # "codePoint":I
    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-object v0
.end method

.method public static getDefaultWorkingDirectoryInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 509
    const-string v0, "/data/data/com.termux/files/home"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 510
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "workDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    return-object p0

    .line 514
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The path \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for the key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default-working-directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist, is not a directory or is not readable. Using default value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxSharedProperties"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-object v0

    .line 509
    .end local v1    # "workDir":Ljava/io/File;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getDeleteTMPDIRFilesOlderThanXDaysOnExitInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 349
    nop

    .line 350
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    .line 349
    const-string v1, "delete-tmpdir-files-older-than-x-days-on-exit"

    const/4 v3, 0x3

    const/4 v4, -0x1

    const v5, 0x186a0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getExtraKeysInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 528
    const-string v0, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\']]"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraKeysStyleInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 538
    const-string v0, "default"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 252
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "back-key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "terminal-cursor-blink-rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "soft-keyboard-toggle-behaviour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "default-working-directory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "extra-keys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "terminal-transcript-rows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "terminal-toolbar-height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "shortcut.previous-session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "terminal-margin-vertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "shortcut.next-session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v0, "terminal-cursor-style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_b
    const-string v0, "shortcut.create-session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_c
    const-string v0, "bell-character"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_d
    const-string v0, "night-mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_e
    const-string v0, "terminal-margin-horizontal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_f
    const-string v0, "volume-keys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_10
    const-string v0, "shortcut.rename-session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_11
    const-string v0, "delete-tmpdir-files-older-than-x-days-on-exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_12
    const-string v0, "extra-keys-style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 306
    sget-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_FALSE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "TermuxSharedProperties"

    if-eqz v0, :cond_2

    .line 307
    invoke-static {p1, p2, v1, v2, v3}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 302
    :pswitch_0
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getVolumeKeysBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :pswitch_1
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getSoftKeyboardToggleBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_2
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getNightModeInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :pswitch_3
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getExtraKeysStyleInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :pswitch_4
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getExtraKeysInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_5
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getDefaultWorkingDirectoryInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :pswitch_6
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getBackKeyBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_7
    invoke-static {p1, p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getCodePointForSessionShortcuts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 279
    :pswitch_8
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalToolbarHeightScaleFactorInternalPropertyValueFromValue(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_9
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalTranscriptRowsInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 273
    :pswitch_a
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalMarginVerticalInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_b
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalMarginHorizontalInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_c
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalCursorStyleInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_d
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalCursorBlinkRateInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_e
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getDeleteTMPDIRFilesOlderThanXDaysOnExitInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_f
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getBellBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 309
    :cond_2
    sget-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_TRUE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    invoke-static {p1, p2, v2, v2, v3}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 319
    :cond_3
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x735c398b -> :sswitch_12
        -0x6406e7ad -> :sswitch_11
        -0x579d1a51 -> :sswitch_10
        -0x36e83739 -> :sswitch_f
        -0x30b71b6e -> :sswitch_e
        -0x269f39c8 -> :sswitch_d
        -0x11d57521 -> :sswitch_c
        -0xe314e93 -> :sswitch_b
        -0x49b97d5 -> :sswitch_a
        -0x31bc19c -> :sswitch_9
        0xe870364 -> :sswitch_8
        0x1e6d9668 -> :sswitch_7
        0x261ef32a -> :sswitch_6
        0x299d283f -> :sswitch_5
        0x29cec591 -> :sswitch_4
        0x4b2f8a45 -> :sswitch_3
        0x54466ac7 -> :sswitch_2
        0x621f2a77 -> :sswitch_1
        0x7e594c79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNightMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 675
    const-string v0, "night-mode"

    invoke-static {p0, v0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTermuxInternalPropertyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNightModeInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 548
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_NIGHT_MODE:Lcom/google/common/collect/ImmutableBiMap;

    .line 549
    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->DEFAULT_IVALUE_NIGHT_MODE:Ljava/lang/String;

    .line 548
    const-string v0, "night-mode"

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSoftKeyboardToggleBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 560
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_SOFT_KEYBOARD_TOGGLE_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "soft-keyboard-toggle-behaviour"

    const-string v3, "show/hide"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTerminalCursorBlinkRateInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 367
    nop

    .line 368
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    .line 367
    const-string v1, "terminal-cursor-blink-rate"

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x7d0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTerminalCursorStyleInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 384
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_TERMINAL_CURSOR_STYLE:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "terminal-cursor-style"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getTerminalMarginHorizontalInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 397
    nop

    .line 398
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    .line 397
    const-string v1, "terminal-margin-horizontal"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTerminalMarginVerticalInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 415
    nop

    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    .line 415
    const-string v1, "terminal-margin-vertical"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTerminalToolbarHeightScaleFactorInternalPropertyValueFromValue(Ljava/lang/String;)F
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 451
    nop

    .line 452
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getFloatFromString(Ljava/lang/String;F)F

    move-result v2

    .line 451
    const-string v1, "terminal-toolbar-height"

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;FFFFZZLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getTerminalTranscriptRowsInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 433
    nop

    .line 434
    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    .line 433
    const-string v1, "terminal-transcript-rows"

    const/16 v3, 0x7d0

    const/16 v4, 0x64

    const v5, 0xc350

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTermuxInternalPropertyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 192
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

    .line 193
    const-string v1, "TermuxSharedProperties"

    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFileFromList(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;

    invoke-direct {v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;-><init>()V

    .line 192
    invoke-static {p0, v0, p1, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeKeysBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 570
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_VOLUME_KEYS_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "volume-keys"

    const-string v3, "virtual"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static replaceUseBlackUIProperty(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 7
    .param p0, "properties"    # Ljava/util/Properties;

    .line 220
    const-string v0, "use-black-ui"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "useBlackUIStringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    return-object p0

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing deprecated property use-black-ui="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxSharedProperties"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "night-mode"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 228
    invoke-static {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 229
    .local v2, "useBlackUI":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_TRUE:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_1
    sget-object v4, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_FALSE:Ljava/lang/String;

    :goto_0
    nop

    .line 232
    .local v4, "termuxAppTheme":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replacing deprecated property use-black-ui="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v0, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v2    # "useBlackUI":Ljava/lang/Boolean;
    .end local v4    # "termuxAppTheme":Ljava/lang/String;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public areHardwareKeyboardShortcutsDisabled()Z
    .locals 2

    .line 590
    const-string v0, "disable-hardware-keyboard-shortcuts"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public areTerminalSessionChangeToastsDisabled()Z
    .locals 2

    .line 594
    const-string v0, "disable-terminal-session-change-toast"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public areVirtualVolumeKeysDisabled()Z
    .locals 2

    .line 684
    const-string v0, "volume-keys"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dumpInternalPropertiesToLog()V
    .locals 6

    .line 708
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 709
    .local v0, "internalProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v1, "internalPropertiesDump":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Internal Properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 714
    .local v3, "key":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "`"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 718
    :cond_0
    const-string v2, "TermuxSharedProperties"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public dumpPropertiesToLog()V
    .locals 6

    .line 692
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v0

    .line 693
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v1, "propertiesDump":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Termux Properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    if-eqz v0, :cond_1

    .line 697
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 698
    .local v3, "key":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "`"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 701
    :cond_1
    const-string v2, " null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :goto_1
    const-string v2, "TermuxSharedProperties"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public getBellBehaviour()I
    .locals 2

    .line 630
    const-string v0, "bell-character"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultWorkingDirectory()Ljava/lang/String;
    .locals 2

    .line 666
    const-string v0, "default-working-directory"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteTMPDIRFilesOlderThanXDaysOnExit()I
    .locals 2

    .line 634
    const-string v0, "delete-tmpdir-files-older-than-x-days-on-exit"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInternalProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cached"    # Z

    .line 155
    if-eqz p2, :cond_2

    .line 156
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0, p1}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found in SharedProperties cache, force returning default value: `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxSharedProperties"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object v0

    .line 161
    :cond_1
    :goto_0
    return-object v0

    .line 173
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNightMode()Ljava/lang/String;
    .locals 2

    .line 670
    const-string v0, "night-mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProperties(Z)Ljava/util/Properties;
    .locals 1
    .param p1, "cached"    # Z

    .line 72
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0, p1}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "cached"    # Z

    .line 86
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0, p1, p3}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalCursorBlinkRate()I
    .locals 2

    .line 638
    const-string v0, "terminal-cursor-blink-rate"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTerminalCursorStyle()I
    .locals 2

    .line 642
    const-string v0, "terminal-cursor-style"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTerminalMarginHorizontal()I
    .locals 2

    .line 646
    const-string v0, "terminal-margin-horizontal"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTerminalMarginVertical()I
    .locals 2

    .line 650
    const-string v0, "terminal-margin-vertical"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTerminalToolbarHeightScaleFactor()F
    .locals 2

    .line 658
    const-string v0, "terminal-toolbar-height"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getTerminalTranscriptRows()I
    .locals 2

    .line 654
    const-string v0, "terminal-transcript-rows"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBackKeyTheEscapeKey()Z
    .locals 2

    .line 662
    const-string v0, "back-key"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "escape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnforcingCharBasedInput()Z
    .locals 2

    .line 598
    const-string v0, "enforce-char-based-input"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFileShareReceiverDisabled()Z
    .locals 2

    .line 582
    const-string v0, "disable-file-share-receiver"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFileViewReceiverDisabled()Z
    .locals 2

    .line 586
    const-string v0, "disable-file-view-receiver"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPropertyValueFalse(Ljava/lang/String;ZZ)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .param p3, "logErrorOnInvalidValue"    # Z

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getPropertyValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TermuxSharedProperties"

    invoke-static {p1, v0, v1, p3, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getInvertedBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPropertyValueTrue(Ljava/lang/String;ZZ)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .param p3, "logErrorOnInvalidValue"    # Z

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getPropertyValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TermuxSharedProperties"

    invoke-static {p1, v0, v1, p3, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsingCtrlSpaceWorkaround()Z
    .locals 2

    .line 618
    const-string v0, "ctrl-space-workaround"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUsingFullScreen()Z
    .locals 2

    .line 622
    const-string v0, "fullscreen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUsingFullScreenWorkAround()Z
    .locals 2

    .line 626
    const-string v0, "use-fullscreen-workaround"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadTermuxPropertiesFromDisk()V
    .locals 5

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mPropertiesFilePaths:Ljava/util/List;

    const-string v1, "TermuxSharedProperties"

    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFileFromList(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mPropertiesFile:Ljava/io/File;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    .line 51
    new-instance v0, Lcom/termux/shared/settings/properties/SharedProperties;

    iget-object v1, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mPropertiesFile:Ljava/io/File;

    iget-object v3, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mPropertiesList:Ljava/util/Set;

    iget-object v4, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/termux/shared/settings/properties/SharedProperties;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V

    iput-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    .line 53
    iget-object v0, p0, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/SharedProperties;->loadPropertiesFromDisk()V

    .line 54
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->dumpPropertiesToLog()V

    .line 55
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->dumpInternalPropertiesToLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 48
    .end local p0    # "this":Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shouldAllowExternalApps()Z
    .locals 2

    .line 578
    const-string v0, "allow-external-apps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldEnableDisableSoftKeyboardOnToggle()Z
    .locals 2

    .line 680
    const-string v0, "soft-keyboard-toggle-behaviour"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "enable/disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldExtraKeysTextBeAllCaps()Z
    .locals 2

    .line 602
    const-string v0, "extra-keys-text-all-caps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldOpenTerminalTranscriptURLOnClick()Z
    .locals 2

    .line 614
    const-string v0, "terminal-onclick-url-open"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldRunTermuxAmSocketServer()Z
    .locals 2

    .line 610
    const-string v0, "run-termux-am-socket-server"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldSoftKeyboardBeHiddenOnStartup()Z
    .locals 2

    .line 606
    const-string v0, "hide-soft-keyboard-on-startup"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
