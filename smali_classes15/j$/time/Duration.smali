.class public final Lj$/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lj$/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/Duration$DurationUnits;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/TemporalAmount;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lj$/time/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 139
    new-instance v0, Lj$/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Duration;-><init>(JI)V

    sput-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    .line 147
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lj$/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    .line 151
    nop

    .line 152
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj$/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    .line 151
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-wide p1, p0, Lj$/time/Duration;->seconds:J

    .line 518
    iput p3, p0, Lj$/time/Duration;->nanos:I

    .line 519
    return-void
.end method

.method public static between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;
    .locals 10
    .param p0, "startInclusive"    # Lj$/time/temporal/Temporal;
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;

    .line 477
    :try_start_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v0}, Lj$/time/temporal/Temporal;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 478
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v1}, Lj$/time/temporal/Temporal;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    .line 482
    .local v1, "secs":J
    :try_start_1
    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Lj$/time/temporal/Temporal;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Lj$/time/temporal/Temporal;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5
    :try_end_1
    .catch Lj$/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_2

    sub-long/2addr v3, v5

    .line 483
    .local v3, "nanos":J
    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_0

    cmp-long v9, v3, v7

    if-gez v9, :cond_0

    .line 484
    add-long/2addr v1, v5

    goto :goto_1

    .line 485
    :cond_0
    cmp-long v9, v1, v7

    if-gez v9, :cond_1

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    .line 486
    sub-long/2addr v1, v5

    .line 490
    :cond_1
    :goto_1
    goto :goto_2

    .line 488
    .end local v3    # "nanos":J
    :catch_2
    move-exception v3

    .line 489
    .local v3, "ex2":Lj$/time/DateTimeException;
    const-wide/16 v4, 0x0

    move-wide v3, v4

    .line 491
    .local v3, "nanos":J
    :goto_2
    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v5

    return-object v5
.end method

.method private static create(JI)Lj$/time/Duration;
    .locals 5
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # I

    .line 503
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 504
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    return-object v0

    .line 506
    :cond_0
    new-instance v0, Lj$/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private static create(Ljava/math/BigDecimal;)Lj$/time/Duration;
    .locals 6
    .param p0, "seconds"    # Ljava/math/BigDecimal;

    .line 1007
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 1008
    .local v0, "nanos":Ljava/math/BigInteger;
    sget-object v1, Lj$/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 1009
    .local v1, "divRem":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_0

    .line 1012
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    return-object v2

    .line 1010
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(ZJJJJI)Lj$/time/Duration;
    .locals 4
    .param p0, "negate"    # Z
    .param p1, "daysAsSecs"    # J
    .param p3, "hoursAsSecs"    # J
    .param p5, "minsAsSecs"    # J
    .param p7, "secs"    # J
    .param p9, "nanos"    # I

    .line 446
    invoke-static {p5, p6, p7, p8}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 447
    .local v0, "seconds":J
    if-eqz p0, :cond_0

    .line 448
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/Duration;->negated()Lj$/time/Duration;

    move-result-object v2

    return-object v2

    .line 450
    :cond_0
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public static from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Duration;
    .locals 5
    .param p0, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 333
    const-string v0, "amount"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    .line 335
    .local v0, "duration":Lj$/time/Duration;
    invoke-interface {p0}, Lj$/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/TemporalUnit;

    .line 336
    .local v2, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAmount;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    .line 337
    .end local v2    # "unit":Lj$/time/temporal/TemporalUnit;
    goto :goto_0

    .line 338
    :cond_0
    return-object v0
.end method

