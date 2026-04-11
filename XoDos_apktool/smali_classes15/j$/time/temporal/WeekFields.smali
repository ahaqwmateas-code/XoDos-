.class public final Lj$/time/temporal/WeekFields;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/temporal/WeekFields$ComputedDayOfField;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lj$/time/temporal/WeekFields;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO:Lj$/time/temporal/WeekFields;

.field public static final SUNDAY_START:Lj$/time/temporal/WeekFields;

.field public static final WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

.field private static final serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field private final transient dayOfWeek:Lj$/time/temporal/TemporalField;

.field private final firstDayOfWeek:Lj$/time/DayOfWeek;

.field private final minimalDays:I

.field private final transient weekBasedYear:Lj$/time/temporal/TemporalField;

.field private final transient weekOfMonth:Lj$/time/temporal/TemporalField;

.field private final transient weekOfWeekBasedYear:Lj$/time/temporal/TemporalField;

.field private final transient weekOfYear:Lj$/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 188
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 202
    new-instance v0, Lj$/time/temporal/WeekFields;

    sget-object v1, Lj$/time/DayOfWeek;->MONDAY:Lj$/time/DayOfWeek;

    invoke-direct {v0, v1, v3}, Lj$/time/temporal/WeekFields;-><init>(Lj$/time/DayOfWeek;I)V

    sput-object v0, Lj$/time/temporal/WeekFields;->ISO:Lj$/time/temporal/WeekFields;

    .line 211
    sget-object v0, Lj$/time/DayOfWeek;->SUNDAY:Lj$/time/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/time/temporal/WeekFields;->of(Lj$/time/DayOfWeek;I)Lj$/time/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/WeekFields;->SUNDAY_START:Lj$/time/temporal/WeekFields;

    .line 229
    sget-object v0, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    sput-object v0, Lj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>(Lj$/time/DayOfWeek;I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # Lj$/time/DayOfWeek;
    .param p2, "minimalDaysInFirstWeek"    # I

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {p0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofDayOfWeekField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/WeekFields;->dayOfWeek:Lj$/time/temporal/TemporalField;

    .line 251
    invoke-static {p0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfMonthField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfMonth:Lj$/time/temporal/TemporalField;

    .line 255
    invoke-static {p0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfYearField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfYear:Lj$/time/temporal/TemporalField;

    .line 263
    invoke-static {p0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfWeekBasedYearField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfWeekBasedYear:Lj$/time/temporal/TemporalField;

    .line 271
    invoke-static {p0}, Lj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYearField(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lj$/time/temporal/WeekFields;->weekBasedYear:Lj$/time/temporal/TemporalField;

    .line 337
    const-string v0, "firstDayOfWeek"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 341
    iput-object p1, p0, Lj$/time/temporal/WeekFields;->firstDayOfWeek:Lj$/time/DayOfWeek;

    .line 342
    iput p2, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    .line 343
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;
    .locals 1
    .param p0, "x0"    # Lj$/time/temporal/WeekFields;

    .line 176
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->dayOfWeek:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method static synthetic access$100(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;
    .locals 1
    .param p0, "x0"    # Lj$/time/temporal/WeekFields;

    .line 176
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfWeekBasedYear:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method static synthetic access$200(Lj$/time/temporal/WeekFields;)Lj$/time/temporal/TemporalField;
    .locals 1
    .param p0, "x0"    # Lj$/time/temporal/WeekFields;

    .line 176
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->weekBasedYear:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public static of(Lj$/time/DayOfWeek;I)Lj$/time/temporal/WeekFields;
    .locals 3
    .param p0, "firstDayOfWeek"    # Lj$/time/DayOfWeek;
    .param p1, "minimalDaysInFirstWeek"    # I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/WeekFields;

    .line 320
    .local v1, "rules":Lj$/time/temporal/WeekFields;
    if-nez v1, :cond_0

    .line 321
    new-instance v2, Lj$/time/temporal/WeekFields;

    invoke-direct {v2, p0, p1}, Lj$/time/temporal/WeekFields;-><init>(Lj$/time/DayOfWeek;I)V

    move-object v1, v2

    .line 322
    sget-object v2, Lj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v2, Lj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lj$/time/temporal/WeekFields;

    .line 325
    :cond_0
    return-object v1
.end method

.method public static of(Ljava/util/Locale;)Lj$/time/temporal/WeekFields;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 283
    const-string v0, "locale"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    .line 287
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 289
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 290
    .local v1, "calDow":I
    sget-object v2, Lj$/time/DayOfWeek;->SUNDAY:Lj$/time/DayOfWeek;

    add-int/lit8 v3, v1, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lj$/time/DayOfWeek;->plus(J)Lj$/time/DayOfWeek;

    move-result-object v2

    .line 292
    .local v2, "dow":Lj$/time/DayOfWeek;
    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    .line 294
    .local v3, "minDays":I
    invoke-static {v2, v3}, Lj$/time/temporal/WeekFields;->of(Lj$/time/DayOfWeek;I)Lj$/time/temporal/WeekFields;

    move-result-object v4

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 359
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->firstDayOfWeek:Lj$/time/DayOfWeek;

    if-eqz v0, :cond_1

    .line 363
    iget v0, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 366
    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "firstDayOfWeek is null"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 377
    :try_start_0
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->firstDayOfWeek:Lj$/time/DayOfWeek;

    iget v1, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    invoke-static {v0, v1}, Lj$/time/temporal/WeekFields;->of(Lj$/time/DayOfWeek;I)Lj$/time/temporal/WeekFields;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid serialized WeekFields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dayOfWeek()Lj$/time/temporal/TemporalField;
    .locals 1

    .line 431
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->dayOfWeek:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 629
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 630
    return v0

    .line 632
    :cond_0
    instance-of v1, p1, Lj$/time/temporal/WeekFields;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 633
    invoke-virtual {p0}, Lj$/time/temporal/WeekFields;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 635
    :cond_2
    return v2
.end method

.method public getFirstDayOfWeek()Lj$/time/DayOfWeek;
    .locals 1

    .line 394
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->firstDayOfWeek:Lj$/time/DayOfWeek;

    return-object v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .line 408
    iget v0, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 645
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->firstDayOfWeek:Lj$/time/DayOfWeek;

    invoke-virtual {v0}, Lj$/time/DayOfWeek;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeekFields["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/temporal/WeekFields;->firstDayOfWeek:Lj$/time/DayOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj$/time/temporal/WeekFields;->minimalDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weekBasedYear()Lj$/time/temporal/TemporalField;
    .locals 1

    .line 614
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->weekBasedYear:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfMonth()Lj$/time/temporal/TemporalField;
    .locals 1

    .line 477
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfMonth:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfWeekBasedYear()Lj$/time/temporal/TemporalField;
    .locals 1

    .line 572
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfWeekBasedYear:Lj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfYear()Lj$/time/temporal/TemporalField;
    .locals 1

    .line 522
    iget-object v0, p0, Lj$/time/temporal/WeekFields;->weekOfYear:Lj$/time/temporal/TemporalField;

    return-object v0
.end method
