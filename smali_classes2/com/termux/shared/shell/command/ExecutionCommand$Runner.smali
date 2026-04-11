.class public final enum Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
.super Ljava/lang/Enum;
.source "ExecutionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/command/ExecutionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/shell/command/ExecutionCommand$Runner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

.field public static final enum APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

.field public static final enum TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 3

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    const/4 v1, 0x0

    const-string v2, "terminal-session"

    const-string v3, "TERMINAL_SESSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 66
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    const/4 v1, 0x1

    const-string v2, "app-shell"

    const-string v3, "APP_SHELL"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 60
    invoke-static {}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->$values()[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->values()[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 92
    .local v3, "v":Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    iget-object v4, v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    return-object v3

    .line 91
    .end local v3    # "v":Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static runnerOf(Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand$Runner;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 102
    invoke-static {p0}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v0

    .line 103
    .local v0, "runner":Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 1

    .line 60
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    invoke-virtual {v0}, [Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    return-object v0
.end method


# virtual methods
.method public equalsRunner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "runner"    # Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    return-object v0
.end method