.method public static of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 1
    .param p0, "amount"    # J
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 308
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    invoke-virtual {v0, p0, p1, p2}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(J)Lj$/time/Duration;
    .locals 3
    .param p0, "days"    # J

    .line 179
    const-wide/32 v0, 0x15180

    invoke-static {p0, p1, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofHours(J)Lj$/time/Duration;
    .locals 3
    .param p0, "hours"    # J

    .line 194
    const-wide/16 v0, 0xe10

    invoke-static {p0, p1, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMillis(J)Lj$/time/Duration;
    .locals 6
    .param p0, "millis"    # J

    .line 260
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 261
    .local v2, "secs":J
    rem-long v0, p0, v0

    long-to-int v1, v0

    .line 262
    .local v1, "mos":I
    if-gez v1, :cond_0

    .line 263
    add-int/lit16 v1, v1, 0x3e8

    .line 264
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 266
    :cond_0
    const v0, 0xf4240

    mul-int v0, v0, v1

    invoke-static {v2, v3, v0}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMinutes(J)Lj$/time/Duration;
    .locals 3
    .param p0, "minutes"    # J

    .line 209
    const-wide/16 v0, 0x3c

    invoke-static {p0, p1, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanos(J)Lj$/time/Duration;
    .locals 8
    .param p0, "nanos"    # J

    .line 279
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    .line 280
    .local v2, "secs":J
    rem-long v4, p0, v0

    long-to-int v5, v4

    .line 281
    .local v5, "nos":I
    if-gez v5, :cond_0

    .line 282
    int-to-long v6, v5

    add-long/2addr v6, v0

    long-to-int v5, v6

    .line 283
    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 285
    :cond_0
    invoke-static {v2, v3, v5}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(J)Lj$/time/Duration;
    .locals 1
    .param p0, "seconds"    # J

    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(JJ)Lj$/time/Duration;
    .locals 4
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # J

    .line 245
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    .line 246
    .local v2, "secs":J
    invoke-static {p2, p3, v0, v1}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 247
    .local v1, "nos":I
    invoke-static {v2, v3, v1}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/Duration;
    .locals 29
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 387
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lj$/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 389
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 391
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "T"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    const-string v0, "-"

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 393
    .local v5, "negate":Z
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 394
    .local v15, "dayMatch":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 395
    .local v13, "hourMatch":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 396
    .local v14, "minuteMatch":Ljava/lang/String;
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 397
    .local v11, "secondMatch":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 398
    .local v12, "fractionMatch":Ljava/lang/String;
    if-nez v15, :cond_0

    if-nez v13, :cond_0

    if-nez v14, :cond_0

    if-eqz v11, :cond_2

    .line 399
    :cond_0
    const v0, 0x15180

    const-string v6, "days"

    invoke-static {v1, v15, v0, v6}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v16

    .line 400
    .local v16, "daysAsSecs":J
    const/16 v0, 0xe10

    const-string v6, "hours"

    invoke-static {v1, v13, v0, v6}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v18

    .line 401
    .local v18, "hoursAsSecs":J
    const/16 v0, 0x3c

    const-string v6, "minutes"

    invoke-static {v1, v14, v0, v6}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v20

    .line 402
    .local v20, "minsAsSecs":J
    const-string v0, "seconds"

    invoke-static {v1, v11, v4, v0}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v22

    .line 403
    .local v22, "seconds":J
    const-wide/16 v6, 0x0

    cmp-long v0, v22, v6

    if-gez v0, :cond_1

    const/4 v4, -0x1

    :cond_1
    invoke-static {v1, v12, v4}, Lj$/time/Duration;->parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v4

    .line 405
    .local v4, "nanos":I
    move v6, v5

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .end local v11    # "secondMatch":Ljava/lang/String;
    .end local v12    # "fractionMatch":Ljava/lang/String;
    .local v24, "secondMatch":Ljava/lang/String;
    .local v25, "fractionMatch":Ljava/lang/String;
    move-wide/from16 v11, v20

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .end local v13    # "hourMatch":Ljava/lang/String;
    .end local v14    # "minuteMatch":Ljava/lang/String;
    .local v26, "hourMatch":Ljava/lang/String;
    .local v27, "minuteMatch":Ljava/lang/String;
    move-wide/from16 v13, v22

    move-object/from16 v28, v15

    .end local v15    # "dayMatch":Ljava/lang/String;
    .local v28, "dayMatch":Ljava/lang/String;
    move v15, v4

    :try_start_0
    invoke-static/range {v6 .. v15}, Lj$/time/Duration;->create(ZJJJJI)Lj$/time/Duration;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 406
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 407
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v6, Lj$/time/format/DateTimeParseException;

    const-string v7, "Text cannot be parsed to a Duration: overflow"

    invoke-direct {v6, v7, v1, v3}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v0}, Lj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Lj$/time/format/DateTimeParseException;

    throw v3

    .line 412
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    .end local v4    # "nanos":I
    .end local v5    # "negate":Z
    .end local v16    # "daysAsSecs":J
    .end local v18    # "hoursAsSecs":J
    .end local v20    # "minsAsSecs":J
    .end local v22    # "seconds":J
    .end local v24    # "secondMatch":Ljava/lang/String;
    .end local v25    # "fractionMatch":Ljava/lang/String;
    .end local v26    # "hourMatch":Ljava/lang/String;
    .end local v27    # "minuteMatch":Ljava/lang/String;
    .end local v28    # "dayMatch":Ljava/lang/String;
    :cond_2
    new-instance v0, Lj$/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Duration"

    invoke-direct {v0, v4, v1, v3}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .line 434
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v0, v0, p2

    return v0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 441
    .local v1, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Lj$/time/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v0}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v1}, Lj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lj$/time/format/DateTimeParseException;

    throw v0

    .line 435
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    return v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "multiplier"    # I
    .param p3, "errorText"    # Ljava/lang/String;

    .line 417
    if-nez p1, :cond_0

    .line 418
    const-wide/16 v0, 0x0

    return-wide v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 422
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 425
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 426
    .local v1, "val":J
    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 427
    .end local v1    # "val":J
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 428
    .local v1, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Lj$/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text cannot be parsed to a Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v1}, Lj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lj$/time/format/DateTimeParseException;

    throw v0
