.class Lcom/termux/app/TermuxInstaller$1;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$extractionProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$1;->val$extractionProgressDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "whenDone"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 252
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 253
    invoke-static {p1, p0, p2}, Lcom/termux/app/TermuxInstaller;->access$100(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method static synthetic lambda$run$1(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "whenDone"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 257
    const-string v0, "TermuxInstaller"

    const-string v1, "User canceled XoDos installation"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 259
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method static synthetic lambda$run$2(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p2, "whenDone"    # Ljava/lang/Runnable;

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    const-string v1, "Install XoDos System"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    const-string v1, "Do you want to install the XoDos system? This will install additional packages and configurations."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, p2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 250
    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p0, p2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 255
    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    return-void
.end method

.method static synthetic lambda$run$3(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "progress"    # Landroid/app/ProgressDialog;

    .line 271
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 275
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 146
    move-object/from16 v1, p0

    const-string v0, "/data/data/com.termux/files/usr-staging"

    const-string v2, "TermuxInstaller"

    :try_start_0
    const-string v3, "Installing Termux bootstrap packages."

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "termux prefix staging directory"

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 152
    .local v3, "error":Lcom/termux/shared/errors/Error;
    if-eqz v3, :cond_0

    .line 153
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 269
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void

    .line 158
    :cond_0
    :try_start_1
    const-string v5, "termux prefix directory"

    const-string v6, "/data/data/com.termux/files/usr"

    invoke-static {v5, v6, v4}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v5

    move-object v3, v5

    .line 159
    if-eqz v3, :cond_1

    .line 160
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 269
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    return-void

    .line 165
    :cond_1
    :try_start_2
    invoke-static {v4, v4}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxPrefixStagingDirectoryAccessible(ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v5

    move-object v3, v5

    .line 166
    if-eqz v3, :cond_2

    .line 167
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 269
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void

    .line 172
    :cond_2
    :try_start_3
    invoke-static {v4, v4}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxPrefixDirectoryAccessible(ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v5

    move-object v3, v5

    .line 173
    if-eqz v3, :cond_3

    .line 174
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 269
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void

    .line 178
    :cond_3
    :try_start_4
    const-string v5, "Extracting bootstrap zip to prefix staging directory \"/data/data/com.termux/files/usr-staging\"."

    invoke-static {v2, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v5, 0x1fa0

    new-array v5, v5, [B

    .line 181
    .local v5, "buffer":[B
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v6, "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->loadZipBytes()[B

    move-result-object v7

    .line 184
    .local v7, "zipBytes":[B
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 186
    .local v8, "zipInput":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v10, v9

    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v9, :cond_d

    .line 187
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "SYMLINKS.txt"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_7

    .line 188
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 190
    .local v9, "symlinksReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .local v13, "line":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 191
    const-string v12, "\u2190"

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "parts":[Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 194
    aget-object v14, v12, v11

    .line 195
    .local v14, "oldPath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/com.termux/files/usr-staging/"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v15, v12, v4

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, "newPath":Ljava/lang/String;
    invoke-static {v14, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-static {v15}, Lcom/termux/app/TermuxInstaller;->access$000(Ljava/io/File;)Lcom/termux/shared/errors/Error;

    move-result-object v15

    move-object v3, v15

    .line 199
    if-eqz v3, :cond_4

    .line 200
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 229
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 269
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void

    .line 203
    .end local v11    # "newPath":Ljava/lang/String;
    .end local v12    # "parts":[Ljava/lang/String;
    .end local v14    # "oldPath":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 193
    .restart local v12    # "parts":[Ljava/lang/String;
    :cond_5
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed symlink line: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v5    # "buffer":[B
    .end local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "zipBytes":[B
    .end local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    throw v0

    .line 204
    .end local v9    # "symlinksReader":Ljava/io/BufferedReader;
    .end local v12    # "parts":[Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .restart local v3    # "error":Lcom/termux/shared/errors/Error;
    .restart local v5    # "buffer":[B
    .restart local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "zipBytes":[B
    .restart local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    :cond_6
    goto/16 :goto_0

    .line 205
    :cond_7
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "zipEntryName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v11, "targetFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    .line 209
    .local v12, "isDirectory":Z
    if-eqz v12, :cond_8

    move-object v13, v11

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    :goto_2
    invoke-static {v13}, Lcom/termux/app/TermuxInstaller;->access$000(Ljava/io/File;)Lcom/termux/shared/errors/Error;

    move-result-object v13

    move-object v3, v13

    .line 210
    if-eqz v3, :cond_9

    .line 211
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 229
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 269
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void

    .line 215
    :cond_9
    if-nez v12, :cond_c

    .line 216
    :try_start_9
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 218
    .local v13, "outStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_a
    invoke-virtual {v8, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v14

    move v15, v14

    .local v15, "readBytes":I
    const/4 v4, -0x1

    if-eq v14, v4, :cond_a

    .line 219
    const/4 v4, 0x0

    invoke-virtual {v13, v5, v4, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v4, 0x1

    goto :goto_3

    .line 220
    .end local v15    # "readBytes":I
    :cond_a
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 221
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    const-string v4, "bin/"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "libexec"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "lib/apt/apt-helper"

    .line 222
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "lib/apt/methods"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 224
    :cond_b
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x1c0

    invoke-static {v4, v13}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    .line 216
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_d
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v5    # "buffer":[B
    .end local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "zipBytes":[B
    .end local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    :goto_4
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 227
    .end local v9    # "zipEntryName":Ljava/lang/String;
    .end local v11    # "targetFile":Ljava/io/File;
    .end local v12    # "isDirectory":Z
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "error":Lcom/termux/shared/errors/Error;
    .restart local v5    # "buffer":[B
    .restart local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "zipBytes":[B
    .restart local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    :cond_c
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 229
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_d
    :try_start_e
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    .line 231
    .end local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 233
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 234
    .local v4, "symlink":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v4    # "symlink":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_6

    .line 237
    :cond_e
    const-string v0, "Moving termux prefix staging to prefix directory."

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STAGING_PREFIX_DIR:Ljava/io/File;

    sget-object v4, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 243
    const-string v0, "Bootstrap packages installed successfully."

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$1;->val$extractionProgressDialog:Landroid/app/ProgressDialog;

    iget-object v8, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    new-instance v9, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda1;

    invoke-direct {v9, v2, v4, v8}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 269
    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v5    # "buffer":[B
    .end local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "zipBytes":[B
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_8

    .line 240
    .restart local v3    # "error":Lcom/termux/shared/errors/Error;
    .restart local v5    # "buffer":[B
    .restart local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "zipBytes":[B
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Moving termux prefix staging to prefix directory failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No SYMLINKS.txt encountered"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 184
    .restart local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_11
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 269
    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v5    # "buffer":[B
    .end local v6    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "zipBytes":[B
    .end local v8    # "zipInput":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v0

    goto :goto_9

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v3, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    :goto_8
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    nop

    .line 277
    return-void

    .line 269
    :goto_9
    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v3, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    throw v0
.end method
