.class public Lcom/termux/app/api/file/FileReceiverActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FileReceiverActivity.java"


# static fields
.field private static final API_TAG:Ljava/lang/String; = "TermuxFileReceiver"

.field static final EDITOR_PROGRAM:Ljava/lang/String; = "/data/data/com.termux/files/home/bin/termux-file-editor"

.field private static final LOG_TAG:Ljava/lang/String; = "FileReceiverActivity"

.field static final TERMUX_RECEIVEDIR:Ljava/lang/String; = "/data/data/com.termux/files/home/downloads"

.field static final URL_OPENER_PROGRAM:Ljava/lang/String; = "/data/data/com.termux/files/home/bin/termux-url-opener"


# instance fields
.field mFinishOnDismissNameDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/api/file/FileReceiverActivity;->mFinishOnDismissNameDialog:Z

    return-void
.end method

.method static isSharedTextAnUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sharedText"    # Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "magnet:\\?xt=urn:btih:.*?"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 58
    :goto_1
    return v0
.end method

.method public static updateFileReceiverActivityComponentsState(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 257
    new-instance v0, Lcom/termux/app/api/file/FileReceiverActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/app/api/file/FileReceiverActivity$1;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {v0}, Lcom/termux/app/api/file/FileReceiverActivity$1;->start()V

    .line 283
    return-void
.end method


# virtual methods
.method handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "subjectFromIntent"    # Ljava/lang/String;

    .line 137
    const-string v0, "_display_name"

    const-string v1, "FileReceiverActivity"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", path: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", fragment: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, "attachmentFileName":Ljava/lang/String;
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "fileNameColumnId":I
    if-ltz v0, :cond_1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_1

    .line 142
    .end local v0    # "fileNameColumnId":I
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "subjectFromIntent":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v0

    .line 147
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "subjectFromIntent":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 149
    .end local v3    # "c":Landroid/database/Cursor;
    :cond_2
    if-nez v2, :cond_3

    move-object v2, p2

    .line 150
    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/net/uri/UriUtils;->getUriFileBasename(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 152
    :cond_4
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 153
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0, v0, v2}, Lcom/termux/app/api/file/FileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v2    # "attachmentFileName":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    goto :goto_2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to handle shared content:\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleContentUri(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method handleUrlAndFinish(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/bin/termux-url-opener"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "urlOpenerProgramFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    const-string v1, "The following file does not exist:\n$HOME/bin/termux-url-opener\n\nCreate this file as a script or a symlink - it will be called with the shared URL as the first argument."

    invoke-virtual {p0, v1}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 234
    return-void

    .line 239
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/File;->setExecutable(Z)Z

    .line 241
    invoke-static {v1}, Lcom/termux/shared/net/uri/UriUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, "urlOpenerProgramUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.termux.service_execute"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v2, "executeIntent":Landroid/content/Intent;
    const-class v3, Lcom/termux/app/TermuxService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    const-string v3, "com.termux.execute.arguments"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v2}, Lcom/termux/app/api/file/FileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    .line 248
    return-void
.end method

