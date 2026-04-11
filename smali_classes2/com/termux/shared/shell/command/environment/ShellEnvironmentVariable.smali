.class public Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;
.super Ljava/lang/Object;
.source "ShellEnvironmentVariable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;",
        ">;"
    }
.end annotation


# instance fields
.field public escaped:Z

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "escaped"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;->value:Ljava/lang/String;

    .line 21
    iput-boolean p3, p0, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;->escaped:Z

    .line 22
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;)I
    .locals 2
    .param p1, "other"    # Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;

    .line 26
    iget-object v0, p0, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;

    invoke-virtual {p0, p1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;->compareTo(Lcom/termux/shared/shell/command/environment/ShellEnvironmentVariable;)I

    move-result p1

    return p1
.end method
