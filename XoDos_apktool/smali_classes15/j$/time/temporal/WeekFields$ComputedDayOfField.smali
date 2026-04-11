.class Lj$/time/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Lj$/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/temporal/WeekFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputedDayOfField"
.end annotation


# static fields
.field private static final DAY_OF_WEEK_RANGE:Lj$/time/temporal/ValueRange;

.field private static final WEEK_OF_MONTH_RANGE:Lj$/time/temporal/ValueRange;

.field private static final WEEK_OF_WEEK_BASED_YEAR_RANGE:Lj$/time/temporal/ValueRange;

.field private static final WEEK_OF_YEAR_RANGE:Lj$/time/temporal/ValueRange;


# instance fields
.field private final baseUnit:Lj$/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Lj$/time/temporal/ValueRange;

.field private final rangeUnit:Lj$/time/temporal/TemporalUnit;

.field private final weekDef:Lj$/time/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 755
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Lj$/time/temporal/ValueRange;

    .line 756
    const-wide/16 v5, 0x4

    const-wide/16 v7, 0x6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static/range {v1 .. v8}, Lj$/time/temporal/ValueRange;->of(JJJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Lj$/time/temporal/ValueRange;

    .line 757
    const-wide/16 v5, 0x34

    const-wide/16 v7, 0x36

    invoke-static/range {v1 .. v8}, Lj$/time/temporal/ValueRange;->of(JJJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Lj$/time/temporal/ValueRange;

    .line 758
    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x35

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Lj$/time/temporal/ValueRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/ValueRange;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weekDef"    # Lj$/time/temporal/WeekFields;
    .param p3, "baseUnit"    # Lj$/time/temporal/TemporalUnit;
    .param p4, "rangeUnit"    # Lj$/time/temporal/TemporalUnit;
    .param p5, "range"    # Lj$/time/temporal/ValueRange;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    .line 749
    iput-object p2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    .line 750
    iput-object p3, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Lj$/time/temporal/TemporalUnit;

    .line 751
    iput-object p4, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    .line 752
    iput-object p5, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    .line 753
    return-void
.end method

.method private computeWeek(II)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "day"    # I

    .line 891
    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private localizedDayOfWeek(I)I
    .locals 3
    .param p1, "isoDow"    # I

    .line 784
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->getFirstDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 785
    .local v0, "sow":I
    sub-int v1, p1, v0

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I
    .locals 4
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 778
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->getFirstDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 779
    .local v0, "sow":I
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 780
    .local v1, "isoDow":I
    sub-int v2, v1, v0

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private localizedWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)I
    .locals 9
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 809
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 810
    .local v0, "dow":I
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 811
    .local v1, "year":I
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v2

    .line 812
    .local v2, "doy":I
    invoke-direct {p0, v2, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v3

    .line 813
    .local v3, "offset":I
    invoke-direct {p0, v3, v2}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 814
    .local v4, "week":I
    if-nez v4, :cond_0

    .line 816
    add-int/lit8 v5, v1, -0x1

    return v5

    .line 820
    :cond_0
    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Lj$/time/temporal/TemporalAccessor;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v5

    .line 821
    .local v5, "dayRange":Lj$/time/temporal/ValueRange;
    invoke-virtual {v5}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    long-to-int v7, v6

    .line 822
    .local v7, "yearLen":I
    iget-object v6, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v6}, Lj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v7

    invoke-direct {p0, v3, v6}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    .line 823
    .local v6, "newYearWeek":I
    if-lt v4, v6, :cond_1

    .line 824
    add-int/lit8 v8, v1, 0x1

    return v8

    .line 827
    .end local v5    # "dayRange":Lj$/time/temporal/ValueRange;
    .end local v6    # "newYearWeek":I
    .end local v7    # "yearLen":I
    :cond_1
    return v1
.end method

.method private localizedWeekOfMonth(Lj$/time/temporal/TemporalAccessor;)J
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 789
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 790
    .local v0, "dow":I
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 791
    .local v1, "dom":I
    invoke-direct {p0, v1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 792
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method private localizedWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)I
    .locals 8
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 840
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 841
    .local v0, "dow":I
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 842
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 843
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    .line 844
    .local v3, "week":I
    if-nez v3, :cond_0

    .line 847
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 848
    .local v4, "date":Lj$/time/chrono/ChronoLocalDate;
    int-to-long v5, v1

    sget-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 849
    invoke-direct {p0, v4}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)I

    move-result v5

    return v5

    .line 850
    .end local v4    # "date":Lj$/time/chrono/ChronoLocalDate;
    :cond_0
    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 853
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Lj$/time/temporal/TemporalAccessor;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v4

    .line 854
    .local v4, "dayRange":Lj$/time/temporal/ValueRange;
    invoke-virtual {v4}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v6, v5

    .line 855
    .local v6, "yearLen":I
    iget-object v5, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v5}, Lj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v5

    add-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    .line 856
    .local v5, "newYearWeek":I
    if-lt v3, v5, :cond_1

    .line 858
    sub-int v7, v3, v5

    add-int/lit8 v3, v7, 0x1

    .line 861
    .end local v4    # "dayRange":Lj$/time/temporal/ValueRange;
    .end local v5    # "newYearWeek":I
    .end local v6    # "yearLen":I
    :cond_1
    return v3