.method synthetic lambda$promptNameAndSave$2$com-termux-app-api-file-FileReceiverActivity(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "text"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/termux/app/api/file/FileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "outFile":Ljava/io/File;
    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/bin/termux-file-editor"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "editorProgramFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    const-string v2, "The following file does not exist:\n$HOME/bin/termux-file-editor\n\nCreate this file as a script or a symlink - it will be called with the received file as only argument."

    invoke-virtual {p0, v2}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 170
    return-void

    .line 175
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 177
    invoke-static {v2}, Lcom/termux/shared/net/uri/UriUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 179
    .local v2, "scriptUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.termux.service_execute"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v3, "executeIntent":Landroid/content/Intent;
    const-class v4, Lcom/termux/app/TermuxService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.termux.execute.arguments"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v3}, Lcom/termux/app/api/file/FileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    .line 184
    return-void
.end method

.method synthetic lambda$promptNameAndSave$3$com-termux-app-api-file-FileReceiverActivity(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "text"    # Ljava/lang/String;

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/termux/app/api/file/FileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.service_execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "executeIntent":Landroid/content/Intent;
    const-string v1, "com.termux.execute.cwd"

    const-string v2, "/data/data/com.termux/files/home/downloads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-class v1, Lcom/termux/app/TermuxService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/termux/app/api/file/FileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    .line 193
    return-void
.end method

.method synthetic lambda$promptNameAndSave$4$com-termux-app-api-file-FileReceiverActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    return-void
.end method

.method synthetic lambda$promptNameAndSave$5$com-termux-app-api-file-FileReceiverActivity(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 195
    iget-boolean v0, p0, Lcom/termux/app/api/file/FileReceiverActivity;->mFinishOnDismissNameDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    .line 196
    :cond_0
    return-void
.end method

.method synthetic lambda$showErrorDialogAndQuit$0$com-termux-app-api-file-FileReceiverActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 130
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showErrorDialogAndQuit$1$com-termux-app-api-file-FileReceiverActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 132
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 11

    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "scheme":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent Received:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileReceiverActivity"

    invoke-static {v5, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v4, "android.intent.extra.TITLE"

    const/4 v6, 0x0

    invoke-static {v0, v4, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "sharedTitle":Ljava/lang/String;
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    .line 76
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "sharedText":Ljava/lang/String;
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 79
    .local v7, "sharedUri":Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 80
    invoke-virtual {p0, v7, v4}, Lcom/termux/app/api/file/FileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    if-eqz v5, :cond_4

    .line 82
    invoke-static {v5}, Lcom/termux/app/api/file/FileReceiverActivity;->isSharedTextAnUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    invoke-virtual {p0, v5}, Lcom/termux/app/api/file/FileReceiverActivity;->handleUrlAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-static {v0, v8, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "subject":Ljava/lang/String;
    if-nez v6, :cond_2

    move-object v6, v4

    .line 87
    :cond_2
    if-eqz v6, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    :cond_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v8, v6}, Lcom/termux/app/api/file/FileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    .end local v6    # "subject":Ljava/lang/String;
    goto :goto_0

    .line 91
    :cond_4
    const-string v6, "Send action without content - nothing to save."

    invoke-virtual {p0, v6}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 93
    .end local v5    # "sharedText":Ljava/lang/String;
    .end local v7    # "sharedUri":Landroid/net/Uri;
    :goto_0
    goto/16 :goto_2

    .line 94
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 96
    .local v6, "dataUri":Landroid/net/Uri;
    if-nez v6, :cond_6

    .line 97
    const-string v5, "Data uri not passed."

    invoke-virtual {p0, v5}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 98
    return-void

    .line 101
    :cond_6
    const-string v7, "content"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 102
    invoke-virtual {p0, v6, v4}, Lcom/termux/app/api/file/FileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :cond_7
    const-string v7, "file"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uri: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\", path: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\", fragment: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v6}, Lcom/termux/shared/net/uri/UriUtils;->getUriFilePathWithFragment(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 109
    const-string v7, "File path from data uri is null, empty or invalid."

    invoke-virtual {p0, v7}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_8
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v7, "file":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v8, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/termux/app/api/file/FileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 117
    :catch_0
    move-exception v8

    .line 118
    .local v8, "e":Ljava/io/FileNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 120
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    goto :goto_2

    .line 121
    :cond_9
    const-string v5, "Unable to receive any file or URL."

    invoke-virtual {p0, v5}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 124
    .end local v6    # "dataUri":Landroid/net/Uri;
    :goto_2
    return-void
.end method

.method promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "attachmentFileName"    # Ljava/lang/String;

    .line 161
    new-instance v4, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/api/file/FileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v6, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/api/file/FileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v8, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/app/api/file/FileReceiverActivity;)V

    new-instance v9, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/app/api/file/FileReceiverActivity;)V

    const v1, 0x7f120347

    const v3, 0x7f12002b

    const v5, 0x7f12002c

    const/high16 v7, 0x1040000

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/termux/interact/TextInputDialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 197
    return-void
.end method

.method public saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "attachmentFileName"    # Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/downloads"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "receiveDir":Ljava/io/File;
    invoke-static {p2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "File name cannot be null or empty"

    invoke-virtual {p0, v1}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 204
    return-object v2

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 209
    return-object v2

    .line 213
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v1, "outFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v3, "f":Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 217
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "readBytes":I
    if-lez v5, :cond_2

    .line 218
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v4    # "buffer":[B
    .end local v6    # "readBytes":I
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .end local v3    # "f":Ljava/io/FileOutputStream;
    return-object v1

    .line 214
    .restart local v3    # "f":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "receiveDir":Ljava/io/File;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "attachmentFileName":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 222
    .end local v1    # "outFile":Ljava/io/File;
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v0    # "receiveDir":Ljava/io/File;
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "attachmentFileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving file:\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/termux/app/api/file/FileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 224
    const-string v3, "FileReceiverActivity"

    const-string v4, "Error saving file"

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    return-object v2
.end method

.method showErrorDialogAndQuit(Ljava/lang/String;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/api/file/FileReceiverActivity;->mFinishOnDismissNameDialog:Z

    .line 128
    new-instance v5, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/api/file/FileReceiverActivity;)V

    new-instance v8, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/api/file/FileReceiverActivity;)V

    const-string v2, "TermuxFileReceiver"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 133
    return-void
.end method