.end method

.method private plus(JJ)Lj$/time/Duration;
    .locals 6
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .line 816
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 817
    return-object p0

    .line 819
    :cond_0
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 820
    .local v0, "epochSec":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 821
    rem-long/2addr p3, v2

    .line 822
    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    .line 823
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Duration;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1346
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1347
    .local v0, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1348
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1337
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toSeconds()Ljava/math/BigDecimal;
    .locals 4

    .line 996
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lj$/time/Duration;->nanos:I

    int-to-long v1, v1

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1327
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abs()Lj$/time/Duration;
    .locals 1

    .line 1043
    invoke-virtual {p0}, Lj$/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/time/Duration;->negated()Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1073
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1074
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    sget-object v2, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1076
    :cond_0
    iget v0, p0, Lj$/time/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 1077
    iget v0, p0, Lj$/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1079
    :cond_1
    return-object p1
.end method

.method public compareTo(Lj$/time/Duration;)I
    .locals 4
    .param p1, "otherDuration"    # Lj$/time/Duration;

    .line 1207
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    iget-wide v2, p1, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1208
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 1209
    return v0

    .line 1211
    :cond_0
    iget v1, p0, Lj$/time/Duration;->nanos:I

    iget v2, p1, Lj$/time/Duration;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 133
    check-cast p1, Lj$/time/Duration;

    invoke-virtual {p0, p1}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    return p1
.end method

