.class final Lj$/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Lj$/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final chrono:Lj$/time/chrono/Chronology;

.field final days:I

.field final months:I

.field final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/time/temporal/TemporalUnit;

    const/4 v1, 0x0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    aput-object v2, v0, v1

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    .line 108
    return-void
.end method

.method constructor <init>(Lj$/time/chrono/Chronology;III)V
    .locals 1
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, "chrono"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    .line 134
    iput p2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 135
    iput p3, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 136
    iput p4, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 137
    return-void
.end method

.method private monthRange()J
    .locals 5

    .line 249
    iget-object v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 250
    .local v0, "startRange":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->isIntValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    .line 253
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/chrono/ChronoPeriodImpl;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;

    .line 394
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/Chronology$-CC;->of(Ljava/lang/String;)Lj$/time/chrono/Chronology;

    move-result-object v0

    .line 395
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 396
    .local v1, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 397
    .local v2, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 398
    .local v3, "days":I
    new-instance v4, Lj$/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 383
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAmount(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriodImpl;
    .locals 4
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 202
    const-string v0, "amount"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Lj$/time/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_1

    .line 206
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ChronoPeriodImpl;

    .line 207
    .local v0, "period":Lj$/time/chrono/ChronoPeriodImpl;
    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-virtual {v0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    return-object v0

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "period":Lj$/time/chrono/ChronoPeriodImpl;
    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Lj$/time/temporal/TemporalAccessor;)V
    .locals 4
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 311
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 313
    .local v0, "temporalChrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v1, v0}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 6
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 259
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 260
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_0

    .line 261
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_3

    .line 262
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0}, Lj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 266
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 267
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 269
    :cond_1
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_2

    .line 270
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 272
    :cond_2
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 275
    .end local v0    # "monthRange":J
    :cond_3
    :goto_0
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4

    .line 276
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 278
    :cond_4
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 321
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 322
    return v0

    .line 324
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/ChronoPeriodImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 325
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/ChronoPeriodImpl;

    .line 326
    .local v1, "other":Lj$/time/chrono/ChronoPeriodImpl;
    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget-object v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    .line 327
    invoke-interface {v3, v4}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 329
    .end local v1    # "other":Lj$/time/chrono/ChronoPeriodImpl;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 142
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 143
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    return-wide v0

    .line 144
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 145
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    return-wide v0

    .line 146
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 147
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    return-wide v0

    .line 149
    :cond_2
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

.method public getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 160
    iget-object v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    return-object v0
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

    .line 155
    sget-object v0, Lj$/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 334
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v1}, Lj$/time/chrono/Chronology;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 171
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-gez v0, :cond_0

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

.method public isZero()Z
    .locals 1

    .line 166
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 7
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 187
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateAmount(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 188
    .local v0, "amount":Lj$/time/chrono/ChronoPeriodImpl;
    new-instance v1, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 190
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v3

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 191
    invoke-static {v4, v5}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v4

    iget v5, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 192
    invoke-static {v5, v6}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    .line 188
    return-object v1
.end method

.method public multipliedBy(I)Lj$/time/chrono/ChronoPeriod;
    .locals 5
    .param p1, "scalar"    # I

    .line 216
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 221
    invoke-static {v2, p1}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v2

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 222
    invoke-static {v3, p1}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v3

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 223
    invoke-static {v4, p1}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    .line 219
    return-object v0

    .line 217
    :cond_1
    :goto_0
    return-object p0
.end method

.method public synthetic negated()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoPeriod$-CC;->$default$negated(Lj$/time/chrono/ChronoPeriod;)Lj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Lj$/time/chrono/ChronoPeriod;
    .locals 11

    .line 229
    invoke-direct {p0}, Lj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 230
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 231
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 232
    .local v2, "totalMonths":J
    div-long v4, v2, v0

    .line 233
    .local v4, "splitYears":J
    rem-long v6, v2, v0

    long-to-int v7, v6

    .line 234
    .local v7, "splitMonths":I
    iget v6, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v6

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    iget v6, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v7, v6, :cond_0

    .line 235
    return-object p0

    .line 237
    :cond_0
    new-instance v6, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v8, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-static {v4, v5}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v9

    iget v10, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v6, v8, v9, v7, v10}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    return-object v6

    .line 240
    .end local v2    # "totalMonths":J
    .end local v4    # "splitYears":J
    .end local v7    # "splitMonths":I
    :cond_1
    return-object p0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 7
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 177
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateAmount(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 178
    .local v0, "amount":Lj$/time/chrono/ChronoPeriodImpl;
    new-instance v1, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 180
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v3

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 181
    invoke-static {v4, v5}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v4

    iget v5, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 182
    invoke-static {v5, v6}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    .line 178
    return-object v1
.end method

.method public subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 6
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 285
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 286
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_0

    .line 287
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_3

    .line 288
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Lj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 292
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 293
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 295
    :cond_1
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_2

    .line 296
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 298
    :cond_2
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 301
    .end local v0    # "monthRange":J
    :cond_3
    :goto_0
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4

    .line 302
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 304
    :cond_4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 340
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    .line 346
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    .line 349
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    .line 352
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 387
    iget-object v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 389
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 390
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 391
    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 373
    new-instance v0, Lj$/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
