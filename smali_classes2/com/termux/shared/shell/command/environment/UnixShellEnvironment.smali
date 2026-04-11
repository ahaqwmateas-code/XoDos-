.class public abstract Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;
.super Ljava/lang/Object;
.source "UnixShellEnvironment.java"

# interfaces
.implements Lcom/termux/shared/shell/command/environment/IShellEnvironment;


# static fields
.field public static final ENV_COLORTERM:Ljava/lang/String; = "COLORTERM"

.field public static final ENV_HOME:Ljava/lang/String; = "HOME"

.field public static final ENV_LANG:Ljava/lang/String; = "LANG"

.field public static final ENV_LD_LIBRARY_PATH:Ljava/lang/String; = "LD_LIBRARY_PATH"

.field public static final ENV_PATH:Ljava/lang/String; = "PATH"

.field public static final ENV_PWD:Ljava/lang/String; = "PWD"

.field public static final ENV_TERM:Ljava/lang/String; = "TERM"

.field public static final ENV_TMPDIR:Ljava/lang/String; = "TMPDIR"

.field public static final LOGIN_SHELL_BINARIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    const-string v0, "fish"

    const-string v1, "sh"

    const-string v2, "login"

    const-string v3, "bash"

    const-string v4, "zsh"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;->LOGIN_SHELL_BINARIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDefaultBinPath()Ljava/lang/String;
.end method

.method public abstract getDefaultWorkingDirectoryPath()Ljava/lang/String;
.end method

.method public abstract getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "executable"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;

    .line 75
    invoke-static {p1, p2}, Lcom/termux/shared/shell/ShellUtils;->setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/termux/shared/shell/command/ExecutionCommand;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
