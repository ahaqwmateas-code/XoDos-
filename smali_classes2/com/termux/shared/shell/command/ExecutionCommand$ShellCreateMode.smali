.class public final enum Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
.super Ljava/lang/Enum;
.source "ExecutionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/command/ExecutionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShellCreateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

.field public static final enum ALWAYS:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

.field public static final enum NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;


# instance fields
.field private final mode:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    .locals 3

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->ALWAYS:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 111
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    const/4 v1, 0x0

    const-string v2, "always"

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->ALWAYS:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    .line 114
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    const/4 v1, 0x1

    const-string v2, "no-shell-with-name"

    const-string v3, "NO_SHELL_WITH_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    .line 108
    invoke-static {}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->$values()[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->mode:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static modeOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    .locals 5
    .param p0, "mode"    # Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->values()[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 134
    .local v3, "v":Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    iget-object v4, v3, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->mode:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    return-object v3

    .line 133
    .end local v3    # "v":Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    const-class v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    .locals 1

    .line 108
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    invoke-virtual {v0}, [Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    return-object v0
.end method


# virtual methods
.method public equalsMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sessionCreateMode"    # Ljava/lang/String;

    .line 127
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->mode:Ljava/lang/String;

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

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->mode:Ljava/lang/String;

    return-object v0
.end method
