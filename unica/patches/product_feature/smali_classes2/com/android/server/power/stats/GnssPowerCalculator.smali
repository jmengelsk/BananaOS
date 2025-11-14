.class public final Lcom/android/server/power/stats/GnssPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAveragePowerGnssOn:D

.field public final mAveragePowerPerSignalQuality:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "gps.on"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const/4 v0, 0x2

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const-string/jumbo v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    iget-wide v7, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    cmpl-double v5, v7, v5

    const/4 v6, 0x2

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eqz v5, :cond_0

    move-object/from16 v9, p2

    const-wide/16 p5, 0x3e8

    const-wide/16 v20, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v16, v13

    move v5, v15

    const-wide/16 v7, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    move-object/from16 v9, p2

    const-wide/16 p5, 0x3e8

    invoke-virtual {v9, v5, v2, v3, v15}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    div-long v11, v18, p5

    add-long/2addr v7, v11

    iget-object v10, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    aget-wide v18, v10, v5

    long-to-double v10, v11

    mul-double v18, v18, v10

    add-double v16, v18, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p2

    const-wide/16 p5, 0x3e8

    const-wide/16 v20, 0x0

    cmp-long v0, v7, v20

    if-eqz v0, :cond_2

    long-to-double v7, v7

    div-double v7, v16, v7

    goto :goto_1

    :cond_2
    move-wide v7, v13

    :goto_1
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    :goto_2
    const-wide v16, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    if-ltz v5, :cond_6

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getGnssEnergyConsumptionUC()J

    move-result-wide v10

    invoke-static {v10, v11, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v6

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v15

    move-object/from16 v22, v0

    const/16 v0, -0x2710

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Sensor;

    if-nez v0, :cond_3

    move-wide/from16 v2, v20

    :goto_3
    const/4 v0, 0x2

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v2, v3, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v23

    div-long v23, v23, p5

    move-wide/from16 v2, v23

    goto :goto_3

    :goto_4
    if-eq v6, v0, :cond_4

    long-to-double v10, v2

    mul-double/2addr v10, v7

    const-wide v15, 0x414b774000000000L    # 3600000.0

    div-double/2addr v10, v15

    :goto_5
    const/16 v0, 0xa

    goto :goto_6

    :cond_4
    long-to-double v10, v10

    mul-double v10, v10, v16

    goto :goto_5

    :goto_6
    invoke-virtual {v12, v0, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v2, v0, v10, v11, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_5

    add-double/2addr v13, v10

    :cond_5
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v2, p3

    move-object/from16 v0, v22

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Landroid/os/BatteryStats;->getGnssEnergyConsumptionUC()J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    long-to-double v2, v2

    mul-double v2, v2, v16

    :goto_7
    const/4 v15, 0x0

    goto :goto_8

    :cond_7
    move-wide v2, v13

    goto :goto_7

    :goto_8
    invoke-virtual {v1, v15}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v2, v3, v0}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v13, v14, v0}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0xa

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
