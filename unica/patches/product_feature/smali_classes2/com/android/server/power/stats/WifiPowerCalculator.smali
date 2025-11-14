.class public final Lcom/android/server/power/stats/WifiPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mHasWifiPowerController:Z

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mWifiPowerPerPacket:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.on"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.scan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.batchedscan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v2, "wifi.controller.tx"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v3, "wifi.controller.rx"

    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v2, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v3, "wifi.active"

    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x40ac200000000000L    # 3600.0

    div-double/2addr v3, v5

    const-wide v5, 0x404e848000000000L    # 61.03515625

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mWifiPowerPerPacket:D

    iget-wide v3, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    const-wide/16 v5, 0x0

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_0

    iget-wide v0, v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    cmpl-double p1, v0, v5

    if-eqz p1, :cond_0

    iget-wide v0, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    cmpl-double p1, v0, v5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    return-void
.end method


# virtual methods
.method public final calcPowerFromControllerDataMah(JJJ)D
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v0, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p1, p1

    mul-double/2addr v0, p1

    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide p1, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p3, p3

    mul-double/2addr p1, p3

    add-double/2addr p1, v0

    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide p3, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p5, p5

    mul-double/2addr p3, p5

    add-double/2addr p3, p1

    return-wide p3
.end method

.method public final calcPowerWithoutControllerDataMah(JJJJJ)D
    .locals 0

    add-long/2addr p1, p3

    long-to-double p1, p1

    iget-wide p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mWifiPowerPerPacket:D

    mul-double/2addr p1, p3

    iget-object p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide p3, p3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p5, p5

    mul-double/2addr p3, p5

    add-double/2addr p3, p1

    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide p1, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p5, p7

    mul-double/2addr p1, p5

    add-double/2addr p1, p3

    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide p3, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p5, p9

    mul-double/2addr p3, p5

    add-double/2addr p3, p1

    return-wide p3
.end method