.end method

.method private localizedWeekOfYear(Lj$/time/temporal/TemporalAccessor;)J
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 796
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 797
    .local v0, "dow":I
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 798
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 799
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method static ofDayOfWeekField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;
    .locals 7
    .param p0, "weekDef"    # Lj$/time/temporal/WeekFields;

    .line 678
    new-instance v6, Lj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Lj$/time/temporal/ValueRange;

    const-string v1, "DayOfWeek"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/ValueRange;)V

    return-object v6
.end method

.method private ofWeekBasedYear(Lj$/time/chrono/Chronology;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 9
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "yowby"    # I
    .param p3, "wowby"    # I
    .param p4, "dow"    # I

    .line 728
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Lj$/time/chrono/Chronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 729
    .local v1, "date":Lj$/time/chrono/ChronoLocalDate;
    invoke-direct {p0, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    .line 730
    .local v2, "ldow":I
    invoke-direct {p0, v0, v2}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v0

    .line 733
    .local v0, "offset":I
    invoke-interface {v1}, Lj$/time/chrono/ChronoLocalDate;->lengthOfYear()I

    move-result v3

    .line 734
    .local v3, "yearLen":I
    iget-object v4, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v4}, Lj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {p0, v0, v4}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 735
    .local v4, "newYearWeek":I
    add-int/lit8 v5, v4, -0x1

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 737
    neg-int v5, v0

    add-int/lit8 v6, p4, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v6, p3, -0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    .line 738
    .local v5, "days":I
    int-to-long v6, v5

    sget-object v8, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v6, v7, v8}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6
.end method

.method static ofWeekBasedYearField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;
    .locals 7
    .param p0, "weekDef"    # Lj$/time/temporal/WeekFields;

    .line 714
    new-instance v6, Lj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v5

    const-string v1, "WeekBasedYear"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/ValueRange;)V

    return-object v6
.end method

.method static ofWeekOfMonthField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;
    .locals 7
    .param p0, "weekDef"    # Lj$/time/temporal/WeekFields;

    .line 687
    new-instance v6, Lj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Lj$/time/temporal/ValueRange;

    const-string v1, "WeekOfMonth"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/ValueRange;)V

    return-object v6
.end method

.method static ofWeekOfWeekBasedYearField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;
    .locals 7
    .param p0, "weekDef"    # Lj$/time/temporal/WeekFields;

    .line 705
    new-instance v6, Lj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    sget-object v5, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Lj$/time/temporal/ValueRange;

    const-string v1, "WeekOfWeekBasedYear"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/ValueRange;)V

    return-object v6
.end method

.method static ofWeekOfYearField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;
    .locals 7
    .param p0, "weekDef"    # Lj$/time/temporal/WeekFields;

    .line 696
    new-instance v6, Lj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Lj$/time/temporal/ValueRange;

    const-string v1, "WeekOfYear"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/ValueRange;)V

    return-object v6
.end method

