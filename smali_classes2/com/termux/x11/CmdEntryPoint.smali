.class public Lcom/termux/x11/CmdEntryPoint;
.super Lcom/termux/x11/ICmdEntryInterface$Stub;
.source "CmdEntryPoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_START:Ljava/lang/String; = "com.termux.x11.CmdEntryPoint.ACTION_START"

.field public static ctx:Landroid/content/Context;

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$H7taMm5RCngRqGMdlEvER9BHV7U(Lcom/termux/x11/CmdEntryPoint;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcastDelayed()V

    return-void
.end method

.method public static synthetic $r8$lambda$IG3W-phhykyvbQTncBEqNO8MALo(Lcom/termux/x11/CmdEntryPoint;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->listenForConnections()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 36
    const-string v0, "CmdEntryPoint"

    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Something went wrong when preparing MainLooper"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    .line 190
    invoke-static {}, Lcom/termux/x11/CmdEntryPoint;->createContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/termux/x11/CmdEntryPoint;->ctx:Landroid/content/Context;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libXlorie.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "path":Ljava/lang/String;
    const-class v2, Lcom/termux/x11/CmdEntryPoint;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 194
    .local v2, "loader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 195
    .local v4, "res":Ljava/net/URL;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file:"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "libPath":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x86

    if-eqz v3, :cond_3

    .line 198
    :try_start_1
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :goto_2
    goto :goto_3

    .line 199
    :catch_1
    move-exception v6

    .line 200
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to dlopen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Failed to load native library. Did you install the right apk? Try the universal one."

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 206
    :cond_3
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-nez v0, :cond_4

    .line 207
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Failed to acquire native library. Did you install the right apk? Try the universal one."

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 211
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "libPath":Ljava/lang/String;
    .end local v4    # "res":Ljava/net/URL;
    :cond_4
    :goto_3
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/termux/x11/ICmdEntryInterface$Stub;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->createIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/CmdEntryPoint;->intent:Landroid/content/Intent;

    .line 55
    invoke-static {p1}, Lcom/termux/x11/CmdEntryPoint;->start([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcastDelayed()V

    .line 60
    return-void
.end method

.method private static native connected()Z
.end method

.method public static createContext()Landroid/content/Context;
    .locals 9

    .line 150
    const-string v0, "sun.misc.Unsafe"

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 152
    .local v1, "err":Ljava/io/PrintStream;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 153
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    .local v4, "unsafe":Ljava/lang/Object;
    new-instance v5, Ljava/io/PrintStream;

    new-instance v6, Lcom/termux/x11/CmdEntryPoint$2;

    invoke-direct {v6}, Lcom/termux/x11/CmdEntryPoint$2;-><init>()V

    invoke-direct {v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v5}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 158
    const-string v5, "OLD_CONTEXT"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 159
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    goto :goto_0

    .line 161
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    nop

    .line 162
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "allocateInstance"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 163
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-class v5, Landroid/app/ActivityThread;

    aput-object v5, v3, v8

    .line 164
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    .line 165
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 171
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "unsafe":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Context"

    const-string v3, "Failed to instantiate context:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 172
    nop

    .line 173
    return-object v0

    .line 171
    .end local v0    # "context":Landroid/content/Context;
    :goto_1
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 172
    throw v0
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 5

    .line 64
    const-string v0, "TERMUX_X11_OVERRIDE_PACKAGE"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "targetPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    const-string v0, "com.termux"

    .line 69
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.termux.x11.CmdEntryPoint.ACTION_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v2

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_2

    .line 77
    :cond_1
    const/high16 v2, 0x400000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    :cond_2
    return-object v3
.end method

.method static synthetic lambda$main$0([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/termux/x11/CmdEntryPoint;

    invoke-direct {v0, p0}, Lcom/termux/x11/CmdEntryPoint;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private native listenForConnections()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 49
    const-string v0, "CmdEntryPoint"

    const-string v1, "commit c050ebd7f7cd513e7e400974d69f367ea2b18a5a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 52
    return-void
.end method

.method private sendBroadcast()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/termux/x11/CmdEntryPoint;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method static sendBroadcast(Landroid/content/Intent;)V
    .locals 18
    .param p0, "intent"    # Landroid/content/Intent;

    .line 88
    move-object/from16 v1, p0

    :try_start_0
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto/16 :goto_2

    .line 89
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    nop

    instance-of v0, v2, Ljava/lang/NullPointerException;

    const-string v3, "Broadcast"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "Context is null, falling back to manual broadcasting"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_0
    const-string v0, "Falling back to manual broadcasting, failed to broadcast intent through Context:"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v6, v0, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 100
    .local v6, "packageName":Ljava/lang/String;
    nop

    .line 104
    const/4 v15, 0x0

    :try_start_2
    const-class v0, Landroid/app/ActivityManager;

    const-string v4, "getService"

    new-array v5, v3, [Ljava/lang/Class;

    .line 105
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v0, v15, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    .local v0, "am":Landroid/app/IActivityManager;
    move-object/from16 v16, v0

    goto :goto_1

    .line 107
    .end local v0    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 109
    .local v4, "e2":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getDefault"

    new-array v7, v3, [Ljava/lang/Class;

    .line 110
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v0, v15, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    .restart local v0    # "am":Landroid/app/IActivityManager;
    move-object/from16 v16, v0

    .line 117
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "e2":Ljava/lang/Exception;
    .local v16, "am":Landroid/app/IActivityManager;
    :goto_1
    if-eqz v16, :cond_1

    .line 118
    const/4 v0, 0x1

    new-array v10, v0, [Landroid/content/Intent;

    aput-object v1, v10, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x50000000

    move-object/from16 v4, v16

    invoke-interface/range {v4 .. v14}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v4

    .line 122
    .local v4, "sender":Landroid/content/IIntentSender;
    :try_start_4
    const-class v5, Landroid/content/IIntentSender;

    const-string v7, "send"

    const/4 v8, 0x7

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    const-class v10, Landroid/content/Intent;

    aput-object v10, v9, v0

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-class v12, Landroid/os/IBinder;

    const/4 v13, 0x3

    aput-object v12, v9, v13

    const-class v12, Landroid/content/IIntentReceiver;

    const/4 v14, 0x4

    aput-object v12, v9, v14

    const/4 v12, 0x5

    aput-object v10, v9, v12

    const-class v10, Landroid/os/Bundle;

    const/16 v17, 0x6

    aput-object v10, v9, v17

    .line 123
    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lcom/termux/x11/CmdEntryPoint$1;

    invoke-direct {v9}, Lcom/termux/x11/CmdEntryPoint$1;-><init>()V

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v3

    aput-object v1, v8, v0

    aput-object v15, v8, v11

    aput-object v15, v8, v13

    aput-object v9, v8, v14

    aput-object v15, v8, v12

    aput-object v15, v8, v17

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    nop

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "sender":Landroid/content/IIntentSender;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v16    # "am":Landroid/app/IActivityManager;
    :goto_2
    return-void

    .line 127
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "sender":Landroid/content/IIntentSender;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v16    # "am":Landroid/app/IActivityManager;
    :catch_2
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 117
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "sender":Landroid/content/IIntentSender;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    .end local v16    # "am":Landroid/app/IActivityManager;
    .local v4, "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 113
    .local v0, "e3":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v0    # "e3":Ljava/lang/Exception;
    .end local v4    # "e2":Ljava/lang/Exception;
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 99
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private sendBroadcastDelayed()V
    .locals 4

    .line 136
    invoke-static {}, Lcom/termux/x11/CmdEntryPoint;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/termux/x11/CmdEntryPoint;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    :cond_0
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/CmdEntryPoint;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method public static native start([Ljava/lang/String;)Z
.end method


# virtual methods
.method public native getLogcatOutput()Landroid/os/ParcelFileDescriptor;
.end method

.method public native getXConnection()Landroid/os/ParcelFileDescriptor;
.end method

.method spawnListeningThread()V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/CmdEntryPoint;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method
