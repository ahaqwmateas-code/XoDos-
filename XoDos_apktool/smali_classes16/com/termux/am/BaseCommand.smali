.class public abstract Lcom/termux/am/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected err:Ljava/io/PrintStream;

.field protected final mArgs:Lcom/termux/am/ShellCommand;

.field protected out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/termux/am/ShellCommand;

    invoke-direct {v0}, Lcom/termux/am/ShellCommand;-><init>()V

    iput-object v0, p0, Lcom/termux/am/BaseCommand;->mArgs:Lcom/termux/am/ShellCommand;

    .line 37
    iput-object p1, p0, Lcom/termux/am/BaseCommand;->out:Ljava/io/PrintStream;

    .line 38
    iput-object p2, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    .line 39
    return-void
.end method


# virtual methods
.method public nextArg()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->mArgs:Lcom/termux/am/ShellCommand;

    invoke-virtual {v0}, Lcom/termux/am/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextArgRequired()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->mArgs:Lcom/termux/am/ShellCommand;

    invoke-virtual {v0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->mArgs:Lcom/termux/am/ShellCommand;

    invoke-virtual {v0}, Lcom/termux/am/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)I
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 45
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/termux/am/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 47
    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->mArgs:Lcom/termux/am/ShellCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/termux/am/ShellCommand;->init([Ljava/lang/String;I)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/am/BaseCommand;->onRun()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 60
    return v1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Lcom/termux/am/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 56
    iget-object v1, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 57
    iget-object v1, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 62
    :goto_1
    return v2
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/termux/am/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 78
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 79
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public showUsage()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/termux/am/BaseCommand;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/termux/am/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 70
    return-void
.end method
