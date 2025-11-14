.class public final Lcom/android/server/power/stats/PowerSharingCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 10

    const/4 p0, 0x0

    invoke-virtual {p2, p3, p4, p0}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    move-result-wide p3

    const-wide/16 p5, 0x3e8

    div-long/2addr p3, p5

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount()J

    move-result-wide p5

    long-to-double p5, p5

    const-wide/16 v0, 0x0

    cmpl-double p2, p5, v0

    if-eqz p2, :cond_23

    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/16 p1, 0x13

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p5, p6, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_23
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/16 p0, 0x13

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
