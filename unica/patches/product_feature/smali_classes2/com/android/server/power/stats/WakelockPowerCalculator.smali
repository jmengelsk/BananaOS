.class public final Lcom/android/server/power/stats/WakelockPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "cpu.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 32

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_0
    const-wide/16 v20, 0x3e8

    move-object/from16 v8, p0

    move-wide/from16 v22, v14

    iget-object v14, v8, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-ltz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v15, v24

    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    move/from16 v24, v7

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-wide/from16 v26, v18

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v6

    move-object/from16 v6, v28

    check-cast v6, Landroid/os/BatteryStats$Uid$Wakelock;

    move/from16 v28, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v30

    add-long v26, v30, v26

    :cond_0
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v28

    move-object/from16 v6, v29

    goto :goto_1

    :cond_1
    div-long v6, v26, v20

    move-wide/from16 v26, v11

    iget-wide v11, v14, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    move-wide/from16 v20, v11

    long-to-double v11, v6

    mul-double v11, v11, v20

    const/16 v8, 0xc

    invoke-virtual {v15, v8, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v14

    check-cast v14, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v14, v8, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v8

    if-nez v8, :cond_2

    add-long/2addr v9, v6

    add-double v20, v26, v11

    move-wide/from16 v26, v20

    :cond_2
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v8

    if-nez v8, :cond_3

    move-wide/from16 v16, v6

    move-object v13, v15

    move-wide v14, v11

    goto :goto_2

    :cond_3
    move-wide/from16 v14, v22

    :goto_2
    add-int/lit8 v7, v24, -0x1

    move-object/from16 v6, v25

    move-wide/from16 v11, v26

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    move-wide/from16 v26, v11

    invoke-virtual {v1, v4, v5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v11

    sub-long/2addr v6, v11

    div-long v6, v6, v20

    sub-long/2addr v6, v9

    cmp-long v8, v6, v18

    if-lez v8, :cond_5

    iget-wide v11, v14, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v14, v6

    mul-double/2addr v11, v14

    add-long v16, v16, v6

    add-double v6, v22, v11

    move-wide/from16 v11, v16

    goto :goto_3

    :cond_5
    move-wide/from16 v11, v18

    const-wide/16 v6, 0x0

    :goto_3
    if-eqz v13, :cond_6

    const/16 v8, 0xc

    invoke-virtual {v13, v8, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v11, v8, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v4

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v1

    sub-long/2addr v4, v1

    div-long v4, v4, v20

    cmp-long v1, v4, v18

    if-gez v1, :cond_7

    move-wide/from16 v11, v18

    goto :goto_4

    :cond_7
    move-wide v11, v4

    :goto_4
    invoke-virtual {v0, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    const/16 v8, 0xc

    invoke-virtual {v1, v8, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    add-double v11, v26, v6

    invoke-virtual {v1, v8, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    move-wide/from16 v9, v26

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
