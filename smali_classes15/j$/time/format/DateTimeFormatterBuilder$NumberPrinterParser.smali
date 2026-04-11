.class Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field static final EXCEED_POINTS:[J


# instance fields
.field final field:Lj$/time/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field private final signStyle:Lj$/time/format/SignStyle;

.field final subsequentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2479
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lj$/time/format/SignStyle;

    .line 2507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2509
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    .line 2510
    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2511
    iput p3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2512
    iput-object p4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    .line 2513
    const/4 v0, 0x0

    iput v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2514
    return-void
.end method

.method protected constructor <init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V
    .locals 0
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lj$/time/format/SignStyle;
    .param p5, "subsequentWidth"    # I

    .line 2526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2528
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    .line 2529
    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2530
    iput p3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2531
    iput-object p4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    .line 2532
    iput p5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2533
    return-void
.end method

.method static synthetic access$000(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/SignStyle;
    .locals 1
    .param p0, "x0"    # Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 2474
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2559
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 2560
    .local v0, "valueLong":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 2561
    const/4 v1, 0x0

    return v1

    .line 2563
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Lj$/time/format/DateTimePrintContext;J)J

    move-result-wide v1

    .line 2564
    .local v1, "value":J
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v3

    .line 2565
    .local v3, "decimalStyle":Lj$/time/format/DecimalStyle;
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v1, v4

    if-nez v6, :cond_1

    const-string v4, "9223372036854775808"

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2566
    .local v4, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v7, " cannot be printed as the value "

    const-string v8, "Field "

    if-gt v5, v6, :cond_5

    .line 2571
    invoke-virtual {v3, v4}, Lj$/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2573
    const-wide/16 v5, 0x0

    cmp-long v9, v1, v5

    if-ltz v9, :cond_3

    .line 2574
    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual {v6}, Lj$/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2581
    :pswitch_0
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2576
    :pswitch_1
    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_2

    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget-wide v6, v5, v6

    cmp-long v5, v1, v6

    if-ltz v5, :cond_2

    .line 2577
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2582
    :cond_2
    :goto_1
    goto :goto_2

    .line 2585
    :cond_3
    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual {v6}, Lj$/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 2592
    :pswitch_2
    new-instance v5, Lj$/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be negative according to the SignStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2589
    :pswitch_3
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getNegativeSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2590
    nop

    .line 2597
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    .line 2598
    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2597
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2600
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    const/4 v5, 0x1

    return v5

    .line 2567
    :cond_5
    new-instance v5, Lj$/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeds the maximum print width of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method getValue(Lj$/time/format/DateTimePrintContext;J)J
    .locals 0
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 2612
    return-wide p2
.end method

.method isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z
    .locals 2
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 2623
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 21
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2629
    move-object/from16 v6, p0

    move/from16 v0, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 2630
    .local v7, "length":I
    if-ne v0, v7, :cond_0

    .line 2631
    not-int v1, v0

    return v1

    .line 2633
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2634
    .local v8, "sign":C
    const/4 v1, 0x0

    .line 2635
    .local v1, "negative":Z
    const/4 v2, 0x0

    .line 2636
    .local v2, "positive":Z
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v8, v3, :cond_3

    .line 2637
    iget-object v3, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v3, v5, v9, v10}, Lj$/time/format/SignStyle;->parse(ZZZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2638
    not-int v3, v0

    return v3

    .line 2640
    :cond_2
    const/4 v2, 0x1

    .line 2641
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v10, v1

    move v11, v2

    .end local p3    # "position":I
    .local v0, "position":I
    goto :goto_2

    .line 2642
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/format/DecimalStyle;->getNegativeSign()C

    move-result v3

    if-ne v8, v3, :cond_6

    .line 2643
    iget-object v3, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v3, v4, v9, v10}, Lj$/time/format/SignStyle;->parse(ZZZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2644
    not-int v3, v0

    return v3

    .line 2646
    :cond_5
    const/4 v1, 0x1

    .line 2647
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v10, v1

    move v11, v2

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto :goto_2

    .line 2649
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_6
    iget-object v3, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v9, Lj$/time/format/SignStyle;->ALWAYS:Lj$/time/format/SignStyle;

    if-ne v3, v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2650
    not-int v3, v0

    return v3

    .line 2653
    :cond_7
    move v9, v0

    move v10, v1

    move v11, v2

    .end local v1    # "negative":Z
    .end local v2    # "positive":Z
    .end local p3    # "position":I
    .local v9, "position":I
    .local v10, "negative":Z
    .local v11, "positive":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget v5, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    :cond_9
    move v12, v5

    .line 2654
    .local v12, "effMinWidth":I
    add-int v13, v9, v12

    .line 2655
    .local v13, "minEndPos":I
    if-le v13, v7, :cond_a

    .line 2656
    not-int v0, v9

    return v0

    .line 2658
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    const/16 v0, 0x9

    goto :goto_4

    :cond_c
    :goto_3
    iget v0, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_4
    iget v1, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2659
    .local v0, "effMaxWidth":I
    const-wide/16 v1, 0x0

    .line 2660
    .local v1, "total":J
    const/4 v3, 0x0

    .line 2661
    .local v3, "totalBig":Ljava/math/BigInteger;
    move v4, v9

    .line 2662
    .local v4, "pos":I
    const/4 v5, 0x0

    move v14, v0

    .end local v0    # "effMaxWidth":I
    .local v5, "pass":I
    .local v14, "effMaxWidth":I
    :goto_5
    const/4 v0, 0x2

    if-ge v5, v0, :cond_13

    .line 2663
    add-int v0, v4, v14

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2664
    .local v0, "maxEndPos":I
    :goto_6
    if-ge v4, v0, :cond_11

    .line 2665
    add-int/lit8 v15, v4, 0x1

    move/from16 v16, v7

    move-object/from16 v7, p2

    .end local v4    # "pos":I
    .end local v7    # "length":I
    .local v15, "pos":I
    .local v16, "length":I
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2666
    .local v4, "ch":C
    move/from16 p3, v0

    .end local v0    # "maxEndPos":I
    .local p3, "maxEndPos":I
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lj$/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v0

    .line 2667
    .local v0, "digit":I
    if-gez v0, :cond_e

    .line 2668
    add-int/lit8 v15, v15, -0x1

    .line 2669
    if-ge v15, v13, :cond_d

    .line 2670
    move/from16 v17, v4

    .end local v4    # "ch":C
    .local v17, "ch":C
    not-int v4, v9

    return v4

    .line 2669
    .end local v17    # "ch":C
    .restart local v4    # "ch":C
    :cond_d
    move/from16 v17, v4

    .end local v4    # "ch":C
    .restart local v17    # "ch":C
    move-wide/from16 v19, v1

    move/from16 v18, v8

    move v4, v15

    goto :goto_8

    .line 2674
    .end local v17    # "ch":C
    .restart local v4    # "ch":C
    :cond_e
    move/from16 v17, v4

    .end local v4    # "ch":C
    .restart local v17    # "ch":C
    sub-int v4, v15, v9

    const/16 v7, 0x12

    if-le v4, v7, :cond_10

    .line 2675
    if-nez v3, :cond_f

    .line 2676
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 2678
    :cond_f
    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move/from16 v18, v8

    .end local v8    # "sign":C
    .local v18, "sign":C
    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_7

    .line 2680
    .end local v18    # "sign":C
    .restart local v8    # "sign":C
    :cond_10
    move/from16 v18, v8

    .end local v8    # "sign":C
    .restart local v18    # "sign":C
    const-wide/16 v7, 0xa

    mul-long v7, v7, v1

    move-wide/from16 v19, v1

    .end local v1    # "total":J
    .local v19, "total":J
    int-to-long v1, v0

    add-long/2addr v1, v7

    .line 2682
    .end local v0    # "digit":I
    .end local v17    # "ch":C
    .end local v19    # "total":J
    .restart local v1    # "total":J
    :goto_7
    move/from16 v0, p3

    move v4, v15

    move/from16 v7, v16

    move/from16 v8, v18

    goto :goto_6

    .line 2664
    .end local v15    # "pos":I
    .end local v16    # "length":I
    .end local v18    # "sign":C
    .end local p3    # "maxEndPos":I
    .local v0, "maxEndPos":I
    .local v4, "pos":I
    .restart local v7    # "length":I
    .restart local v8    # "sign":C
    :cond_11
    move/from16 p3, v0

    move-wide/from16 v19, v1

    move/from16 v16, v7

    move/from16 v18, v8

    .line 2683
    .end local v0    # "maxEndPos":I
    .end local v1    # "total":J
    .end local v7    # "length":I
    .end local v8    # "sign":C
    .restart local v16    # "length":I
    .restart local v18    # "sign":C
    .restart local v19    # "total":J
    .restart local p3    # "maxEndPos":I
    :goto_8
    iget v0, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_12

    if-nez v5, :cond_12

    .line 2685
    sub-int v0, v4, v9

    .line 2686
    .local v0, "parseLen":I
    iget v1, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    sub-int v1, v0, v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2687
    move v4, v9

    .line 2688
    const-wide/16 v1, 0x0

    .line 2689
    .end local v19    # "total":J
    .restart local v1    # "total":J
    const/4 v3, 0x0

    .line 2662
    .end local v0    # "parseLen":I
    .end local p3    # "maxEndPos":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v16

    move/from16 v8, v18

    goto/16 :goto_5

    .line 2694
    .end local v1    # "total":J
    .end local v5    # "pass":I
    .restart local v19    # "total":J
    :cond_12
    move v7, v4

    move-wide/from16 v1, v19

    goto :goto_9

    .line 2662
    .end local v16    # "length":I
    .end local v18    # "sign":C
    .end local v19    # "total":J
    .restart local v1    # "total":J
    .restart local v5    # "pass":I
    .restart local v7    # "length":I
    .restart local v8    # "sign":C
    :cond_13
    move/from16 v16, v7

    move/from16 v18, v8

    .end local v7    # "length":I
    .end local v8    # "sign":C
    .restart local v16    # "length":I
    .restart local v18    # "sign":C
    move v7, v4

    .line 2694
    .end local v4    # "pos":I
    .end local v5    # "pass":I
    .local v7, "pos":I
    :goto_9
    if-eqz v10, :cond_17

    .line 2695
    if-eqz v3, :cond_15

    .line 2696
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2697
    add-int/lit8 v0, v9, -0x1

    not-int v0, v0

    return v0

    .line 2699
    :cond_14
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    move-wide/from16 v19, v1

    move-object v8, v3

    goto :goto_a

    .line 2701
    :cond_15
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-nez v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2702
    add-int/lit8 v0, v9, -0x1

    not-int v0, v0

    return v0

    .line 2704
    :cond_16
    neg-long v1, v1

    move-wide/from16 v19, v1

    move-object v8, v3

    goto :goto_a

    .line 2706
    :cond_17
    iget-object v0, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v4, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    if-ne v0, v4, :cond_19

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2707
    sub-int v0, v7, v9

    .line 2708
    .restart local v0    # "parseLen":I
    if-eqz v11, :cond_18

    .line 2709
    iget v4, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-gt v0, v4, :cond_19

    .line 2710
    add-int/lit8 v4, v9, -0x1

    not-int v4, v4

    return v4

    .line 2713
    :cond_18
    iget v4, v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-le v0, v4, :cond_19

    .line 2714
    not-int v4, v9

    return v4

    .line 2718
    .end local v0    # "parseLen":I
    :cond_19
    move-wide/from16 v19, v1

    move-object v8, v3

    .end local v1    # "total":J
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .local v8, "totalBig":Ljava/math/BigInteger;
    .restart local v19    # "total":J
    :goto_a
    if-eqz v8, :cond_1b

    .line 2719
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_1a

    .line 2721
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 2722
    add-int/lit8 v7, v7, -0x1

    .line 2724
    :cond_1a
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Lj$/time/format/DateTimeParseContext;JII)I

    move-result v0

    return v0

    .line 2726
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Lj$/time/format/DateTimeParseContext;JII)I

    move-result v0

    return v0
.end method

.method setValue(Lj$/time/format/DateTimeParseContext;JII)I
    .locals 6
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 2739
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2744
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, "Value("

    if-ne v0, v1, :cond_0

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    if-ne v0, v1, :cond_0

    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2747
    :cond_0
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v4, ","

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    if-ne v0, v1, :cond_1

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2750
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 8

    .line 2541
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2542
    return-object p0

    .line 2544
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    return-object v0
.end method

.method withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 7
    .param p1, "subsequentWidth"    # I

    .line 2554
    new-instance v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lj$/time/format/SignStyle;

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    return-object v6
.end method
