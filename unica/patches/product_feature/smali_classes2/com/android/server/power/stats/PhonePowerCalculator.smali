.class public final Lcom/android/server/power/stats/PhonePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.active"

    const-wide v2, 0x4056800000000000L  # 90.0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/PhonePowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 11

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getPhoneEnergyConsumptionUC()J

    move-result-wide p5

    invoke-static {p5, p6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result p7

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    const/4 p4, 0x2

    if-eq p7, p4, :cond_1a

    iget-object p0, p0, Lcom/android/server/power/stats/PhonePowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide p4, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v1, p2

    :goto_18
    mul-double/2addr p4, v1

    goto :goto_21

    :cond_1a
    long-to-double p4, p5

    const-wide v1, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    goto :goto_18

    :goto_21
    const-wide/16 v1, 0x0

    cmpl-double p0, p4, v1

    if-nez p0, :cond_28

    return-void

    :cond_28
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/16 p1, 0xe

    invoke-virtual {p0, p1, p4, p5, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/16 p0, 0xe

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
