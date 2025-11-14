.class public final Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "ambient.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 16

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenDozeEnergyConsumptionUC()J

    move-result-wide v3

    move-object/from16 v5, p7

    invoke-static {v3, v4, v5}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const/4 v11, 0x2

    if-eq v5, v11, :cond_1

    move-object/from16 v11, p0

    iget-object v3, v11, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v4, v3

    const-wide/16 v11, 0x0

    move v13, v6

    :goto_0
    if-ge v13, v4, :cond_0

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v14

    div-long/2addr v14, v9

    aget-object v9, v3, v13

    iget-wide v9, v9, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v14, v14

    mul-double/2addr v9, v14

    add-double/2addr v11, v9

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v9, 0x3e8

    goto :goto_0

    :cond_0
    :goto_1
    move-object/from16 v0, p1

    goto :goto_2

    :cond_1
    long-to-double v0, v3

    const-wide v2, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double v11, v0, v2

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v1, v11, v12, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0xf

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