.method private rangeByWeek(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 7
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p2, "field"    # Lj$/time/temporal/TemporalField;

    .line 1115
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 1116
    .local v0, "dow":I
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v1

    .line 1117
    .local v1, "offset":I
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    .line 1118
    .local v2, "fieldRange":Lj$/time/temporal/ValueRange;
    invoke-virtual {v2}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {p0, v1, v4}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    .line 1119
    invoke-virtual {v2}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-direct {p0, v1, v6}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    int-to-long v5, v5

    .line 1118
    invoke-static {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v3

    return-object v3
.end method

.method private rangeWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 11
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 1128
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    sget-object v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Lj$/time/temporal/ValueRange;

    return-object v0

    .line 1131
    :cond_0
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 1132
    .local v0, "dow":I
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 1133
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 1134
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    .line 1135
    .local v3, "week":I
    if-nez v3, :cond_1

    .line 1138
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 1139
    .local v4, "date":Lj$/time/chrono/ChronoLocalDate;
    add-int/lit8 v5, v1, 0x7

    int-to-long v5, v5

    sget-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 1140
    invoke-direct {p0, v4}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v5

    return-object v5

    .line 1143
    .end local v4    # "date":Lj$/time/chrono/ChronoLocalDate;
    :cond_1
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Lj$/time/temporal/TemporalAccessor;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v4

    .line 1144
    .local v4, "dayRange":Lj$/time/temporal/ValueRange;
    invoke-virtual {v4}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v6, v5

    .line 1145
    .local v6, "yearLen":I
    iget-object v5, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v5}, Lj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v5

    add-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    .line 1147
    .local v5, "newYearWeek":I
    if-lt v3, v5, :cond_2

    .line 1149
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v7

    invoke-interface {v7, p1}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v7

    .line 1150
    .local v7, "date":Lj$/time/chrono/ChronoLocalDate;
    sub-int v8, v6, v1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x7

    int-to-long v8, v8

    sget-object v10, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v7

    .line 1151
    invoke-direct {p0, v7}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    .line 1153
    .end local v7    # "date":Lj$/time/chrono/ChronoLocalDate;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v7, v8}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v7

    return-object v7
.end method

.method private resolveWBY(Ljava/util/Map;Lj$/time/chrono/Chronology;ILj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 7
    .param p2, "chrono"    # Lj$/time/chrono/Chronology;
    .param p3, "localDow"    # I
    .param p4, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/chrono/Chronology;",
            "I",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 1009
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v0}, Lj$/time/temporal/WeekFields;->access$200(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    iget-object v1, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    .line 1010
    invoke-static {v1}, Lj$/time/temporal/WeekFields;->access$200(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v3}, Lj$/time/temporal/WeekFields;->access$200(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v3

    .line 1009
    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 1012
    .local v0, "yowby":I
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-ne p4, v1, :cond_0

    .line 1013
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p3}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Lj$/time/chrono/Chronology;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 1014
    .local v1, "date":Lj$/time/chrono/ChronoLocalDate;
    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v2}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1015
    .local v2, "wowby":J
    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    .line 1016
    .local v4, "weeks":J
    sget-object v6, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 1017
    .end local v2    # "wowby":J
    .end local v4    # "weeks":J
    goto :goto_1

    .line 1018
    .end local v1    # "date":Lj$/time/chrono/ChronoLocalDate;
    :cond_0
    iget-object v1, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v1}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v1

    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    .line 1019
    invoke-static {v2}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v4}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v4

    .line 1018
    invoke-virtual {v1, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 1020
    .local v1, "wowby":I
    invoke-direct {p0, p2, v0, v1, p3}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Lj$/time/chrono/Chronology;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 1021
    .local v2, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v3, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne p4, v3, :cond_2

    invoke-direct {p0, v2}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)I

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_0

    .line 1022
    :cond_1
    new-instance v3, Lj$/time/DateTimeException;

    const-string v4, "Strict mode rejected resolved date as it is in a different week-based-year"

    invoke-direct {v3, v4}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1025
    .end local v1    # "wowby":I
    :cond_2
    :goto_0
    move-object v1, v2

    .end local v2    # "date":Lj$/time/chrono/ChronoLocalDate;
    .local v1, "date":Lj$/time/chrono/ChronoLocalDate;
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v2}, Lj$/time/temporal/WeekFields;->access$200(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v2}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    return-object v1
.end method