.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v14, p7

    sget-object v1, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    const/16 v16, 0x0

    move v10, v2

    move-object/from16 v2, v16

    move-object/from16 v19, v2

    const-wide/16 v5, 0x0

    const-wide/16 v17, 0x0

    :goto_0
    const-wide/16 v20, 0x3e8

    iget-boolean v3, v0, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    const-wide v22, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    const/16 v4, 0xb

    if-ltz v10, :cond_f

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v7, v26

    check-cast v7, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v8, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v1, v8, :cond_1

    invoke-virtual {v14}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v4}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [D

    move-object v8, v1

    move-object/from16 v19, v8

    :goto_1
    move-object v9, v2

    goto :goto_2

    :cond_0
    move-object v9, v2

    move-object/from16 v8, v16

    goto :goto_2

    :cond_1
    move-object v8, v1

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getWifiEnergyConsumptionUC()J

    move-result-wide v1

    move-object/from16 v26, v15

    invoke-static {v1, v2, v14}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v15

    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v27

    move-wide/from16 v29, v1

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-virtual {v11, v4, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    move-wide/from16 v31, v1

    const/4 v1, 0x3

    invoke-virtual {v11, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v33

    invoke-virtual {v11, v4, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    invoke-virtual {v11, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    if-eqz v27, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v20

    move-object/from16 v25, v2

    move-object v2, v3

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v3

    move-wide/from16 v31, v5

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    add-long v33, v5, v20

    add-long v33, v33, v3

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    move-object v14, v1

    move-object/from16 v27, v7

    move-object/from16 v35, v8

    move-object/from16 v7, v19

    move-object/from16 v8, v25

    move-wide/from16 v36, v31

    const/16 v28, 0xb

    move/from16 v19, v10

    move-object v10, v2

    move-wide/from16 v1, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v1

    move-wide v12, v1

    goto :goto_3

    :cond_2
    move-object v14, v1

    move-object/from16 v27, v7

    move-object/from16 v35, v8

    move-object/from16 v7, v19

    move-object/from16 v8, v25

    move-wide/from16 v12, v29

    move-wide/from16 v36, v31

    const/16 v28, 0xb

    move/from16 v19, v10

    move-object v10, v2

    long-to-double v0, v12

    mul-double v0, v0, v22

    move-wide v12, v0

    :goto_3
    if-eqz v7, :cond_5

    const/4 v0, 0x0

    :goto_4
    array-length v1, v7

    if-ge v0, v1, :cond_5

    aget-object v1, v7, v0

    iget v1, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v1, :cond_3

    move/from16 v20, v0

    goto :goto_5

    :cond_3
    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v2

    move-wide v5, v2

    invoke-virtual {v10, v1}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v3

    move-wide/from16 v20, v5

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v5

    move-wide/from16 v1, v20

    move/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v1

    aput-wide v1, v9, v20

    goto :goto_5

    :cond_4
    move/from16 v20, v0

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiEnergyConsumptionUC(I)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double v0, v0, v22

    aput-wide v0, v9, v20

    :goto_5
    add-int/lit8 v0, v20, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v25, v7

    move-object v2, v9

    move-wide v3, v12

    move/from16 p5, v15

    move-object/from16 v0, v27

    move/from16 v7, v28

    move-object/from16 v1, v35

    const/4 v8, 0x1

    const-wide/16 v14, 0x0

    goto/16 :goto_8

    :cond_6
    move-wide/from16 v36, v5

    move-object/from16 v27, v7

    move-object/from16 v35, v8

    move-object/from16 v7, v19

    const/16 v28, 0xb

    move/from16 v19, v10

    const-wide/16 v0, 0x0

    if-eqz v9, :cond_7

    invoke-static {v9, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    move-wide v3, v0

    move-object/from16 v25, v7

    move-object v2, v9

    move/from16 p5, v15

    move/from16 v7, v28

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    move-wide v14, v3

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    goto/16 :goto_9

    :cond_7
    move-wide v3, v0

    move-object/from16 v25, v7

    move-object v2, v9

    move/from16 p5, v15

    move/from16 v7, v28

    const/4 v8, 0x1

    const-wide/16 v33, 0x0

    move-wide v14, v3

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    goto/16 :goto_8

    :cond_8
    move-wide/from16 v36, v5

    move-object/from16 v27, v7

    move-object/from16 v35, v8

    move-object/from16 v7, v19

    move-wide/from16 v12, v29

    const-wide/16 v0, 0x0

    const/16 v28, 0xb

    move/from16 v19, v10

    move-wide/from16 v3, p3

    const/4 v2, 0x0

    invoke-virtual {v11, v3, v4, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    div-long v5, v5, v20

    const/4 v8, 0x1

    if-ne v15, v8, :cond_a

    invoke-virtual {v11, v3, v4, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v12

    div-long v12, v12, v20

    move v10, v2

    const-wide/16 v22, 0x0

    :goto_6
    const/4 v14, 0x5

    if-ge v10, v14, :cond_9

    invoke-virtual {v11, v10, v3, v4, v2}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v24

    div-long v24, v24, v20

    add-long v22, v24, v22

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v25, v7

    move/from16 v24, v8

    move-wide v7, v12

    move/from16 p5, v15

    move-wide/from16 v3, v33

    move-wide v14, v0

    move-object v12, v9

    move-wide/from16 v9, v22

    move-wide/from16 v1, v31

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerWithoutControllerDataMah(JJJJJ)D

    move-result-wide v1

    move-wide v3, v1

    move-object v2, v12

    move/from16 v8, v24

    move-object/from16 v0, v27

    move/from16 v7, v28

    move-object/from16 v1, v35

    goto :goto_7

    :cond_a
    move-object/from16 v25, v7

    move-object v2, v9

    move/from16 p5, v15

    move/from16 v7, v28

    move-wide v14, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    long-to-double v3, v12

    mul-double v3, v3, v22

    :goto_7
    if-eqz v2, :cond_b

    invoke-static {v2, v14, v15}, Ljava/util/Arrays;->fill([DD)V

    goto :goto_9

    :cond_b
    move-wide/from16 v33, v5

    :goto_8
    move-wide/from16 v5, v33

    :goto_9
    invoke-virtual {v0}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v9

    if-nez v9, :cond_c

    add-long v17, v17, v5

    move-wide/from16 v9, v36

    add-double/2addr v9, v3

    goto :goto_a

    :cond_c
    move-wide/from16 v9, v36

    :goto_a
    invoke-virtual {v0, v7, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move/from16 v5, p5

    invoke-virtual {v0, v7, v3, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_e

    const/4 v7, 0x0

    :goto_b
    array-length v3, v1

    if-ge v7, v3, :cond_e

    aget-object v3, v1, v7

    iget v4, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v4, :cond_d

    goto :goto_c

    :cond_d
    aget-wide v11, v2, v7

    invoke-virtual {v0, v3, v11, v12, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v19, -0x1

    move-object/from16 v14, p7

    move v7, v8

    move-wide v5, v9

    move-object/from16 v19, v25

    move-object/from16 v15, v26

    move v10, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_f
    move v7, v4

    move-wide v9, v5

    const/4 v8, 0x1

    const-wide/16 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiEnergyConsumptionUC()J

    move-result-wide v0

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v2

    const/4 v4, 0x2

    if-ne v11, v4, :cond_10

    long-to-double v0, v0

    mul-double v0, v0, v22

    goto :goto_d

    :cond_10
    move-wide v0, v14

    :goto_d
    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v19

    add-long v21, v5, v19

    add-long v21, v21, v12

    if-ne v11, v8, :cond_14

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v23, v0, v2

    cmpl-double v0, v23, v14

    if-nez v0, :cond_11

    move-object/from16 v0, p0

    move-wide v3, v12

    move-wide/from16 v1, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v0

    goto :goto_e

    :cond_11
    move-wide/from16 v0, v23

    goto :goto_e

    :cond_12
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-wide/from16 v12, p3

    const/4 v4, 0x0

    invoke-virtual {v3, v12, v13, v4}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v5

    div-long v3, v5, v20

    if-ne v11, v8, :cond_13

    iget-object v0, v2, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v0, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v5, v3

    mul-double/2addr v0, v5

    :cond_13
    move-wide/from16 v21, v3

    :cond_14
    :goto_e
    sub-long v2, v21, v17

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-double/2addr v0, v9

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-object/from16 v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v5

    invoke-virtual {v5, v7, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v2

    check-cast v2, Landroid/os/AggregateBatteryConsumer$Builder;

    add-double v5, v9, v0

    invoke-virtual {v2, v7, v5, v6, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v4, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0xb

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
