.class final Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocalizedOffsetIdPrinterParser"
.end annotation


# instance fields
.field private final style:Lj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Lj$/time/format/TextStyle;)V
    .locals 0
    .param p1, "style"    # Lj$/time/format/TextStyle;

    .line 3482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3483
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Lj$/time/format/TextStyle;

    .line 3484
    return-void
.end method

.method private static appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # I

    .line 3487
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3487
    return-object v0
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 9
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3493
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3494
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 3495
    const/4 v1, 0x0

    return v1

    .line 3497
    :cond_0
    const-string v1, "GMT"

    .line 3498
    .local v1, "gmtText":Ljava/lang/String;
    nop

    .line 3499
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    .line 3502
    .local v2, "totalSecs":I
    if-eqz v2, :cond_5

    .line 3503
    div-int/lit16 v3, v2, 0xe10

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3504
    .local v3, "absHours":I
    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3505
    .local v4, "absMinutes":I
    rem-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3506
    .local v5, "absSeconds":I
    if-gez v2, :cond_1

    const-string v6, "-"

    goto :goto_0

    :cond_1
    const-string v6, "+"

    :goto_0
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Lj$/time/format/TextStyle;

    sget-object v7, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    const/16 v8, 0x3a

    if-ne v6, v7, :cond_2

    .line 3508
    invoke-static {p2, v3}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3509
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3510
    invoke-static {p2, v4}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3511
    if-eqz v5, :cond_5

    .line 3512
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3513
    invoke-static {p2, v5}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3516
    :cond_2
    const/16 v6, 0xa

    if-lt v3, v6, :cond_3

    .line 3517
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3519
    :cond_3
    rem-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3520
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 3521
    :cond_4
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3522
    invoke-static {p2, v4}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3523
    if-eqz v5, :cond_5

    .line 3524
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3525
    invoke-static {p2, v5}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3530
    .end local v3    # "absHours":I
    .end local v4    # "absMinutes":I
    .end local v5    # "absSeconds":I
    :cond_5
    :goto_1
    const/4 v3, 0x1

    return v3
.end method

