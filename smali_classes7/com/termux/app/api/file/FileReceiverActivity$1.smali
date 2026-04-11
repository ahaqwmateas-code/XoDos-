.class Lcom/termux/app/api/file/FileReceiverActivity$1;
.super Ljava/lang/Thread;
.source "FileReceiverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/api/file/FileReceiverActivity;->updateFileReceiverActivityComponentsState(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/termux/app/api/file/FileReceiverActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 260
    move-object/from16 v0, p0

    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    .line 265
    .local v1, "properties":Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->isFileShareReceiverDisabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 266
    .local v2, "state":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting com.termux.app.api.file.FileShareReceiverActivity component state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "FileReceiverActivity"

    invoke-static {v10, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, v0, Lcom/termux/app/api/file/FileReceiverActivity$1;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "com.termux"

    const-string v5, "com.termux.app.api.file.FileShareReceiverActivity"

    const/4 v7, 0x0

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/termux/shared/android/PackageUtils;->setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "errmsg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 271
    invoke-static {v10, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->isFileViewReceiverDisabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting com.termux.app.api.file.FileViewReceiverActivity component state to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v11, v0, Lcom/termux/app/api/file/FileReceiverActivity$1;->val$context:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v12, "com.termux"

    const-string v13, "com.termux.app.api.file.FileViewReceiverActivity"

    const/4 v15, 0x0

    move v14, v2

    invoke-static/range {v11 .. v17}, Lcom/termux/shared/android/PackageUtils;->setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_1

    .line 279
    invoke-static {v10, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    return-void
.end method
