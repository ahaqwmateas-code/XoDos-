.class public Lcom/termux/shared/activities/ReportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;,
        Lcom/termux/shared/activities/ReportActivity$ReportActivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

.field public static final ACTIVITY_TEXT_SIZE_LIMIT_IN_BYTES:I = 0xfa000

.field private static final CACHE_DIR_BASENAME:Ljava/lang/String; = "report_activity"

.field private static final CACHE_FILE_BASENAME_PREFIX:Ljava/lang/String; = "report_info_"

.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

.field private static final EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "ReportActivity"

.field public static final REQUEST_GRANT_STORAGE_PERMISSION_FOR_SAVE_FILE:I = 0x3e8


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mReportActivityMarkdownString:Ljava/lang/String;

.field private mReportInfo:Lcom/termux/shared/models/ReportInfo;

.field private mReportInfoFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-class v0, Lcom/termux/shared/activities/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->CLASS_NAME:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_DELETE_REPORT_INFO_OBJECT_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EXTRA_REPORT_INFO_OBJECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EXTRA_REPORT_INFO_OBJECT_FILE_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 50
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDaysInner(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;
    .param p2, "reportInfoFilePath"    # Ljava/lang/String;

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 359
    sget-object v2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    sget-object v2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 364
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 369
    const/high16 v2, 0x30080000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    return-object v0
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfoFilePath"    # Ljava/lang/String;

    .line 375
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 377
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/ReportActivity$ReportActivityBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 384
    return-object v0
.end method

.method private static deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfoFilePath"    # Ljava/lang/String;

    .line 398
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 401
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "reportInfoDirectoryPath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\""

    const-string v3, " serialized object file at path \""

    const-string v4, "ReportActivity"

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/termux/shared/file/FileUtils;->deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 406
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    :cond_1
    goto :goto_0

    .line 410
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not deleting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" since its not under \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 398
    .end local v0    # "reportInfoDirectoryPath":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public static deleteReportInfoFilesOlderThanXDays(Landroid/content/Context;IZ)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "days"    # I
    .param p2, "isSynchronous"    # Z

    .line 431
    if-eqz p2, :cond_0

    .line 432
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDaysInner(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 434
    :cond_0
    new-instance v0, Lcom/termux/shared/activities/ReportActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/activities/ReportActivity$1;-><init>(Landroid/content/Context;I)V

    .line 439
    invoke-virtual {v0}, Lcom/termux/shared/activities/ReportActivity$1;->start()V

    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method private static deleteReportInfoFilesOlderThanXDaysInner(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "days"    # I

    .line 446
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "reportInfoDirectoryPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serialized object files under directory path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" older than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " days"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-class v0, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, v6

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/file/FileUtils;->deleteFilesOlderThanXDays(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;IZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method private generateReportActivityMarkdownString()V
    .locals 13

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "reportString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "reportMarkdownString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 256
    .local v2, "reportMarkdownStringSize":I
    const/4 v3, 0x0

    .line 257
    .local v3, "truncated":Z
    const-string v4, " and will be truncated"

    const-string v5, " is greater than "

    const-string v6, "ReportActivity"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0xfa000

    if-le v2, v9, :cond_1

    .line 258
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v11, v11, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " report string size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v1, v9, v8, v7, v8}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/4 v3, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_0
    const/4 v1, 0x0

    .line 268
    iget-object v10, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v10, v10, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 269
    iget-object v10, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v10, v10, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 272
    .local v10, "reportStringSize":I
    if-le v10, v9, :cond_3

    .line 274
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v12, v12, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " report string total size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/termux/shared/R$string;->msg_report_truncated:I

    invoke-virtual {p0, v5}, Lcom/termux/shared/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9, v8, v7, v7}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    goto :goto_1

    .line 277
    :cond_3
    if-eqz v3, :cond_4

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/termux/shared/R$string;->msg_report_truncated:I

    invoke-virtual {p0, v5}, Lcom/termux/shared/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    .line 283
    :goto_1
    return-void
.end method

.method private static getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "report_activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;

    .line 334
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->getSerializedSize(Ljava/io/Serializable;)J

    move-result-wide v0

    .line 335
    .local v0, "size":J
    const-wide/32 v2, 0x19000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 336
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "reportInfoDirectoryPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "report_info_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "reportInfoFilePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " serialized object size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is greater than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x19000

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and it will be written to file at path \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ReportActivity"

    invoke-static {v6, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, p1}, Lcom/termux/shared/file/FileUtils;->writeSerializableObjectToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/termux/shared/errors/Error;

    move-result-object v5

    .line 340
    .local v5, "error":Lcom/termux/shared/errors/Error;
    if-eqz v5, :cond_0

    .line 341
    invoke-virtual {v5}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {v5}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 343
    new-instance v6, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-direct {v6, v4, v4}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v6

    .line 346
    :cond_0
    new-instance v6, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-static {p0, v4, v3}, Lcom/termux/shared/activities/ReportActivity;->createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 347
    invoke-static {p0, v3}, Lcom/termux/shared/activities/ReportActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 346
    return-object v6

    .line 349
    .end local v2    # "reportInfoDirectoryPath":Ljava/lang/String;
    .end local v3    # "reportInfoFilePath":Ljava/lang/String;
    .end local v5    # "error":Lcom/termux/shared/errors/Error;
    :cond_1
    new-instance v2, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-static {p0, p1, v4}, Lcom/termux/shared/activities/ReportActivity;->createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v2
.end method

.method public static startReportActivity(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;

    .line 310
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object v0

    .line 311
    .local v0, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    iget-object v1, v0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v1, v0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finish()V

    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 118
    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serialized object will be read from file at path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReportActivity"

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 125
    :try_start_0
    const-class v0, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    const-class v4, Lcom/termux/shared/models/ReportInfo;

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/termux/shared/file/FileUtils;->readSerializableObjectFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    move-result-object v0

    .line 126
    .local v0, "result":Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/errors/Error;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/errors/Error;

    invoke-virtual {v3}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/errors/Error;

    invoke-static {v3}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finish()V

    return-void

    .line 131
    :cond_1
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    check-cast v3, Lcom/termux/shared/models/ReportInfo;

    iput-object v3, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v0    # "result":Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure while getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " serialized object from file at path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/ReportInfo;

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 143
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    if-nez v0, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finish()V

    return-void

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 149
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_7

    .line 150
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 153
    :cond_6
    const-string v1, "Termux App Report"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :cond_7
    :goto_2
    sget v1, Lcom/termux/shared/R$id;->recycler_view:I

    invoke-virtual {p0, v1}, Lcom/termux/shared/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {p0}, Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;

    move-result-object v2

    .line 161
    .local v2, "markwon":Lio/noties/markwon/Markwon;
    sget v3, Lcom/termux/shared/R$layout;->markdown_adapter_node_default:I

    invoke-static {v3}, Lio/noties/markwon/recycler/MarkwonAdapter;->builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v3

    const-class v4, Lorg/commonmark/node/FencedCodeBlock;

    sget v5, Lcom/termux/shared/R$layout;->markdown_adapter_node_code_block:I

    sget v6, Lcom/termux/shared/R$id;->code_text_view:I

    .line 162
    invoke-static {v5, v6}, Lio/noties/markwon/recycler/SimpleEntry;->create(II)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->include(Ljava/lang/Class;Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v3

    .line 163
    invoke-interface {v3}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v3

    .line 165
    .local v3, "adapter":Lio/noties/markwon/recycler/MarkwonAdapter;
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->generateReportActivityMarkdownString()V

    .line 169
    iget-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lio/noties/markwon/recycler/MarkwonAdapter;->setMarkdown(Lio/noties/markwon/Markwon;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lio/noties/markwon/recycler/MarkwonAdapter;->notifyDataSetChanged()V

    .line 171
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finishAndRemoveTask()V

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "ReportActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V

    .line 79
    sget v0, Lcom/termux/shared/R$layout;->activity_report:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->setContentView(I)V

    .line 81
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 82
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 87
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    .line 91
    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 93
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->updateUI()V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 194
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 195
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/termux/shared/R$menu;->menu_report:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 198
    sget v1, Lcom/termux/shared/R$id;->menu_item_save_report_to_file:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 199
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 203
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 187
    const-string v0, "ReportActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 100
    const-string v0, "ReportActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->setIntent(Landroid/content/Intent;)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 107
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->updateUI()V

    .line 109
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 215
    .local v0, "id":I
    sget v1, Lcom/termux/shared/R$id;->menu_item_share_report:I

    if-ne v0, v1, :cond_0

    .line 216
    sget v1, Lcom/termux/shared/R$string;->title_report_text:I

    invoke-virtual {p0, v1}, Lcom/termux/shared/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v2}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/termux/shared/interact/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    sget v1, Lcom/termux/shared/R$id;->menu_item_copy_report:I

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/termux/shared/interact/ShareUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    sget v1, Lcom/termux/shared/R$id;->menu_item_save_report_to_file:I

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v3, v1, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v4, v1, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 221
    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v5

    .line 220
    const/4 v6, 0x1

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/termux/shared/interact/ShareUtils;->saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 225
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 230
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 231
    array-length v0, p3

    const-string v1, "ReportActivity"

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "Storage permission granted by user on request."

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v2, v0, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v3, v0, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 235
    invoke-static {v0}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v4

    .line 234
    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/interact/ShareUtils;->saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "Storage permission denied by user on request."

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    :goto_0
    return-void
.end method
