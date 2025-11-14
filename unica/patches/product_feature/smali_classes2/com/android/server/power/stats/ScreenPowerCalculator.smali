.class public final Lcom/android/server/power/stats/ScreenPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_35

    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.full.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_35
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getScreenOnEnergyConsumptionUC()J

    move-result-wide v5

    move-object/from16 v7, p7

    invoke-static {v5, v6, v7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    if-eq v7, v15, :cond_70

    iget-object v5, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v6, v5

    move-wide/from16 p5, v11

    move-wide/from16 v18, v16

    move v11, v8

    :goto_27
    if-ge v11, v6, :cond_66

    invoke-virtual {v2, v11, v3, v4}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v20

    const-wide v22, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    div-long v13, v20, p5

    aget-object v12, v5, v11

    move-wide/from16 v20, v9

    iget-wide v8, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v12, v13

    mul-double/2addr v8, v12

    add-double v8, v8, v18

    move-wide/from16 v18, v8

    const/4 v8, 0x0

    :goto_41
    const/4 v9, 0x5

    if-ge v8, v9, :cond_60

    invoke-virtual {v2, v11, v8, v3, v4}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v9

    div-long v9, v9, p5

    iget-object v12, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v12, v12, v11

    iget-wide v12, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v9, v9

    mul-double/2addr v12, v9

    int-to-float v9, v8

    const/high16 v10, 0x3f000000  # 0.5f

    add-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v12, v9

    const-wide/high16 v9, 0x4014000000000000L  # 5.0

    div-double/2addr v12, v9

    add-double v18, v12, v18

    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :cond_60
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, v20

    const/4 v8, 0x0

    goto :goto_27

    :cond_66
    move-wide/from16 v20, v9

    const-wide v22, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    :goto_6d
    move-wide/from16 v5, v18

    goto :goto_7b

    :cond_70
    move-wide/from16 v20, v9

    const-wide v22, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    long-to-double v5, v5

    mul-double v18, v5, v22

    goto :goto_6d

    :goto_7b
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v8, 0x1

    if-eq v7, v15, :cond_f9

    new-instance v11, Landroid/util/SparseLongArray;

    invoke-direct {v11}, Landroid/util/SparseLongArray;-><init>()V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    sub-int/2addr v12, v8

    const-wide/16 v13, 0x0

    :goto_8e
    if-ltz v12, :cond_b3

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    move/from16 p2, v8

    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v8

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v9

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v11, v8, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v8

    if-nez v8, :cond_ae

    add-long/2addr v13, v9

    :cond_ae
    add-int/lit8 v12, v12, -0x1

    move/from16 v8, p2

    goto :goto_8e

    :cond_b3
    move/from16 p2, v8

    const-wide/32 v3, 0x927c0

    cmp-long v0, v13, v3

    if-ltz v0, :cond_ef

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c2
    if-ltz v0, :cond_ef

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v4

    move-wide/from16 v18, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v11, v4, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    long-to-double v8, v4

    mul-double v8, v8, v18

    move-wide/from16 p3, v8

    long-to-double v8, v13

    div-double v8, p3, v8

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    move/from16 v5, p2

    invoke-virtual {v3, v6, v8, v9, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v0, v0, -0x1

    move-wide/from16 v5, v18

    goto :goto_c2

    :cond_ef
    move-wide/from16 v18, v5

    move/from16 v5, p2

    move-wide/from16 v10, v18

    move-wide/from16 v8, v20

    :cond_f7
    const/4 v4, 0x0

    goto :goto_148

    :cond_f9
    move-wide/from16 v18, v5

    move v5, v8

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    move-wide/from16 v10, v16

    const-wide/16 v8, 0x0

    :goto_105
    if-ltz v6, :cond_f7

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v12

    invoke-virtual {v0, v12, v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v13

    move-object v15, v2

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getScreenOnEnergyConsumptionUC()J

    move-result-wide v2

    const-wide/16 v24, 0x0

    cmp-long v4, v2, v24

    if-gez v4, :cond_12d

    const-string/jumbo v2, "ScreenPowerCalculator"

    const-string/jumbo v3, "Screen energy not supported, so calculateApp shouldn\'t de called"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v2, v16

    :goto_12b
    const/4 v4, 0x0

    goto :goto_131

    :cond_12d
    long-to-double v2, v2

    mul-double v2, v2, v22

    goto :goto_12b

    :goto_131
    invoke-virtual {v5, v4, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v12, v4, v2, v3, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v5

    if-nez v5, :cond_142

    add-double/2addr v10, v2

    add-long/2addr v8, v13

    :cond_142
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v3, p3

    move-object v2, v15

    goto :goto_105

    :goto_148
    invoke-virtual {v1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    move-wide/from16 v2, v18

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    move-wide/from16 v2, v20

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v10, v11, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .registers 4

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .registers 6

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