.method getDigit(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .line 3534
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3535
    .local v0, "c":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 3538
    :cond_0
    add-int/lit8 v1, v0, -0x30

    return v1

    .line 3536
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 19
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3543
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p3

    .line 3544
    .local v9, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v10, v9, v1

    .line 3545
    .local v10, "end":I
    const-string v11, "GMT"

    .line 3546
    .local v11, "gmtText":Ljava/lang/String;
    nop

    .line 3547
    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v9

    move-object v4, v11

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3548
    not-int v1, v8

    return v1

    .line 3550
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v9, v1

    .line 3553
    const/4 v12, 0x0

    .line 3554
    .local v12, "negative":I
    if-ne v9, v10, :cond_1

    .line 3555
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3557
    :cond_1
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 3558
    .local v13, "sign":C
    const/16 v1, 0x2b

    if-ne v13, v1, :cond_2

    .line 3559
    const/4 v1, 0x1

    move v12, v1

    .end local v12    # "negative":I
    .local v1, "negative":I
    goto :goto_0

    .line 3560
    .end local v1    # "negative":I
    .restart local v12    # "negative":I
    :cond_2
    const/16 v1, 0x2d

    if-ne v13, v1, :cond_e

    .line 3561
    const/4 v1, -0x1

    move v12, v1

    .line 3565
    :goto_0
    add-int/lit8 v9, v9, 0x1

    .line 3566
    const/4 v1, 0x0

    .line 3567
    .local v1, "h":I
    const/4 v2, 0x0

    .line 3568
    .local v2, "m":I
    const/4 v3, 0x0

    .line 3569
    .local v3, "s":I
    iget-object v4, v0, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Lj$/time/format/TextStyle;

    sget-object v5, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    const/16 v6, 0x3a

    if-ne v4, v5, :cond_9

    .line 3570
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "pos":I
    .local v4, "pos":I
    invoke-virtual {v0, v7, v9}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 3571
    .local v5, "h1":I
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "pos":I
    .restart local v9    # "pos":I
    invoke-virtual {v0, v7, v4}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 3572
    .local v4, "h2":I
    if-ltz v5, :cond_8

    if-ltz v4, :cond_8

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "pos":I
    .local v14, "pos":I
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_3

    move v9, v14

    goto :goto_3

    .line 3575
    :cond_3
    mul-int/lit8 v9, v5, 0xa

    add-int/2addr v9, v4

    .line 3576
    .end local v1    # "h":I
    .local v9, "h":I
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "pos":I
    .local v1, "pos":I
    invoke-virtual {v0, v7, v14}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3577
    .local v14, "m1":I
    add-int/lit8 v15, v1, 0x1

    .end local v1    # "pos":I
    .local v15, "pos":I
    invoke-virtual {v0, v7, v1}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3578
    .local v1, "m2":I
    if-ltz v14, :cond_7

    if-gez v1, :cond_4

    move/from16 v17, v1

    goto :goto_2

    .line 3581
    :cond_4
    mul-int/lit8 v16, v14, 0xa

    add-int v2, v16, v1

    .line 3582
    add-int/lit8 v6, v15, 0x2

    if-ge v6, v10, :cond_5

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move/from16 v17, v1

    const/16 v1, 0x3a

    .end local v1    # "m2":I
    .local v17, "m2":I
    if-ne v6, v1, :cond_6

    .line 3583
    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v0, v7, v1}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3584
    .local v1, "s1":I
    add-int/lit8 v6, v15, 0x2

    invoke-virtual {v0, v7, v6}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 3585
    .local v6, "s2":I
    if-ltz v1, :cond_6

    if-ltz v6, :cond_6

    .line 3586
    mul-int/lit8 v16, v1, 0xa

    add-int v3, v16, v6

    .line 3587
    add-int/lit8 v15, v15, 0x3

    goto :goto_1

    .line 3582
    .end local v6    # "s2":I
    .end local v17    # "m2":I
    .local v1, "m2":I
    :cond_5
    move/from16 v17, v1

    .line 3590
    .end local v1    # "m2":I
    .end local v4    # "h2":I
    .end local v5    # "h1":I
    .end local v14    # "m1":I
    :cond_6
    :goto_1
    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    goto/16 :goto_4

    .line 3578
    .restart local v1    # "m2":I
    .restart local v4    # "h2":I
    .restart local v5    # "h1":I
    .restart local v14    # "m1":I
    :cond_7
    move/from16 v17, v1

    .line 3579
    .end local v1    # "m2":I
    .restart local v17    # "m2":I
    :goto_2
    not-int v1, v8

    return v1

    .line 3573
    .end local v14    # "m1":I
    .end local v15    # "pos":I
    .end local v17    # "m2":I
    .local v1, "h":I
    .local v9, "pos":I
    :cond_8
    :goto_3
    not-int v6, v8

    return v6

    .line 3591
    .end local v4    # "h2":I
    .end local v5    # "h1":I
    :cond_9
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "pos":I
    .restart local v15    # "pos":I
    invoke-virtual {v0, v7, v9}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 3592
    .end local v1    # "h":I
    .local v9, "h":I
    if-gez v9, :cond_a

    .line 3593
    not-int v1, v8

    return v1

    .line 3595
    :cond_a
    if-ge v15, v10, :cond_d

    .line 3596
    invoke-virtual {v0, v7, v15}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3597
    .local v1, "h2":I
    if-ltz v1, :cond_b

    .line 3598
    mul-int/lit8 v4, v9, 0xa

    add-int/2addr v4, v1

    .line 3599
    .end local v9    # "h":I
    .local v4, "h":I
    add-int/lit8 v15, v15, 0x1

    move v9, v4

    .line 3601
    .end local v4    # "h":I
    .restart local v9    # "h":I
    :cond_b
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v10, :cond_c

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_c

    .line 3602
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v10, :cond_c

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_c

    .line 3603
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v0, v7, v4}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 3604
    .local v4, "m1":I
    add-int/lit8 v5, v15, 0x2

    invoke-virtual {v0, v7, v5}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 3605
    .local v5, "m2":I
    if-ltz v4, :cond_c

    if-ltz v5, :cond_c

    .line 3606
    mul-int/lit8 v6, v4, 0xa

    add-int v2, v6, v5

    .line 3607
    add-int/lit8 v15, v15, 0x3

    .line 3608
    add-int/lit8 v6, v15, 0x2

    if-ge v6, v10, :cond_c

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v14, 0x3a

    if-ne v6, v14, :cond_c

    .line 3609
    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v0, v7, v6}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 3610
    .local v6, "s1":I
    add-int/lit8 v14, v15, 0x2

    invoke-virtual {v0, v7, v14}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3611
    .local v14, "s2":I
    if-ltz v6, :cond_c

    if-ltz v14, :cond_c

    .line 3612
    mul-int/lit8 v16, v6, 0xa

    add-int v3, v16, v14

    .line 3613
    add-int/lit8 v15, v15, 0x3

    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    goto :goto_4

    .line 3621
    .end local v1    # "h2":I
    .end local v4    # "m1":I
    .end local v5    # "m2":I
    .end local v6    # "s1":I
    .end local v14    # "s2":I
    :cond_c
    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    goto :goto_4

    .line 3595
    :cond_d
    move v14, v3

    move/from16 v16, v15

    move v15, v9

    move v9, v2

    .line 3621
    .end local v2    # "m":I
    .end local v3    # "s":I
    .local v9, "m":I
    .local v14, "s":I
    .local v15, "h":I
    .local v16, "pos":I
    :goto_4
    int-to-long v1, v12

    int-to-long v3, v15

    const-wide/16 v5, 0xe10

    mul-long v3, v3, v5

    int-to-long v5, v9

    const-wide/16 v17, 0x3c

    mul-long v5, v5, v17

    add-long/2addr v3, v5

    int-to-long v5, v14

    add-long/2addr v3, v5

    mul-long v17, v1, v3

    .line 3622
    .local v17, "offsetSecs":J
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    move-object/from16 v1, p1

    move-wide/from16 v3, v17

    move/from16 v5, p3

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3563
    .end local v14    # "s":I
    .end local v15    # "h":I
    .end local v16    # "pos":I
    .end local v17    # "offsetSecs":J
    .local v9, "pos":I
    :cond_e
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalizedOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Lj$/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
