.class public Lcom/termux/shared/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static CURRENT_LOG_LEVEL:I = 0x0

.field public static final DEFAULT_LOG_LEVEL:I = 0x1

.field private static DEFAULT_LOG_TAG:Ljava/lang/String; = null

.field public static final LOGGER_ENTRY_MAX_PAYLOAD:I = 0xfe4

.field public static final LOGGER_ENTRY_MAX_SAFE_PAYLOAD:I = 0xfa0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_NORMAL:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x0

.field public static final LOG_LEVEL_VERBOSE:I = 0x3

.field public static final MAX_LOG_LEVEL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "Logger"

    sput-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultLogTag()Ljava/lang/String;
    .locals 1

    .line 447
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getFullTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 482
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    return-object p0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 460
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevel"    # I
    .param p2, "addDefaultTag"    # Z

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 434
    sget v0, Lcom/termux/shared/R$string;->log_level_unknown:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/termux/shared/R$string;->log_level_verbose:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 432
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/termux/shared/R$string;->log_level_debug:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 431
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_2
    sget v0, Lcom/termux/shared/R$string;->log_level_normal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_3
    sget v0, Lcom/termux/shared/R$string;->log_level_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0    # "logLabel":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (default)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevels"    # [Ljava/lang/CharSequence;
    .param p2, "addDefaultTag"    # Z

    .line 416
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 420
    .local v0, "logLevelLabels":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 421
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, p2}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getLogLevelsArray()[Ljava/lang/CharSequence;
    .locals 3

    .line 407
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 408
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 409
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 410
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 411
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 407
    return-object v0
.end method

.method public static getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 285
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 286
    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :cond_1
    if-nez p1, :cond_2

    .line 290
    return-object p0

    .line 292
    :cond_2
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 296
    .local p1, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    return-object v0

    .line 298
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 303
    :cond_3
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "def"    # Ljava/lang/String;

    .line 390
    if-eqz p1, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "def"    # Ljava/lang/String;

    .line 383
    if-eqz p1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 309
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, "stackTraceString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 315
    .local v1, "errors":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 316
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 318
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 319
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1    # "errors":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "stackTraceStringArray"    # [Ljava/lang/String;

    .line 363
    if-nez p0, :cond_0

    const-string p0, "StackTraces"

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "stackTracesString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 370
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 371
    const-string v2, "\n\n\n#### Stacktrace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :cond_2
    const-string v2, "\n\n```\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n```"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const-string v1, "\n\n`-`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_4
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "stackTraceStringArray"    # [Ljava/lang/String;

    .line 345
    if-nez p0, :cond_0

    const-string p0, "StackTraces:"

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "stackTracesString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 352
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 353
    const-string v2, "\n\nStacktrace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    :cond_2
    const-string v2, "\n```\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 330
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 334
    .local p0, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 335
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 336
    .local v0, "stackTraceStringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 337
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static isLogLevelValid(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "logLevel"    # Ljava/lang/Integer;

    .line 489
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastText"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z

    .line 401
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x3

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 248
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 249
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 252
    :cond_0
    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x3

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x6

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 235
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 236
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p0, p2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x6

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static logErrorPrivate(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 129
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 130
    const/4 v0, 0x6

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public static logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 124
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 125
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static logErrorPrivateExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 139
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 140
    const/4 v0, 0x6

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public static logErrorPrivateExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 134
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 135
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 70
    if-nez p2, :cond_0

    return-void

    .line 74
    :cond_0
    const-string v0, ""

    .line 77
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int v1, v1, 0xfdc

    add-int/lit8 v1, v1, -0x4

    .line 79
    .local v1, "maxEntrySize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "messagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 83
    move v3, v1

    .line 84
    .local v3, "cutOffIndex":I
    const/16 v4, 0xa

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 85
    .local v4, "nextNewlineIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 86
    add-int/lit8 v3, v4, 0x1

    .line 88
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 91
    .end local v3    # "cutOffIndex":I
    .end local v4    # "nextNewlineIndex":I
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    nop

    .line 96
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x4

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static logInfoAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logInfoAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static logInfoAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 222
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 223
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {p0, p2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public static logInfoExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x4

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static logInfoExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "logPriority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_0

    .line 58
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_1

    .line 60
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_2

    .line 62
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v2, v0, :cond_3

    .line 64
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_3
    if-ne p0, v0, :cond_4

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_4

    .line 66
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_4
    :goto_0
    return-void
.end method

.method public static logStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 269
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method

.method public static logStackTrace(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 273
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 261
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 265
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    return-void
.end method

.method public static logStackTracesWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x2

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x2

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static logVerboseForce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 216
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x5

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static logWarnExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x5

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static logWarnExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setDefaultLogTag(Ljava/lang/String;)V
    .locals 2
    .param p0, "defaultLogTag"    # Ljava/lang/String;

    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sput-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public static setLogLevel(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevel"    # I

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 465
    sput p1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    goto :goto_0

    .line 467
    :cond_0
    sput v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    .line 469
    :goto_0
    if-eqz p0, :cond_1

    .line 470
    sget v0, Lcom/termux/shared/R$string;->log_level_value:I

    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 472
    :cond_1
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z
    .locals 4
    .param p0, "customLogLevel"    # Ljava/lang/Integer;

    .line 495
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 496
    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x3

    if-nez p0, :cond_2

    sget v3, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 497
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    return v1

    .line 498
    :cond_3
    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 499
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v2, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastText"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z

    .line 399
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/termux/shared/logger/Logger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/shared/logger/Logger$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void

    .line 399
    :cond_1
    :goto_0
    return-void
.end method