.method private resolveWoM(Ljava/util/Map;Lj$/time/chrono/Chronology;IJJILj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 17
    .param p2, "chrono"    # Lj$/time/chrono/Chronology;
    .param p3, "year"    # I
    .param p4, "month"    # J
    .param p6, "wom"    # J
    .param p8, "localDow"    # I
    .param p9, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/chrono/Chronology;",
            "IJJI",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 962
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p9

    sget-object v9, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    .line 963
    invoke-interface {v2, v3, v10, v10}, Lj$/time/chrono/Chronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    const-wide/16 v10, 0x1

    invoke-static {v4, v5, v10, v11}, Lj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v10

    sget-object v12, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v12}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    .line 964
    .local v9, "date":Lj$/time/chrono/ChronoLocalDate;
    invoke-direct {v0, v9}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v10

    .line 965
    .local v10, "weeks":J
    invoke-direct {v0, v9}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v12

    sub-int v12, p8, v12

    .line 966
    .local v12, "days":I
    const-wide/16 v13, 0x7

    invoke-static {v10, v11, v13, v14}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v13

    move-wide v15, v10

    .end local v10    # "weeks":J
    .local v15, "weeks":J
    int-to-long v10, v12

    invoke-static {v13, v14, v10, v11}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v10

    sget-object v13, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v13}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    .line 967
    .end local v12    # "days":I
    .end local v15    # "weeks":J
    goto :goto_1

    .line 968
    .end local v9    # "date":Lj$/time/chrono/ChronoLocalDate;
    :cond_0
    sget-object v9, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v9, v4, v5}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 969
    .local v9, "monthValid":I
    invoke-interface {v2, v3, v9, v10}, Lj$/time/chrono/Chronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v10

    .line 970
    .local v10, "date":Lj$/time/chrono/ChronoLocalDate;
    iget-object v11, v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    invoke-virtual {v11, v6, v7, v0}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v11

    .line 971
    .local v11, "womInt":I
    int-to-long v12, v11

    invoke-direct {v0, v10}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-int v13, v12

    .line 972
    .local v13, "weeks":I
    invoke-direct {v0, v10}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v12

    sub-int v12, p8, v12

    .line 973
    .restart local v12    # "days":I
    mul-int/lit8 v14, v13, 0x7

    add-int/2addr v14, v12

    int-to-long v14, v14

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v10, v14, v15, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 974
    .end local v10    # "date":Lj$/time/chrono/ChronoLocalDate;
    .local v2, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v10, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne v8, v10, :cond_2

    sget-object v10, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v10}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v14

    cmp-long v10, v14, v4

    if-nez v10, :cond_1

    goto :goto_0

    .line 975
    :cond_1
    new-instance v10, Lj$/time/DateTimeException;

    const-string v14, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v10, v14}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 978
    .end local v9    # "monthValid":I
    .end local v11    # "womInt":I
    .end local v12    # "days":I
    .end local v13    # "weeks":I
    :cond_2
    :goto_0
    move-object v9, v2

    .end local v2    # "date":Lj$/time/chrono/ChronoLocalDate;
    .local v9, "date":Lj$/time/chrono/ChronoLocalDate;
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    return-object v9
.end method

