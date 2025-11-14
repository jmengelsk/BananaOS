.class public final Lcom/android/server/power/stats/CameraPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "camera.avg"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_12
    if-ltz v6, :cond_5b

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getCameraEnergyConsumptionUC()J

    move-result-wide v10

    invoke-static {v10, v11, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v12

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    iget-object v13, v0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;J)J

    move-result-wide v14

    const/4 v9, 0x2

    if-ne v12, v9, :cond_45

    long-to-double v9, v10

    const-wide v16, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    mul-double v9, v9, v16

    move-object/from16 p6, v8

    goto :goto_4b

    :cond_45
    iget-wide v9, v13, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    move-object/from16 p6, v8

    long-to-double v7, v14

    mul-double/2addr v9, v7

    :goto_4b
    const/4 v7, 0x3

    move-object/from16 v8, p6

    invoke-virtual {v8, v7, v14, v15}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v8, v7, v9, v10, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto :goto_12

    :cond_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCameraEnergyConsumptionUC()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v8, p2

    invoke-virtual {v8, v2, v3, v7}, Landroid/os/BatteryStats;->getCameraOnTime(JI)J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    const/4 v8, 0x2

    if-ne v4, v8, :cond_78

    long-to-double v5, v5

    const-wide v8, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    :goto_76
    mul-double/2addr v5, v8

    goto :goto_7e

    :cond_78
    iget-object v0, v0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v5, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v8, v2

    goto :goto_76

    :goto_7e
    invoke-virtual {v1, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
