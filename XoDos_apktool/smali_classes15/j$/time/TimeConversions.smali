.class public Lj$/time/TimeConversions;
.super Ljava/lang/Object;
.source "TimeConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/time/Duration;)Lj$/time/Duration;
    .locals 4
    .param p0, "duration"    # Ljava/time/Duration;

    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/time/Instant;)Lj$/time/Instant;
    .locals 4
    .param p0, "instant"    # Ljava/time/Instant;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/time/LocalDate;)Lj$/time/LocalDate;
    .locals 3
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/time/MonthDay;)Lj$/time/MonthDay;
    .locals 2
    .param p0, "monthDay"    # Ljava/time/MonthDay;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/time/ZoneId;)Lj$/time/ZoneId;
    .locals 1
    .param p0, "zoneId"    # Ljava/time/ZoneId;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/time/ZonedDateTime;)Lj$/time/ZonedDateTime;
    .locals 9
    .param p0, "dateTime"    # Ljava/time/ZonedDateTime;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    nop

    .line 31
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v2

    .line 33
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v3

    .line 34
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v4

    .line 35
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v5

    .line 36
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v6

    .line 37
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v7

    .line 38
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Lj$/time/TimeConversions;->convert(Ljava/time/ZoneId;)Lj$/time/ZoneId;

    move-result-object v8

    .line 30
    invoke-static/range {v1 .. v8}, Lj$/time/ZonedDateTime;->of(IIIIIIILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lj$/time/Duration;)Ljava/time/Duration;
    .locals 4
    .param p0, "duration"    # Lj$/time/Duration;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lj$/time/Instant;)Ljava/time/Instant;
    .locals 4
    .param p0, "instant"    # Lj$/time/Instant;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lj$/time/LocalDate;)Ljava/time/LocalDate;
    .locals 3
    .param p0, "date"    # Lj$/time/LocalDate;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lj$/time/MonthDay;)Ljava/time/MonthDay;
    .locals 2
    .param p0, "monthDay"    # Lj$/time/MonthDay;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lj$/time/MonthDay;->getMonthValue()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/MonthDay;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;
    .locals 1
    .param p0, "zoneId"    # Lj$/time/ZoneId;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lj$/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .locals 9
    .param p0, "dateTime"    # Lj$/time/ZonedDateTime;

    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 v0, 0x0

    return-object v0

    .line 15
    :cond_0
    nop

    .line 16
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getYear()I

    move-result v1

    .line 17
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getMonthValue()I

    move-result v2

    .line 18
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getDayOfMonth()I

    move-result v3

    .line 19
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getHour()I

    move-result v4

    .line 20
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getMinute()I

    move-result v5

    .line 21
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getSecond()I

    move-result v6

    .line 22
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getNano()I

    move-result v7

    .line 23
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Lj$/time/TimeConversions;->convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v8

    .line 15
    invoke-static/range {v1 .. v8}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