.method private resolveWoY(Ljava/util/Map;Lj$/time/chrono/Chronology;IJILj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 16
    .param p2, "chrono"    # Lj$/time/chrono/Chronology;
    .param p3, "year"    # I
    .param p4, "woy"    # J
    .param p6, "localDow"    # I
    .param p7, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/chrono/Chronology;",
            "IJI",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 987
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p7

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-interface {v7, v2, v6, v6}, Lj$/time/chrono/Chronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    .line 988
    .local v6, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v8, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-ne v5, v8, :cond_0

    .line 989
    invoke-direct {v0, v6}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Lj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v8

    .line 990
    .local v8, "weeks":J
    invoke-direct {v0, v6}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v10

    sub-int v10, p6, v10

    .line 991
    .local v10, "days":I
    const-wide/16 v11, 0x7

    invoke-static {v8, v9, v11, v12}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    int-to-long v13, v10

    invoke-static {v11, v12, v13, v14}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    sget-object v13, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v6, v11, v12, v13}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    .line 992
    .end local v8    # "weeks":J
    .end local v10    # "days":I
    goto :goto_0

    .line 993
    :cond_0
    iget-object v8, v0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    invoke-virtual {v8, v3, v4, v0}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v8

    .line 994
    .local v8, "womInt":I
    int-to-long v9, v8

    invoke-direct {v0, v6}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v10, v9

    .line 995
    .local v10, "weeks":I
    invoke-direct {v0, v6}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v9

    sub-int v9, p6, v9

    .line 996
    .local v9, "days":I
    mul-int/lit8 v11, v10, 0x7

    add-int/2addr v11, v9

    int-to-long v11, v11

    sget-object v13, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v6, v11, v12, v13}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    .line 997
    sget-object v11, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne v5, v11, :cond_2

    sget-object v11, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v6, v11}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v11

    int-to-long v13, v2

    cmp-long v15, v11, v13

    if-nez v15, :cond_1

    goto :goto_0

    .line 998
    :cond_1
    new-instance v11, Lj$/time/DateTimeException;

    const-string v12, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v11, v12}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1001
    .end local v8    # "womInt":I
    .end local v9    # "days":I
    .end local v10    # "weeks":I
    :cond_2
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v8, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v8, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    return-object v6
.end method

