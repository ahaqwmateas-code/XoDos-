.class public Lcom/termux/shared/models/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addReportInfoHeaderToMarkdown:Z

.field public reportSaveFileLabel:Ljava/lang/String;

.field public reportSaveFilePath:Ljava/lang/String;

.field public reportString:Ljava/lang/String;

.field public reportStringPrefix:Ljava/lang/String;

.field public reportStringSuffix:Ljava/lang/String;

.field public final reportTimestamp:Ljava/lang/String;

.field public final reportTitle:Ljava/lang/String;

.field public final sender:Ljava/lang/String;

.field public final userAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userAction"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "reportTitle"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    .line 39
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->userAction:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/termux/shared/models/ReportInfo;->sender:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;

    .line 81
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "## Report Info\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "User Action"

    iget-object v4, p0, Lcom/termux/shared/models/ReportInfo;->userAction:Ljava/lang/String;

    const-string v5, "-"

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Sender"

    iget-object v4, p0, Lcom/termux/shared/models/ReportInfo;->sender:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Report Timestamp"

    iget-object v3, p0, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\n##\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/models/ReportInfo;->reportString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setAddReportInfoHeaderToMarkdown(Z)V
    .locals 0
    .param p1, "addReportInfoHeaderToMarkdown"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    .line 59
    return-void
.end method

.method public setReportSaveFileLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportSaveFileLabel"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setReportSaveFileLabelAndPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reportSaveFileLabel"    # Ljava/lang/String;
    .param p2, "reportSaveFilePath"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFileLabel(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFilePath(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setReportSaveFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportSaveFilePath"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setReportString(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportString"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportString:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setReportStringPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportStringPrefix"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setReportStringSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportStringSuffix"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    .line 55
    return-void
.end method
