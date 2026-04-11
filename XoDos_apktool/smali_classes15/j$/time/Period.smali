.class public final Lj$/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Lj$/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO:Lj$/time/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 141
    new-instance v0, Lj$/time/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lj$/time/Period;-><init>(III)V

    sput-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    .line 149
    nop

    .line 150
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/time/temporal/TemporalUnit;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    aput-object v3, v0, v1

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v2

    .line 156
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    .line 155
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput p1, p0, Lj$/time/Period;->years:I

    .line 417
    iput p2, p0, Lj$/time/Period;->months:I

    .line 418
    iput p3, p0, Lj$/time/Period;->days:I

    .line 419
    return-void
.end method

.method public static between(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/time/Period;
    .locals 1
    .param p0, "startDateInclusive"    # Lj$/time/LocalDate;
    .param p1, "endDateExclusive"    # Lj$/time/LocalDate;

    .line 390
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static create(III)Lj$/time/Period;
    .locals 1
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 402
    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Lj$/time/Period;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;
    .locals 9
    .param p0, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 261
    instance-of v0, p0, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 262
    move-object v0, p0

    check-cast v0, Lj$/time/Period;

    return-object v0

    .line 264
    :cond_0
    instance-of v0, p0, Lj$/time/chrono/ChronoPeriod;

    if-eqz v0, :cond_2

    .line 265
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    move-object v1, p0

    check-cast v1, Lj$/time/chrono/ChronoPeriod;

    invoke-interface {v1}, Lj$/time/chrono/ChronoPeriod;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period requires ISO chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_2
    :goto_0
    const-string v0, "amount"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "years":I
    const/4 v1, 0x0

    .line 272
    .local v1, "months":I
    const/4 v2, 0x0

    .line 273
    .local v2, "days":I
    invoke-interface {p0}, Lj$/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/temporal/TemporalUnit;

    .line 274
    .local v4, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v4}, Lj$/time/temporal/TemporalAmount;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v5

    .line 275
    .local v5, "unitAmount":J
    sget-object v7, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_3

    .line 276
    invoke-static {v5, v6}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    goto :goto_2

    .line 277
    :cond_3
    sget-object v7, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_4

    .line 278
    invoke-static {v5, v6}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    goto :goto_2

    .line 279
    :cond_4
    sget-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_5

    .line 280
    invoke-static {v5, v6}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    .line 284
    .end local v4    # "unit":Lj$/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :goto_2
    goto :goto_1

    .line 282
    .restart local v4    # "unit":Lj$/time/temporal/TemporalUnit;
    .restart local v5    # "unitAmount":J
    :cond_5
    new-instance v3, Lj$/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    .end local v4    # "unit":Lj$/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :cond_6
    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public static of(III)Lj$/time/Period;
    .locals 1
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 237
    invoke-static {p0, p1, p2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(I)Lj$/time/Period;
    .locals 1
    .param p0, "days"    # I

    .line 222
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofMonths(I)Lj$/time/Period;
    .locals 1
    .param p0, "months"    # I

    .line 195
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofWeeks(I)Lj$/time/Period;
    .locals 2
    .param p0, "weeks"    # I

    .line 209
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofYears(I)Lj$/time/Period;
    .locals 1
    .param p0, "years"    # I

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/Period;
    .locals 13
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 329
    const-string v0, "text"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 331
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Text cannot be parsed to a Period"

    if-eqz v1, :cond_2

    .line 332
    const-string v1, "-"

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, -0x1

    :cond_0
    move v1, v4

    .line 333
    .local v1, "negate":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "yearMatch":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "monthMatch":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "weekMatch":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "dayMatch":Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    if-eqz v6, :cond_2

    .line 339
    :cond_1
    :try_start_0
    invoke-static {p0, v4, v1}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    .line 340
    .local v8, "years":I
    invoke-static {p0, v5, v1}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v9

    .line 341
    .local v9, "months":I
    invoke-static {p0, v6, v1}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v10

    .line 342
    .local v10, "weeks":I
    invoke-static {p0, v7, v1}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v11

    .line 343
    .local v11, "days":I
    const/4 v12, 0x7

    invoke-static {v10, v12}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v12

    invoke-static {v11, v12}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v12

    move v11, v12

    .line 344
    invoke-static {v8, v9, v11}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 345
    .end local v8    # "years":I
    .end local v9    # "months":I
    .end local v10    # "weeks":I
    .end local v11    # "days":I
    :catch_0
    move-exception v8

    .line 346
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Lj$/time/format/DateTimeParseException;

    invoke-direct {v9, v3, p0, v2, v8}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v9

    .line 350
    .end local v1    # "negate":I
    .end local v4    # "yearMatch":Ljava/lang/String;
    .end local v5    # "monthMatch":Ljava/lang/String;
    .end local v6    # "weekMatch":Ljava/lang/String;
    .end local v7    # "dayMatch":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v1, Lj$/time/format/DateTimeParseException;

    invoke-direct {v1, v3, p0, v2}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .line 354
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 355
    return v0

    .line 358
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 359
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 361
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, "val":I
    :try_start_0
    invoke-static {v1, p2}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "ex":Ljava/lang/ArithmeticException;
    new-instance v3, Lj$/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Period"

    invoke-direct {v3, v4, p0, v0, v2}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v3
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Period;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1079
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1080
    .local v0, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1081
    .local v1, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1082
    .local v2, "days":I
    invoke-static {v0, v1, v2}, Lj$/time/Period;->of(III)Lj$/time/Period;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1069
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Lj$/time/temporal/TemporalAccessor;)V
    .locals 4
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 972
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 974
    .local v0, "temporalChrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: ISO, actual: "

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

    .line 977
    :cond_1
    :goto_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1059
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 898
    invoke-direct {p0, p1}, Lj$/time/Period;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 899
    iget v0, p0, Lj$/time/Period;->months:I

    if-nez v0, :cond_0

    .line 900
    iget v0, p0, Lj$/time/Period;->years:I

    if-eqz v0, :cond_1

    .line 901
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {p0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 905
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 906
    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 909
    .end local v0    # "totalMonths":J
    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/Period;->days:I

    if-eqz v0, :cond_2

    .line 910
    iget v0, p0, Lj$/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 912
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 993
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 994
    return v0

    .line 996
    :cond_0
    instance-of v1, p1, Lj$/time/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 997
    move-object v1, p1

    check-cast v1, Lj$/time/Period;

    .line 998
    .local v1, "other":Lj$/time/Period;
    iget v3, p0, Lj$/time/Period;->years:I

    iget v4, v1, Lj$/time/Period;->years:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/Period;->months:I

    iget v4, v1, Lj$/time/Period;->months:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/Period;->days:I

    iget v4, v1, Lj$/time/Period;->days:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1002
    .end local v1    # "other":Lj$/time/Period;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 437
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lj$/time/Period;->getYears()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 439
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 440
    invoke-virtual {p0}, Lj$/time/Period;->getMonths()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 441
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 442
    invoke-virtual {p0}, Lj$/time/Period;->getDays()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 444
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

.method public bridge synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lj$/time/Period;->getChronology()Lj$/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lj$/time/chrono/IsoChronology;
    .locals 1

    .line 477
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    .line 542
    iget v0, p0, Lj$/time/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .line 531
    iget v0, p0, Lj$/time/Period;->months:I

    return v0
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

    .line 462
    sget-object v0, Lj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public getYears()I
    .locals 1

    .line 516
    iget v0, p0, Lj$/time/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1012
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 500
    iget v0, p0, Lj$/time/Period;->years:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/Period;->months:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/Period;->days:I

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

    .line 489
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;
    .locals 5
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 719
    invoke-static {p1}, Lj$/time/Period;->from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object v0

    .line 720
    .local v0, "isoAmount":Lj$/time/Period;
    iget v1, p0, Lj$/time/Period;->years:I

    iget v2, v0, Lj$/time/Period;->years:I

    .line 721
    invoke-static {v1, v2}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->months:I

    iget v3, v0, Lj$/time/Period;->months:I

    .line 722
    invoke-static {v2, v3}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    iget v3, p0, Lj$/time/Period;->days:I

    iget v4, v0, Lj$/time/Period;->days:I

    .line 723
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v3

    .line 720
    invoke-static {v1, v2, v3}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/Period;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lj$/time/Period;
    .locals 3
    .param p1, "daysToSubtract"    # J

    .line 774
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusDays(J)Lj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Period;->plusDays(J)Lj$/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusDays(J)Lj$/time/Period;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMonths(J)Lj$/time/Period;
    .locals 3
    .param p1, "monthsToSubtract"    # J

    .line 757
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusMonths(J)Lj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Period;->plusMonths(J)Lj$/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusMonths(J)Lj$/time/Period;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/Period;
    .locals 3
    .param p1, "yearsToSubtract"    # J

    .line 740
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusYears(J)Lj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Period;->plusYears(J)Lj$/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusYears(J)Lj$/time/Period;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public multipliedBy(I)Lj$/time/Period;
    .locals 3
    .param p1, "scalar"    # I

    .line 793
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    .line 797
    invoke-static {v0, p1}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v0

    iget v1, p0, Lj$/time/Period;->months:I

    .line 798
    invoke-static {v1, p1}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->days:I

    .line 799
    invoke-static {v2, p1}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(II)I

    move-result v2

    .line 796
    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0

    .line 794
    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic multipliedBy(I)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/Period;->multipliedBy(I)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lj$/time/Period;
    .locals 1

    .line 816
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lj$/time/Period;->multipliedBy(I)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lj$/time/Period;->negated()Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Lj$/time/Period;
    .locals 8

    .line 838
    invoke-virtual {p0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 839
    .local v0, "totalMonths":J
    const-wide/16 v2, 0xc

    div-long v4, v0, v2

    .line 840
    .local v4, "splitYears":J
    rem-long v2, v0, v2

    long-to-int v3, v2

    .line 841
    .local v3, "splitMonths":I
    iget v2, p0, Lj$/time/Period;->years:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    iget v2, p0, Lj$/time/Period;->months:I

    if-ne v3, v2, :cond_0

    .line 842
    return-object p0

    .line 844
    :cond_0
    invoke-static {v4, v5}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    iget v6, p0, Lj$/time/Period;->days:I

    invoke-static {v2, v3, v6}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic normalized()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lj$/time/Period;->normalized()Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;
    .locals 5
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 630
    invoke-static {p1}, Lj$/time/Period;->from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object v0

    .line 631
    .local v0, "isoAmount":Lj$/time/Period;
    iget v1, p0, Lj$/time/Period;->years:I

    iget v2, v0, Lj$/time/Period;->years:I

    .line 632
    invoke-static {v1, v2}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->months:I

    iget v3, v0, Lj$/time/Period;->months:I

    .line 633
    invoke-static {v2, v3}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v2

    iget v3, p0, Lj$/time/Period;->days:I

    iget v4, v0, Lj$/time/Period;->days:I

    .line 634
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v3

    .line 631
    invoke-static {v1, v2, v3}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/Period;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/Period;
    .locals 4
    .param p1, "daysToAdd"    # J

    .line 691
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 692
    return-object p0

    .line 694
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    iget v2, p0, Lj$/time/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lj$/time/Period;
    .locals 3
    .param p1, "monthsToAdd"    # J

    .line 671
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 672
    return-object p0

    .line 674
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->days:I

    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lj$/time/Period;
    .locals 3
    .param p1, "yearsToAdd"    # J

    .line 651
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 652
    return-object p0

    .line 654
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    iget v1, p0, Lj$/time/Period;->months:I

    iget v2, p0, Lj$/time/Period;->days:I

    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 951
    invoke-direct {p0, p1}, Lj$/time/Period;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 952
    iget v0, p0, Lj$/time/Period;->months:I

    if-nez v0, :cond_0

    .line 953
    iget v0, p0, Lj$/time/Period;->years:I

    if-eqz v0, :cond_1

    .line 954
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {p0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 958
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 959
    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 962
    .end local v0    # "totalMonths":J
    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/Period;->days:I

    if-eqz v0, :cond_2

    .line 963
    iget v0, p0, Lj$/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 965
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1026
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-ne p0, v0, :cond_0

    .line 1027
    const-string v0, "P0D"

    return-object v0

    .line 1029
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    iget v1, p0, Lj$/time/Period;->years:I

    if-eqz v1, :cond_1

    .line 1032
    iget v1, p0, Lj$/time/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    :cond_1
    iget v1, p0, Lj$/time/Period;->months:I

    if-eqz v1, :cond_2

    .line 1035
    iget v1, p0, Lj$/time/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1037
    :cond_2
    iget v1, p0, Lj$/time/Period;->days:I

    if-eqz v1, :cond_3

    .line 1038
    iget v1, p0, Lj$/time/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1040
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTotalMonths()J
    .locals 4

    .line 858
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lj$/time/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public withDays(I)Lj$/time/Period;
    .locals 2
    .param p1, "days"    # I

    .line 602
    iget v0, p0, Lj$/time/Period;->days:I

    if-ne p1, v0, :cond_0

    .line 603
    return-object p0

    .line 605
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    invoke-static {v0, v1, p1}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withMonths(I)Lj$/time/Period;
    .locals 2
    .param p1, "months"    # I

    .line 584
    iget v0, p0, Lj$/time/Period;->months:I

    if-ne p1, v0, :cond_0

    .line 585
    return-object p0

    .line 587
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->days:I

    invoke-static {v0, p1, v1}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withYears(I)Lj$/time/Period;
    .locals 2
    .param p1, "years"    # I

    .line 562
    iget v0, p0, Lj$/time/Period;->years:I

    if-ne p1, v0, :cond_0

    .line 563
    return-object p0

    .line 565
    :cond_0
    iget v0, p0, Lj$/time/Period;->months:I

    iget v1, p0, Lj$/time/Period;->days:I

    invoke-static {p1, v0, v1}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1073
    iget v0, p0, Lj$/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1074
    iget v0, p0, Lj$/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1075
    iget v0, p0, Lj$/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1076
    return-void
.end method
