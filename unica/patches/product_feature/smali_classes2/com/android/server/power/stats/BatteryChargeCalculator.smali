.class public final Lcom/android/server/power/stats/BatteryChargeCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBatteryRatedCapacity:D

.field public final mBatteryTypicalCapacity:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryTypicalCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 16

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result p6

    invoke-virtual {p1, p6}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result p6

    int-to-double v0, p6

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result p0

    mul-int/2addr p0, p6

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result p0

    mul-int/2addr p0, p6

    int-to-double p6, p0

    div-double/2addr p6, v2

    invoke-virtual {p1, v0, v1, p6, p7}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-eqz p0, :cond_46

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    :cond_46
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p3

    cmp-long p0, p3, v6

    if-eqz p0, :cond_52

    div-long/2addr p3, v4

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    :cond_52
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide p2

    div-long/2addr p2, v4

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-nez p0, :cond_65

    add-double/2addr v0, p6

    const-wide/high16 p2, 0x4000000000000000L  # 2.0

    div-double/2addr v0, p2

    const-wide/high16 p2, 0x3fe0000000000000L  # 0.5

    add-double/2addr v0, p2

    double-to-long p2, v0

    :cond_65
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    long-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