.method private startOfWeekOffset(II)I
    .locals 4
    .param p1, "day"    # I
    .param p2, "dow"    # I

    .line 873
    sub-int v0, p1, p2

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    .line 874
    .local v0, "weekStart":I
    neg-int v1, v0

    .line 875
    .local v1, "offset":I
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v3}, Lj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 877
    rsub-int/lit8 v1, v0, 0x7

    .line 879
    :cond_0
    return v1
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 898
    .local p1, "temporal":Lj$/time/temporal/Temporal;, "TR;"
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 899
    .local v0, "newVal":I
    invoke-interface {p1, p0}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 900
    .local v1, "currentVal":I
    if-ne v0, v1, :cond_0

    .line 901
    return-object p1

    .line 904
    :cond_0
    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    .line 907
    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v2}, Lj$/time/temporal/WeekFields;->access$000(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v2

    .line 908
    .local v2, "idow":I
    iget-object v3, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-static {v3}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v3

    invoke-interface {p1, v3}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    .line 909
    .local v3, "wowby":I
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v4

    long-to-int v5, p2

    invoke-direct {p0, v4, v5, v3, v2}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Lj$/time/chrono/Chronology;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 912
    .end local v2    # "idow":I
    .end local v3    # "wowby":I
    :cond_1
    sub-int v2, v0, v1

    int-to-long v2, v2

    iget-object v4, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Lj$/time/temporal/TemporalUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 1049
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Lj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1035
    const-string v0, "locale"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1036
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    .line 1042
    const-string v0, "Week"

    return-object v0

    .line 1044
    :cond_0
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom(Lj$/time/temporal/TemporalAccessor;)J
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 762
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    .line 763
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 764
    :cond_0
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    .line 765
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 766
    :cond_1
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    .line 767
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 768
    :cond_2
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    .line 769
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 770
    :cond_3
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    .line 771
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 773
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 1054
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .line 1059
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 1075
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1076
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    .line 1077
    const/4 v0, 0x1

    return v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    .line 1079
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1080
    :cond_1
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    .line 1081
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1082
    :cond_2
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    .line 1083
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1084
    :cond_3
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    .line 1085
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1088
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method public range()Lj$/time/temporal/ValueRange;
    .locals 1

    .line 1069
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 1093
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    .line 1094
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    return-object v0

    .line 1095
    :cond_0
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    .line 1096
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_1
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    .line 1098
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1099
    :cond_2
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    .line 1100
    invoke-direct {p0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_3
    iget-object v0, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    .line 1102
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 21
    .param p2, "partialTemporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/temporal/TemporalAccessor;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 919
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 920
    .local v12, "value":J
    invoke-static {v12, v13}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v14

    .line 924
    .local v14, "newValue":I
    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 925
    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->range:Lj$/time/temporal/ValueRange;

    invoke-virtual {v0, v12, v13, v10}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 926
    .local v0, "checkedValue":I
    iget-object v1, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v1}, Lj$/time/temporal/WeekFields;->getFirstDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/DayOfWeek;->getValue()I

    move-result v1

    .line 927
    .local v1, "startDow":I
    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 928
    .local v3, "isoDow":J
    invoke-interface {v11, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    return-object v2

    .line 934
    .end local v0    # "checkedValue":I
    .end local v1    # "startDow":I
    .end local v3    # "isoDow":J
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    return-object v2

    .line 937
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    .line 938
    .local v15, "isoDow":I
    invoke-direct {v10, v15}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(I)I

    move-result v9

    .line 941
    .local v9, "dow":I
    invoke-static/range {p2 .. p2}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v8

    .line 942
    .local v8, "chrono":Lj$/time/chrono/Chronology;
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 943
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    .line 944
    .local v16, "year":I
    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 946
    .local v17, "month":J
    int-to-long v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-object/from16 v19, v8

    .end local v8    # "chrono":Lj$/time/chrono/Chronology;
    .local v19, "chrono":Lj$/time/chrono/Chronology;
    move v8, v9

    move/from16 v20, v9

    .end local v9    # "dow":I
    .local v20, "dow":I
    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->resolveWoM(Ljava/util/Map;Lj$/time/chrono/Chronology;IJJILj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 944
    .end local v17    # "month":J
    .end local v19    # "chrono":Lj$/time/chrono/Chronology;
    .end local v20    # "dow":I
    .restart local v8    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v9    # "dow":I
    :cond_2
    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 948
    .end local v8    # "chrono":Lj$/time/chrono/Chronology;
    .end local v9    # "dow":I
    .restart local v19    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v20    # "dow":I
    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3

    .line 949
    int-to-long v4, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v16

    move/from16 v6, v20

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->resolveWoY(Ljava/util/Map;Lj$/time/chrono/Chronology;IJILj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 948
    .end local v16    # "year":I
    :cond_3
    goto :goto_0

    .line 951
    .end local v19    # "chrono":Lj$/time/chrono/Chronology;
    .end local v20    # "dow":I
    .restart local v8    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v9    # "dow":I
    :cond_4
    move-object/from16 v19, v8

    move/from16 v20, v9

    .end local v8    # "chrono":Lj$/time/chrono/Chronology;
    .end local v9    # "dow":I
    .restart local v19    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v20    # "dow":I
    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    if-eq v0, v1, :cond_6

    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lj$/time/temporal/TemporalUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v3, v19

    move/from16 v1, v20

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    .line 952
    invoke-static {v0}, Lj$/time/temporal/WeekFields;->access$200(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v10, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    .line 953
    invoke-static {v0}, Lj$/time/temporal/WeekFields;->access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 954
    move-object/from16 v0, p3

    move-object/from16 v3, v19

    move/from16 v1, v20

    .end local v19    # "chrono":Lj$/time/chrono/Chronology;
    .end local v20    # "dow":I
    .local v1, "dow":I
    .local v3, "chrono":Lj$/time/chrono/Chronology;
    invoke-direct {v10, v11, v3, v1, v0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->resolveWBY(Ljava/util/Map;Lj$/time/chrono/Chronology;ILj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2

    .line 953
    .end local v1    # "dow":I
    .end local v3    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v19    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v20    # "dow":I
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v3, v19

    move/from16 v1, v20

    .end local v19    # "chrono":Lj$/time/chrono/Chronology;
    .end local v20    # "dow":I
    .restart local v1    # "dow":I
    .restart local v3    # "chrono":Lj$/time/chrono/Chronology;
    goto :goto_2

    .line 952
    .end local v1    # "dow":I
    .end local v3    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v19    # "chrono":Lj$/time/chrono/Chronology;
    .restart local v20    # "dow":I
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v3, v19

    move/from16 v1, v20

    .line 956
    .end local v19    # "chrono":Lj$/time/chrono/Chronology;
    .end local v20    # "dow":I
    .restart local v1    # "dow":I
    .restart local v3    # "chrono":Lj$/time/chrono/Chronology;
    :goto_2
    return-object v2
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;
    .locals 0

    .line 668
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Lj$/time/temporal/WeekFields;

    invoke-virtual {v1}, Lj$/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
