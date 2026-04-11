.class public interface abstract Lcom/termux/terminal/TerminalSessionClient;
.super Ljava/lang/Object;
.source "TerminalSessionClient.java"


# virtual methods
.method public abstract getTerminalCursorStyle()Ljava/lang/Integer;
.end method

.method public abstract logDebug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract logVerbose(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logWarn(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBell(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
.end method

.method public abstract onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onTerminalCursorStateChange(Z)V
.end method

.method public abstract onTextChanged(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract setTerminalShellPid(Lcom/termux/terminal/TerminalSession;I)V
.end method
