.class public final Lcom/android/server/power/stats/BluetoothPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mHasBluetoothPowerController:Z

.field public final mIdleMa:D

.field public final mRxMa:D

.field public final mTxMa:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    const-string/jumbo v2, "bluetooth.controller.rx"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    const-string/jumbo v4, "bluetooth.controller.tx"

    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    const-wide/16 v6, 0x0

    cmpl-double p1, v0, v6

    if-eqz p1, :cond_2e

    cmpl-double p1, v2, v6

    if-eqz p1, :cond_2e

    cmpl-double p1, v4, v6

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    iput-boolean p1, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    sget-object v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    new-instance v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    move v13, v3

    :goto_1d
    const/4 v14, 0x0

    const/4 v15, 0x2

    if-ltz v13, :cond_a6

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v4, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v4, :cond_3e

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v3, v15}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v4, v2

    new-array v4, v4, [D

    iput-object v4, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :cond_3e
    :goto_3e
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC()J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v5

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v9

    move-object v12, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    iget-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v12, v15, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v6, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v3, v15, v6, v7, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_81

    iget-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v6, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v3, v6

    iput-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    iget-wide v6, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v3, v6

    iput-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    :cond_81
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v3, :cond_a1

    :goto_8b
    iget-object v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v4, v3

    if-ge v14, v4, :cond_a1

    aget-object v3, v3, v14

    iget v4, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v4, :cond_97

    goto :goto_9e

    :cond_97
    iget-object v4, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    aget-wide v6, v4, v14

    invoke-virtual {v12, v3, v6, v7, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_9e
    add-int/lit8 v14, v14, 0x1

    goto :goto_8b

    :cond_a1
    add-int/lit8 v13, v13, -0x1

    const/4 v12, 0x1

    goto/16 :goto_1d

    :cond_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothEnergyConsumptionUC()J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v9

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    iget-wide v1, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    invoke-virtual {v0, v14}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    iget-wide v2, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v1, v15, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v2, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-wide v6, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {v1, v15, v2, v3, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v1, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v1, v10, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    invoke-virtual {v0, v15, v1, v2, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    if-nez p5, :cond_16

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v0, :cond_ca

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    return-void

    :cond_16
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    add-long v15, v13, v9

    move-wide/from16 v17, v2

    add-long v2, v15, v11

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v2, 0x2

    move/from16 v3, p2

    if-ne v3, v2, :cond_68

    move-wide/from16 v2, p3

    long-to-double v2, v2

    const-wide v4, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    if-eqz v0, :cond_ca

    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_ca

    :goto_4f
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v2

    if-ge v7, v3, :cond_ca

    aget-object v2, v2, v7

    iget v2, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_5b

    goto :goto_65

    :cond_5b
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC(I)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v8, v4

    aput-wide v8, v3, v7

    :goto_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    :cond_68
    if-nez p6, :cond_89

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v15, 0x414b774000000000L  # 3600000.0

    div-double/2addr v2, v15

    cmpl-double v0, v2, v17

    if-eqz v0, :cond_89

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v0, :cond_ca

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    return-void

    :cond_89
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    if-eqz v0, :cond_bf

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v0, :cond_ca

    move v0, v7

    :goto_9a
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v2

    if-ge v0, v3, :cond_ca

    aget-object v2, v2, v0

    iget v2, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_a6

    goto :goto_bc

    :cond_a6
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v8

    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v10

    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v12

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v8

    aput-wide v8, v3, v0

    :goto_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    :cond_bf
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v0, :cond_ca

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :cond_ca
    return-void
.end method

.method public final calculatePowerMah(JJJ)D
    .registers 9

    long-to-double p5, p5

    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr p5, v0

    long-to-double p1, p1

    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr p1, v0

    add-double/2addr p1, p5

    long-to-double p3, p3

    iget-wide p5, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr p3, p5

    add-double/2addr p3, p1

    const-wide p0, 0x414b774000000000L  # 3600000.0

    div-double/2addr p3, p0

    return-wide p3
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
