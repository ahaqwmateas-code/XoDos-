.class public Lcom/termux/am/Am;
.super Lcom/termux/am/BaseCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/am/Am$IntentReceiver;
    }
.end annotation


# instance fields
.field private final app:Landroid/app/Application;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Ljava/io/PrintStream;Landroid/app/Application;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "app"    # Landroid/app/Application;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/termux/am/BaseCommand;-><init>(Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/am/Am;->mRepeat:I

    .line 45
    if-eqz p3, :cond_0

    .line 46
    iput-object p3, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    .line 47
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "app context can\'t be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeIntent()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/am/Am;->mRepeat:I

    .line 139
    iget-object v0, p0, Lcom/termux/am/Am;->mArgs:Lcom/termux/am/ShellCommand;

    new-instance v1, Lcom/termux/am/Am$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/am/Am$$ExternalSyntheticLambda0;-><init>(Lcom/termux/am/Am;)V

    invoke-static {v0, v1}, Lcom/termux/am/IntentCmd;->parseCommandArgs(Lcom/termux/am/ShellCommand;Lcom/termux/am/IntentCmd$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private runStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/termux/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    const-string v3, "Exception while starting Activity:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Activity class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    nop

    .line 227
    :goto_1
    iget v1, p0, Lcom/termux/am/Am;->mRepeat:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/termux/am/Am;->mRepeat:I

    .line 228
    iget v1, p0, Lcom/termux/am/Am;->mRepeat:I

    if-gt v1, v2, :cond_0

    .line 229
    return-void
.end method

.method private runStartService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    const-string v0, "Could not start service"

    invoke-direct {p0}, Lcom/termux/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    nop

    .line 176
    :try_start_1
    iget-object v3, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    invoke-virtual {v3, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :goto_0
    goto :goto_1

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    iget-object v0, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Requires permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void

    .line 170
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v0

    .line 171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private runStopService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    const-string v0, "Error stopping service"

    invoke-direct {p0}, Lcom/termux/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    nop

    .line 199
    :try_start_1
    iget-object v3, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    invoke-virtual {v3, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_0
    goto :goto_1

    .line 206
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 201
    .local v3, "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    iget-object v0, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Requires permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void

    .line 194
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v0

    .line 195
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/termux/am/Am;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Not found; Service not stopped."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private runToUri(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/termux/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private sendBroadcast()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lcom/termux/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v8

    .line 234
    .local v8, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/termux/am/Am$IntentReceiver;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/termux/am/Am$IntentReceiver;-><init>(Lcom/termux/am/Am;Lcom/termux/am/Am$1;)V

    .line 236
    .local v3, "receiver":Lcom/termux/am/Am$IntentReceiver;
    iget-object v0, p0, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    iget-object v2, p0, Lcom/termux/am/Am;->mReceiverPermission:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/am/Am;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, -0x1

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/app/Application;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {v3}, Lcom/termux/am/Am$IntentReceiver;->waitForFinish()V

    .line 240
    return-void
.end method


# virtual methods
.method synthetic lambda$makeIntent$0$com-termux-am-Am(Ljava/lang/String;Lcom/termux/am/ShellCommand;)Z
    .locals 3
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/termux/am/ShellCommand;

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "-S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "--receiver-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "--stack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 158
    return v2

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/am/Am;->mReceiverPermission:Ljava/lang/String;

    .line 156
    goto :goto_2

    .line 152
    :pswitch_1
    invoke-virtual {p0}, Lcom/termux/am/Am;->nextArgRequired()Ljava/lang/String;

    .line 153
    goto :goto_2

    .line 149
    :pswitch_2
    invoke-virtual {p0}, Lcom/termux/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/termux/am/Am;->mRepeat:I

    .line 150
    goto :goto_2

    .line 147
    :pswitch_3
    nop

    .line 160
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6032bf18 -> :sswitch_8
        -0x4611196c -> :sswitch_7
        -0x329f1d33 -> :sswitch_6
        0x5c3 -> :sswitch_5
        0x5c5 -> :sswitch_4
        0x5c6 -> :sswitch_3
        0x5ca -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x76b13587 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/termux/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "to-intent-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "to-app-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "to-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "stopservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/am/Am;->showError(Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/termux/am/Am;->runToUri(I)V

    .line 129
    goto :goto_2

    .line 125
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/termux/am/Am;->runToUri(I)V

    .line 126
    goto :goto_2

    .line 122
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/termux/am/Am;->runToUri(I)V

    .line 123
    goto :goto_2

    .line 119
    :pswitch_3
    invoke-direct {p0}, Lcom/termux/am/Am;->sendBroadcast()V

    .line 120
    goto :goto_2

    .line 116
    :pswitch_4
    invoke-direct {p0}, Lcom/termux/am/Am;->runStopService()V

    .line 117
    goto :goto_2

    .line 113
    :pswitch_5
    invoke-direct {p0}, Lcom/termux/am/Am;->runStartService()V

    .line 114
    goto :goto_2

    .line 110
    :pswitch_6
    invoke-direct {p0}, Lcom/termux/am/Am;->runStart()V

    .line 111
    nop

    .line 134
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x607e173f -> :sswitch_6
        -0x3988e78d -> :sswitch_5
        -0x33db6ce6 -> :sswitch_4
        0x68ac462 -> :sswitch_3
        0xb07b013 -> :sswitch_2
        0xe24026e -> :sswitch_1
        0x302bd54d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 52
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "usage: am [subcommand] [options]\nusage: am start [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]\n               [--sampling INTERVAL] [-R COUNT] [-S]\n               [--track-allocation] [--user <USER_ID> | current] <INTENT>\n       am startservice [--user <USER_ID> | current] <INTENT>\n       am stopservice [--user <USER_ID> | current] <INTENT>\n       am broadcast [--user <USER_ID> | all | current] <INTENT>\n       am to-uri [INTENT]\n       am to-intent-uri [INTENT]\n       am to-app-uri [INTENT]\n\nam start: start an Activity.  Options are:\n    -D: enable debugging\n    -N: enable native debugging\n    -W: wait for launch to complete\n    --start-profiler <FILE>: start profiler and send results to <FILE>\n    --sampling INTERVAL: use sample profiling with INTERVAL microseconds\n        between samples (use with --start-profiler)\n    -P <FILE>: like above, but profiling stops when app goes idle\n    -R: repeat the activity launch <COUNT> times.  Prior to each repeat,\n        the top activity will be finished.\n    -S: force stop the target app before starting the activity\n    --track-allocation: enable tracking of object allocations\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n    --stack <STACK_ID>: Specify into which stack should the activity be put.\nam startservice: start a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam stopservice: stop a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam broadcast: send a broadcast Intent.  Options are:\n    --user <USER_ID> | all | current: Specify which user to send to; if not\n        specified then send to all users.\n    --receiver-permission <PERMISSION>: Require receiver to hold permission.\n\nam to-uri: print the given Intent specification as a URI.\n\nam to-intent-uri: print the given Intent specification as an intent: URI.\n\nam to-app-uri: print the given Intent specification as an android-app: URI.\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/termux/am/IntentCmd;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 103
    return-void
.end method
