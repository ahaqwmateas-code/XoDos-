.class Lcom/termux/am/Am$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field final synthetic this$0:Lcom/termux/am/Am;


# direct methods
.method private constructor <init>(Lcom/termux/am/Am;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/termux/am/Am$IntentReceiver;->this$0:Lcom/termux/am/Am;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 251
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/termux/am/Am$IntentReceiver;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/am/Am;Lcom/termux/am/Am$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/am/Am;
    .param p2, "x1"    # Lcom/termux/am/Am$1;

    .line 249
    invoke-direct {p0, p1}, Lcom/termux/am/Am$IntentReceiver;-><init>(Lcom/termux/am/Am;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast completed: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/am/Am$IntentReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/termux/am/Am$IntentReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/am/Am$IntentReceiver;->getResultData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/termux/am/Am$IntentReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/termux/am/Am$IntentReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/termux/am/Am$IntentReceiver;->this$0:Lcom/termux/am/Am;

    iget-object v1, v1, Lcom/termux/am/Am;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    monitor-enter p0

    .line 260
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/termux/am/Am$IntentReceiver;->mFinished:Z

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 262
    monitor-exit p0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized waitForFinish()V
    .locals 2

    monitor-enter p0

    .line 267
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/am/Am$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 270
    .end local p0    # "this":Lcom/termux/am/Am$IntentReceiver;
    :cond_0
    nop

    .line 271
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 266
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
