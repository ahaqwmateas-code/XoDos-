.class public Lcom/termux/x11/LoriePreferences$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# static fields
.field private static final iface:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 969
    new-instance v0, Lcom/termux/x11/LoriePreferences$Receiver$1;

    invoke-direct {v0}, Lcom/termux/x11/LoriePreferences$Receiver$1;-><init>()V

    sput-object v0, Lcom/termux/x11/LoriePreferences$Receiver;->iface:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 819
    return-void
.end method

.method private static help()V
    .locals 2

    .line 978
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "termux-x11-preference [list] {key:value} [{key2:value2}]..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 980
    return-void
.end method

.method static synthetic lambda$main$0(Landroid/content/Intent;)V
    .locals 0
    .param p0, "i"    # Landroid/content/Intent;

    .line 1027
    invoke-static {p0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$main$1()V
    .locals 2

    .line 1029
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Failed to obtain response from app."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1030
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1031
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .line 985
    const-string v0, "LoriePreferences$Receiver"

    const-string v1, "commit c050ebd7f7cd513e7e400974d69f367ea2b18a5a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 988
    .local v1, "in":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.termux.x11.CHANGE_PREFERENCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v2, "i":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 992
    .local v4, "inputIsFile":Z
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 993
    sget-object v6, Lcom/termux/x11/LoriePreferences$Receiver;->iface:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 994
    const-string v6, "com.termux"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 996
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v6

    const/16 v7, 0x7d0

    if-ne v6, v7, :cond_1

    .line 997
    :cond_0
    const/high16 v6, 0x400000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 999
    :cond_1
    if-eqz v4, :cond_5

    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_5

    .line 1000
    new-instance v6, Ljava/util/Scanner;

    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 1003
    .local v6, "scanner":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1004
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v7

    .line 1005
    .local v7, "line":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1006
    invoke-static {}, Lcom/termux/x11/LoriePreferences$Receiver;->help()V

    .line 1008
    :cond_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1009
    .local v8, "v":[Ljava/lang/String;
    aget-object v9, v8, v0

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    aget-object v9, v8, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1010
    aget-object v9, v8, v0

    aget-object v11, v8, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v9, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 1011
    :cond_3
    aget-object v9, v8, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    aget-object v9, v8, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1012
    aget-object v9, v8, v5

    aget-object v10, v8, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1013
    :cond_4
    aget-object v9, v8, v0

    aget-object v10, v8, v5

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1017
    .end local v6    # "scanner":Ljava/util/Scanner;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "v":[Ljava/lang/String;
    :cond_5
    array-length v6, p0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    aget-object v8, p0, v7

    .line 1018
    .local v8, "a":Ljava/lang/String;
    const-string v9, "list"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1019
    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1020
    :cond_6
    if-eqz v8, :cond_7

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1022
    .local v9, "v":[Ljava/lang/String;
    aget-object v10, v9, v0

    aget-object v11, v9, v5

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    .end local v9    # "v":[Ljava/lang/String;
    goto :goto_2

    .line 1024
    :cond_7
    invoke-static {}, Lcom/termux/x11/LoriePreferences$Receiver;->help()V

    .line 1017
    .end local v8    # "a":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1027
    :cond_8
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1028
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1032
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1033
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 832
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 833
    .local v4, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 834
    .local v5, "ibinder":Landroid/os/IBinder;
    :goto_1
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/termux/x11/IRemoteCmdImterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/termux/x11/IRemoteCmdImterface;

    move-result-object v0

    :cond_2
    move-object v6, v0

    .line 837
    .local v6, "remote":Lcom/termux/x11/IRemoteCmdImterface;
    if-eqz v3, :cond_1a

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 838
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v10, :cond_3

    :try_start_1
    new-instance v10, Lcom/termux/x11/Prefs;

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 950
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_f

    .line 838
    :cond_3
    :try_start_2
    sget-object v10, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v10, :cond_4

    :try_start_3
    sget-object v10, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance v10, Lcom/termux/x11/Prefs;

    invoke-direct {v10, v2}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V

    .line 839
    .local v10, "p":Lcom/termux/x11/Prefs;
    :goto_2
    const-string v11, "list"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    const-string v12, ""

    if-eqz v11, :cond_b

    .line 840
    move-object v11, v12

    .line 841
    .local v11, "result":Ljava/lang/String;
    :try_start_5
    iget-object v12, v10, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 842
    .local v14, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    iget-object v15, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const-string v0, "\"\n"

    const-string v8, "\"=\""

    const-string v9, "\""

    if-ne v15, v7, :cond_5

    .line 843
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asString()Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v11, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v11    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_4

    .line 844
    .end local v0    # "result":Ljava/lang/String;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_5
    :try_start_7
    iget-object v7, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ne v7, v15, :cond_6

    .line 845
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asInt()Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v11, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v11    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto/16 :goto_4

    .line 846
    .end local v0    # "result":Ljava/lang/String;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_6
    :try_start_9
    iget-object v7, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-ne v7, v15, :cond_7

    .line 847
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asBoolean()Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-object v11, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v11    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_4

    .line 848
    .end local v0    # "result":Ljava/lang/String;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_7
    :try_start_b
    iget-object v7, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    const-class v15, [Ljava/lang/String;

    if-ne v7, v15, :cond_9

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v14}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v15

    invoke-static {v15}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$100(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 850
    .local v7, "entries":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v14}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v13

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 851
    .local v13, "values":[Ljava/lang/String;
    invoke-virtual {v14}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v15
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 852
    .local v15, "value":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "bundle":Landroid/os/Bundle;
    .local v16, "bundle":Landroid/os/Bundle;
    :try_start_c
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 853
    .local v4, "index":I
    move-object/from16 v17, v5

    const/4 v5, -0x1

    .end local v5    # "ibinder":Landroid/os/IBinder;
    .local v17, "ibinder":Landroid/os/IBinder;
    if-eq v4, v5, :cond_8

    .line 854
    :try_start_d
    aget-object v5, v7, v4

    move-object v15, v5

    .line 855
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v14, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .end local v11    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_4

    .line 950
    .end local v0    # "result":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v7    # "entries":[Ljava/lang/String;
    .end local v10    # "p":Lcom/termux/x11/Prefs;
    .end local v13    # "values":[Ljava/lang/String;
    .end local v14    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .end local v15    # "value":Ljava/lang/String;
    .end local v17    # "ibinder":Landroid/os/IBinder;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v17    # "ibinder":Landroid/os/IBinder;
    goto/16 :goto_f

    .line 848
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v17    # "ibinder":Landroid/os/IBinder;
    .local v4, "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v10    # "p":Lcom/termux/x11/Prefs;
    .restart local v11    # "result":Ljava/lang/String;
    .restart local v14    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 857
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .end local v14    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "ibinder":Landroid/os/IBinder;
    :goto_4
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_3

    .line 859
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v17    # "ibinder":Landroid/os/IBinder;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :cond_a
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "ibinder":Landroid/os/IBinder;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v1, v6, v4, v5, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 860
    return-void

    .line 863
    .end local v11    # "result":Ljava/lang/String;
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v17    # "ibinder":Landroid/os/IBinder;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :cond_b
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "ibinder":Landroid/os/IBinder;
    invoke-virtual {v10}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v4, v0

    .line 864
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 865
    .local v5, "key":Ljava/lang/String;
    if-nez v5, :cond_c

    .line 866
    goto :goto_5

    .line 867
    :cond_c
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 868
    .local v7, "newValue":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 869
    goto :goto_5

    .line 871
    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    const-string v9, "enableAccessibilityServiceAutomatically"

    const-string v11, "displayResolutionCustom"

    sparse-switch v8, :sswitch_data_0

    :cond_e
    goto :goto_6

    :sswitch_0
    :try_start_e
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    goto :goto_7

    :sswitch_1
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    goto :goto_7

    :sswitch_2
    const-string v8, "extra_keys_config"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    if-eqz v8, :cond_e

    const/4 v8, 0x2

    goto :goto_7

    :goto_6
    const/4 v8, -0x1

    :goto_7
    const-string v13, "true"

    packed-switch v8, :pswitch_data_0

    .line 904
    :try_start_f
    iget-object v8, v10, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    goto :goto_a

    .line 900
    :pswitch_0
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 901
    move-object/from16 v18, v0

    const/4 v0, -0x1

    goto/16 :goto_d

    .line 886
    :pswitch_1
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 887
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/termux/x11/utils/KeyInterceptor;->shutdown(Z)V

    goto :goto_8

    .line 888
    :cond_f
    const-string v8, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_10

    .line 889
    const-string v0, "Permission denied.\nAndroid requires WRITE_SECURE_SETTINGS permission to change `enableAccessibilityServiceAutomatically` setting.\nPlease, launch this command using ADB:\nadb shell pm grant com.termux.x11 android.permission.WRITE_SECURE_SETTINGS"

    const/4 v8, 0x1

    invoke-virtual {v1, v6, v8, v8, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 893
    return-void

    .line 896
    :cond_10
    :goto_8
    invoke-virtual {v13, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 897
    move-object/from16 v18, v0

    const/4 v0, -0x1

    goto/16 :goto_d

    .line 874
    :pswitch_2
    :try_start_10
    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, "resolution":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v13, v8, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 876
    const/4 v9, 0x1

    aget-object v13, v8, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 880
    .end local v8    # "resolution":[Ljava/lang/String;
    nop

    .line 882
    :try_start_11
    invoke-interface {v4, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    move-object/from16 v18, v0

    const/4 v0, -0x1

    goto/16 :goto_d

    .line 877
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    .line 878
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    :goto_9
    const-string v8, "displayResolutionCustom: Wrong resolution format."

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9, v9, v8}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 879
    return-void

    .line 904
    .end local v0    # "ignored":Ljava/lang/IllegalArgumentException;
    :goto_a
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 905
    .local v8, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    if-eqz v8, :cond_12

    iget-object v9, v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_12

    .line 906
    invoke-virtual {v13, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 907
    const-string v9, "showAdditionalKbd"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v13, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 908
    const-string v9, "additionalKbdVisible"

    const/4 v11, 0x1

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const/4 v0, -0x1

    goto/16 :goto_d

    .line 907
    :cond_11
    move-object/from16 v18, v0

    const/4 v0, -0x1

    goto/16 :goto_d

    .line 909
    :cond_12
    if-eqz v8, :cond_13

    iget-object v9, v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    if-ne v9, v11, :cond_13

    .line 911
    :try_start_12
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 916
    move-object/from16 v18, v0

    const/4 v0, -0x1

    goto :goto_d

    .line 912
    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    .line 914
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    :goto_b
    :try_start_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": failed to parse integer: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v11, v9}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 915
    return-void

    .line 917
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_13
    if-eqz v8, :cond_18

    iget-object v9, v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    const-class v11, [Ljava/lang/String;

    if-ne v9, v11, :cond_18

    .line 918
    move-object v9, v8

    check-cast v9, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 919
    .local v9, "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getEntries()[Ljava/lang/String;

    move-result-object v11

    .line 920
    .local v11, "entries":[Ljava/lang/String;
    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getValues()[Ljava/lang/String;

    move-result-object v13

    .line 921
    .restart local v13    # "values":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 923
    .local v14, "index":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_14

    invoke-static {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$100(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v15

    move-object/from16 v18, v0

    invoke-static {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v0

    if-eq v15, v0, :cond_15

    .line 924
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v14, v0

    goto :goto_c

    .line 923
    :cond_14
    move-object/from16 v18, v0

    .line 926
    :cond_15
    :goto_c
    const/4 v0, -0x1

    if-eq v14, v0, :cond_16

    .line 927
    aget-object v15, v13, v14

    invoke-interface {v4, v5, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 928
    nop

    .line 940
    .end local v8    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .end local v9    # "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    .end local v11    # "entries":[Ljava/lang/String;
    .end local v13    # "values":[Ljava/lang/String;
    .end local v14    # "index":I
    :goto_d
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    .local v8, "intent0":Landroid/content/Intent;
    const-string v9, "key"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string v9, "fromBroadcast"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    const-string v9, "com.termux"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    invoke-virtual {v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 945
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "newValue":Ljava/lang/String;
    .end local v8    # "intent0":Landroid/content/Intent;
    move-object/from16 v0, v18

    goto/16 :goto_5

    .line 931
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "newValue":Ljava/lang/String;
    .local v8, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .restart local v9    # "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    .restart local v11    # "entries":[Ljava/lang/String;
    .restart local v13    # "values":[Ljava/lang/String;
    .restart local v14    # "index":I
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ": can not be set to \""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\", possible options are "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$100(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v15

    invoke-static {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v2

    if-eq v15, v2, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " or "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_17
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2, v2, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 932
    return-void

    .line 934
    .end local v9    # "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    .end local v11    # "entries":[Ljava/lang/String;
    .end local v13    # "values":[Ljava/lang/String;
    .end local v14    # "index":I
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": unrecognised option"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9, v2, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 935
    return-void

    .line 946
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "newValue":Ljava/lang/String;
    .end local v8    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    :cond_19
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_e

    .line 950
    .end local v10    # "p":Lcom/termux/x11/Prefs;
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v17    # "ibinder":Landroid/os/IBinder;
    .local v4, "bundle":Landroid/os/Bundle;
    .local v5, "ibinder":Landroid/os/IBinder;
    :catch_6
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "ibinder":Landroid/os/IBinder;
    goto :goto_f

    .line 837
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v17    # "ibinder":Landroid/os/IBinder;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :cond_1a
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 949
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "ibinder":Landroid/os/IBinder;
    :goto_e
    const-string v0, "Done"

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4, v2, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 952
    goto :goto_10

    .line 950
    :catch_7
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v1, v6, v5, v4, v2}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e1a2dc2 -> :sswitch_2
        0x2846581f -> :sswitch_1
        0x5ad03019 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .line 823
    invoke-super {p0, p1, p2}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V
    .locals 3
    .param p1, "remote"    # Lcom/termux/x11/IRemoteCmdImterface;
    .param p2, "status"    # I
    .param p3, "oldStatus"    # I
    .param p4, "text"    # Ljava/lang/String;

    .line 956
    if-eqz p1, :cond_0

    .line 958
    :try_start_0
    invoke-interface {p1, p2, p4}, Lcom/termux/x11/IRemoteCmdImterface;->exit(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    goto :goto_1

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "LoriePreferences"

    const-string v2, "Failed to send response to commandline proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$Receiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    invoke-virtual {p0, p3}, Lcom/termux/x11/LoriePreferences$Receiver;->setResultCode(I)V

    .line 964
    invoke-virtual {p0, p4}, Lcom/termux/x11/LoriePreferences$Receiver;->setResultData(Ljava/lang/String;)V

    .line 966
    :cond_1
    :goto_1
    return-void
.end method
