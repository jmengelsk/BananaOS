.class public final Lcom/android/server/power/stats/FlashlightPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "camera.flashlight"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/FlashlightPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p5

    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result p6

    const/4 p7, 0x1

    sub-int/2addr p6, p7

    :goto_0
    if-ltz p6, :cond_0

    invoke-virtual {p5, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v0}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/stats/FlashlightPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;J)J

    move-result-wide v3

    iget-wide v1, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v5, v3

    mul-double/2addr v1, v5

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 p6, p6, -0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    iget-object p0, p0, Lcom/android/server/power/stats/FlashlightPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v0, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/4 p4, 0x6

    invoke-virtual {p0, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {p0, p4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    invoke-virtual {p0, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {p0, p4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
