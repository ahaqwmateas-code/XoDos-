.class public Lcom/termux/shared/termux/terminal/TermuxTerminalSessionClientBase;
.super Ljava/lang/Object;
.source "TermuxTerminalSessionClientBase.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSessionClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getTerminalCursorStyle()Ljava/lang/Integer;
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 76
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 61
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 71
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public logStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 91
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 86
    invoke-static {p1, p2, p3}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 81
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 66
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;

    .line 37
    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "changedSession"    # Lcom/termux/terminal/TerminalSession;

    .line 41
    return-void
.end method

.method public onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "text"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;

    .line 33
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "finishedSession"    # Lcom/termux/terminal/TerminalSession;

    .line 25
    return-void
.end method

.method public onTerminalCursorStateChange(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 45
    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "changedSession"    # Lcom/termux/terminal/TerminalSession;

    .line 17
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 0
    .param p1, "updatedSession"    # Lcom/termux/terminal/TerminalSession;

    .line 21
    return-void
.end method

.method public setTerminalShellPid(Lcom/termux/terminal/TerminalSession;I)V
    .locals 0
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "pid"    # I

    .line 49
    return-void
.end method
