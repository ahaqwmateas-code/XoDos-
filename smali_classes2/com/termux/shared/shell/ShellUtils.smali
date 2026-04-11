.class public Lcom/termux/shared/shell/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "executable"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/termux/shared/file/FileUtils;->getFileBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPid(Ljava/lang/Process;)I
    .locals 3
    .param p0, "p"    # Ljava/lang/Process;

    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 23
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    return v2

    .line 27
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    nop

    .end local p0    # "p":Ljava/lang/Process;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .restart local p0    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1
.end method

.method public static getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "terminalSession"    # Lcom/termux/terminal/TerminalSession;
    .param p1, "linesJoined"    # Z
    .param p2, "trim"    # Z

    .line 53
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    .line 56
    .local v1, "terminalEmulator":Lcom/termux/terminal/TerminalEmulator;
    if-nez v1, :cond_1

    return-object v0

    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v2

    .line 59
    .local v2, "terminalBuffer":Lcom/termux/terminal/TerminalBuffer;
    if-nez v2, :cond_2

    return-object v0

    .line 63
    :cond_2
    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptTextWithFullLinesJoined()Ljava/lang/String;

    move-result-object v3

    .local v3, "transcriptText":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v3    # "transcriptText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptTextWithoutJoinedLines()Ljava/lang/String;

    move-result-object v3

    .line 68
    .restart local v3    # "transcriptText":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_4

    return-object v0

    .line 70
    :cond_4
    if-eqz p2, :cond_5

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_5
    return-object v3
.end method

.method public static setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "executable"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 40
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
