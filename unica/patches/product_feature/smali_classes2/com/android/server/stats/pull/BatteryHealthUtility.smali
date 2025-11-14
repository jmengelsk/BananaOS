.class public abstract Lcom/android/server/stats/pull/BatteryHealthUtility;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static buildStatsEvent(ILandroid/hardware/health/BatteryHealthData;II)Landroid/util/StatsEvent;
    .locals 10

    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    invoke-static {v0, v1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->secondsToWeekYYYYMMDD(J)I

    move-result v3

    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    invoke-static {v0, v1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->secondsToWeekYYYYMMDD(J)I

    move-result v4

    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    iget v7, p1, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    iget-object p1, p1, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    and-int/lit16 v6, p1, 0xff

    long-to-int v5, v0

    move v2, p0

    move v8, p2

    move v9, p3

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public static secondsToWeekYYYYMMDD(J)I
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyyMMdd"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