.method public dividedBy(J)Lj$/time/Duration;
    .locals 3
    .param p1, "divisor"    # J

    .line 980
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 983
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 984
    return-object p0

    .line 986
    :cond_0
    invoke-direct {p0}, Lj$/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration;->create(Ljava/math/BigDecimal;)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 981
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherDuration"    # Ljava/lang/Object;

    .line 1225
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1226
    return v0

    .line 1228
    :cond_0
    instance-of v1, p1, Lj$/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1229
    move-object v1, p1

    check-cast v1, Lj$/time/Duration;

    .line 1230
    .local v1, "other":Lj$/time/Duration;
    iget-wide v3, p0, Lj$/time/Duration;->seconds:J

    iget-wide v5, v1, Lj$/time/Duration;->seconds:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget v3, p0, Lj$/time/Duration;->nanos:I

    iget v4, v1, Lj$/time/Duration;->nanos:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1233
    .end local v1    # "other":Lj$/time/Duration;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 536
    sget-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 537
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    return-wide v0

    .line 538
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 539
    iget v0, p0, Lj$/time/Duration;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 541
    :cond_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNano()I
    .locals 1

    .line 633
    iget v0, p0, Lj$/time/Duration;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 615
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    return-wide v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 559
    sget-object v0, Lj$/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1243
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    iget-wide v2, p0, Lj$/time/Duration;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lj$/time/Duration;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isNegative()Z
    .locals 5

    .line 596
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 583
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 861
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/Duration;)Lj$/time/Duration;
    .locals 8
    .param p1, "duration"    # Lj$/time/Duration;

    .line 837
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 838
    .local v0, "secsToSubtract":J
    invoke-virtual {p1}, Lj$/time/Duration;->getNano()I

    move-result v2

    .line 839
    .local v2, "nanosToSubtract":I
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 840
    neg-int v3, v2

    int-to-long v3, v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {p0, v5, v6, v3, v4}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v3

    return-object v3

    .line 842
    :cond_0
    neg-long v3, v0

    neg-int v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method public minusDays(J)Lj$/time/Duration;
    .locals 3
    .param p1, "daysToSubtract"    # J

    .line 878
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusDays(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusDays(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusDays(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusHours(J)Lj$/time/Duration;
    .locals 3
    .param p1, "hoursToSubtract"    # J

    .line 893
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusHours(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusHours(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusHours(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMillis(J)Lj$/time/Duration;
    .locals 3
    .param p1, "millisToSubtract"    # J

    .line 934
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/Duration;
    .locals 3
    .param p1, "minutesToSubtract"    # J

    .line 908
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMinutes(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusMinutes(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMinutes(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusNanos(J)Lj$/time/Duration;
    .locals 3
    .param p1, "nanosToSubtract"    # J

    .line 947
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/Duration;
    .locals 3
    .param p1, "secondsToSubtract"    # J

    .line 921
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public multipliedBy(J)Lj$/time/Duration;
    .locals 3
    .param p1, "multiplicand"    # J

    .line 961
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 962
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    return-object v0

    .line 964
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 965
    return-object p0

    .line 967
    :cond_1
    invoke-direct {p0}, Lj$/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration;->create(Ljava/math/BigDecimal;)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lj$/time/Duration;
    .locals 2

    .line 1028
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->multipliedBy(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 6
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 700
    const-string v0, "unit"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 702
    const-wide/32 v3, 0x15180

    invoke-static {p1, p2, v3, v4}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 704
    :cond_0
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 707
    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 708
    return-object p0

    .line 710
    :cond_1
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_2

    .line 711
    sget-object v0, Lj$/time/Duration$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    iget-wide v0, v0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 715
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 714
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 713
    :pswitch_2
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p0, v2, v3}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v2

    rem-long v0, p1, v0

    mul-long v0, v0, v4

    invoke-virtual {v2, v0, v1}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 712
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 719
    :cond_2
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/Duration;->multipliedBy(J)Lj$/time/Duration;

    move-result-object v0

    .line 720
    .local v0, "duration":Lj$/time/Duration;
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v1

    return-object v1

    .line 705
    .end local v0    # "duration":Lj$/time/Duration;
    :cond_3
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unit must not have an estimated duration"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/Duration;)Lj$/time/Duration;
    .locals 4
    .param p1, "duration"    # Lj$/time/Duration;

    .line 680
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lj$/time/Duration;
    .locals 4
    .param p1, "daysToAdd"    # J

    .line 737
    const-wide/32 v0, 0x15180

    invoke-static {p1, p2, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lj$/time/Duration;
    .locals 4
    .param p1, "hoursToAdd"    # J

    .line 750
    const-wide/16 v0, 0xe10

    invoke-static {p1, p2, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Lj$/time/Duration;
    .locals 6
    .param p1, "millisToAdd"    # J

    .line 789
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/Duration;
    .locals 4
    .param p1, "minutesToAdd"    # J

    .line 763
    const-wide/16 v0, 0x3c

    invoke-static {p1, p2, v0, v1}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lj$/time/Duration;
    .locals 2
    .param p1, "nanosToAdd"    # J

    .line 802
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/Duration;
    .locals 2
    .param p1, "secondsToAdd"    # J

    .line 776
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1108
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1109
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    sget-object v2, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1111
    :cond_0
    iget v0, p0, Lj$/time/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 1112
    iget v0, p0, Lj$/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1114
    :cond_1
    return-object p1
.end method

.method public toDays()J
    .locals 4

    .line 1130
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHours()J
    .locals 4

    .line 1144
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toMillis()J
    .locals 4

    .line 1175
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 1176
    .local v0, "millis":J
    iget v2, p0, Lj$/time/Duration;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 1177
    return-wide v0
.end method

.method public toMinutes()J
    .locals 4

    .line 1158
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toNanos()J
    .locals 4

    .line 1190
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 1191
    .local v0, "totalNanos":J
    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 1192
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1271
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    if-ne p0, v0, :cond_0

    .line 1272
    const-string v0, "PT0S"

    return-object v0

    .line 1274
    :cond_0
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    .line 1275
    .local v0, "hours":J
    iget-wide v4, p0, Lj$/time/Duration;->seconds:J

    rem-long/2addr v4, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v4, v2

    long-to-int v5, v4

    .line 1276
    .local v5, "minutes":I
    iget-wide v6, p0, Lj$/time/Duration;->seconds:J

    rem-long/2addr v6, v2

    long-to-int v2, v6

    .line 1277
    .local v2, "secs":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1278
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v4, "PT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 1280
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x48

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1282
    :cond_1
    if-eqz v5, :cond_2

    .line 1283
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x4d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    :cond_2
    if-nez v2, :cond_3

    iget v4, p0, Lj$/time/Duration;->nanos:I

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_3

    .line 1286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1288
    :cond_3
    if-gez v2, :cond_5

    iget v4, p0, Lj$/time/Duration;->nanos:I

    if-lez v4, :cond_5

    .line 1289
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 1290
    const-string v4, "-0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1292
    :cond_4
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1295
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1297
    :goto_0
    iget v4, p0, Lj$/time/Duration;->nanos:I

    if-lez v4, :cond_8

    .line 1298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1299
    .local v4, "pos":I
    if-gez v2, :cond_6

    .line 1300
    iget v6, p0, Lj$/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x77359400

    sub-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1302
    :cond_6
    iget v6, p0, Lj$/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1304
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_7

    .line 1305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 1307
    :cond_7
    const/16 v6, 0x2e

    invoke-virtual {v3, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1309
    .end local v4    # "pos":I
    :cond_8
    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public withNanos(I)Lj$/time/Duration;
    .locals 3
    .param p1, "nanoOfSecond"    # I

    .line 665
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    .line 666
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public withSeconds(J)Lj$/time/Duration;
    .locals 1
    .param p1, "seconds"    # J

    .line 649
    iget v0, p0, Lj$/time/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1341
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1342
    iget v0, p0, Lj$/time/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1343
    return-void
.end method
