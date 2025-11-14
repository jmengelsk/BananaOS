.class public final Lcom/android/server/power/stats/CpuPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mNumCpuClusters:I

.field public final mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v2, "cpu.active"

    invoke-virtual {p2, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    move v2, v1

    :goto_21
    array-length v3, v0

    if-ge v2, v3, :cond_36

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget v5, v0, v2

    invoke-virtual {p2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    new-array v2, v2, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move v2, v1

    move v3, v2

    :goto_46
    array-length v4, v0

    if-ge v2, v4, :cond_76

    aget v4, v0, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v7, v5

    new-array v7, v7, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aput-object v7, v6, v2

    move v6, v1

    :goto_57
    array-length v7, v5

    if-ge v6, v7, :cond_73

    new-instance v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p2, v4, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v8, v8, v2

    aput-object v7, v8, v6

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    add-int/lit8 v9, v3, 0x1

    aput-object v7, v8, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v9

    goto :goto_57

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_76
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p7

    sget-object v1, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    new-array v2, v2, [J

    move-object v9, v2

    goto :goto_19

    :cond_18
    const/4 v9, 0x0

    :goto_19
    invoke-virtual {v6}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    move v14, v2

    const-wide/16 v2, 0x0

    const/4 v15, 0x0

    :goto_27
    const/4 v4, 0x0

    const-wide v16, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    if-ltz v14, :cond_1f5

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v12, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v1, v12, :cond_45

    invoke-virtual {v7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v8, v11}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    :cond_45
    move-object v12, v1

    goto :goto_48

    :cond_47
    const/4 v12, 0x0

    :goto_48
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v1

    move-object v13, v12

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC()J

    move-result-wide v11

    invoke-static {v11, v12, v7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v5

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v19

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v21

    add-long v21, v21, v19

    const-wide/16 v19, 0x3e8

    div-long v21, v21, v19

    const/4 v4, 0x2

    if-eq v5, v4, :cond_85

    move-wide/from16 v23, v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v2

    move/from16 v18, v4

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v4

    move v12, v5

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v2

    move v0, v11

    move/from16 v4, v18

    move-wide/from16 v36, v2

    move v2, v12

    move-wide/from16 v11, v36

    goto :goto_8c

    :cond_85
    move-wide/from16 v23, v2

    move v2, v5

    const/4 v0, 0x0

    long-to-double v11, v11

    mul-double v11, v11, v16

    :goto_8c
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const-wide/16 v18, 0x0

    move v4, v0

    move-wide/from16 v25, v18

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    :goto_9d
    if-ge v4, v5, :cond_fa

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v3, v30

    check-cast v3, Ljava/lang/String;

    move/from16 v30, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v32

    add-long v25, v32, v25

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v32

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v34

    add-long v34, v34, v32

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v32

    move v0, v5

    add-long v4, v32, v34

    move/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v27, v10

    if-eqz v0, :cond_ec

    const-string v10, "*"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_dc

    goto :goto_ec

    :cond_dc
    long-to-double v4, v4

    cmpg-double v33, v28, v4

    if-gez v33, :cond_ea

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_ea

    :goto_e7
    move-wide/from16 v28, v4

    goto :goto_ee

    :cond_ea
    move-object v3, v0

    goto :goto_ee

    :cond_ec
    :goto_ec
    long-to-double v4, v4

    goto :goto_e7

    :goto_ee
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v10, v27

    move/from16 v5, v32

    const/4 v0, 0x0

    move-object/from16 v27, v3

    move-object/from16 v3, v31

    goto :goto_9d

    :cond_fa
    move-object/from16 v0, v27

    move-object/from16 v27, v10

    cmp-long v3, v25, v21

    if-lez v3, :cond_106

    move-wide/from16 v3, v25

    :goto_104
    const/4 v5, 0x1

    goto :goto_109

    :cond_106
    move-wide/from16 v3, v21

    goto :goto_104

    :goto_109
    invoke-virtual {v8, v5, v11, v12, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v10

    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v10, v5, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v3, v0}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_125

    if-eqz v13, :cond_125

    if-eq v2, v5, :cond_14d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_12e

    :cond_125
    move-object v5, v9

    move-wide/from16 v9, v23

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v11

    goto/16 :goto_1e0

    :cond_12e
    array-length v0, v13

    const/4 v4, 0x0

    :goto_130
    if-ge v4, v0, :cond_125

    aget-object v2, v13, v4

    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_13a

    move v5, v4

    goto :goto_14a

    :cond_13a
    move v5, v4

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC(I)J

    move-result-wide v3

    cmp-long v10, v3, v18

    if-eqz v10, :cond_14a

    long-to-double v3, v3

    mul-double v3, v3, v16

    const/4 v10, 0x2

    invoke-virtual {v8, v2, v3, v4, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_14a
    :goto_14a
    add-int/lit8 v4, v5, 0x1

    goto :goto_130

    :cond_14d
    if-nez v15, :cond_155

    const/4 v0, 0x5

    new-array v15, v0, [D

    const-wide/16 v2, 0x0

    goto :goto_15a

    :cond_155
    const-wide/16 v2, 0x0

    invoke-static {v15, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :goto_15a
    const/4 v10, 0x0

    :goto_15b
    const/4 v0, 0x7

    if-ge v10, v0, :cond_19d

    invoke-static {v10}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v16

    if-nez v16, :cond_171

    :cond_164
    move-object/from16 v0, p0

    move-wide/from16 v21, v2

    move-object v5, v9

    move/from16 v19, v10

    move-wide/from16 v9, v23

    move-wide/from16 v23, v11

    const/4 v11, 0x0

    goto :goto_192

    :cond_171
    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v0

    if-eqz v0, :cond_164

    aget-wide v17, v15, v16

    const/4 v4, 0x0

    move-wide/from16 v19, v2

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v5, v9

    move-wide/from16 v21, v19

    move/from16 v19, v10

    move-wide/from16 v9, v23

    move-wide/from16 v23, v11

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v2

    add-double v17, v17, v2

    aput-wide v17, v15, v16

    :goto_192
    add-int/lit8 v2, v19, 0x1

    move-wide/from16 v11, v23

    move-wide/from16 v23, v9

    move v10, v2

    move-object v9, v5

    move-wide/from16 v2, v21

    goto :goto_15b

    :cond_19d
    move-object/from16 v0, p0

    move-wide/from16 v21, v2

    move-object v5, v9

    move-wide/from16 v9, v23

    move-wide/from16 v23, v11

    const/4 v11, 0x0

    array-length v2, v13

    move v4, v11

    :goto_1a9
    if-ge v4, v2, :cond_1e0

    aget-object v3, v13, v4

    iget v11, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v11, :cond_1b6

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1d7

    :cond_1b6
    invoke-virtual {v1, v11}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime(I)J

    move-result-wide v11

    move-object/from16 v16, v1

    iget v1, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    aget-wide v17, v15, v1

    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v0, v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    move-wide/from16 v19, v0

    long-to-double v0, v11

    mul-double v0, v0, v19

    add-double v0, v0, v17

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-virtual {v8, v3, v0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v0, v3, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_1d7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1a9

    :cond_1e0
    :goto_1e0
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_1e9

    add-double v2, v9, v23

    goto :goto_1ea

    :cond_1e9
    move-wide v2, v9

    :goto_1ea
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    move-object v9, v5

    move-object v1, v13

    move-object/from16 v10, v27

    const/4 v11, 0x1

    goto/16 :goto_27

    :cond_1f5
    move-wide v9, v2

    move v11, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuEnergyConsumptionUC()J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v6, v11}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_212

    long-to-double v0, v0

    mul-double v0, v0, v16

    move-wide v9, v0

    :cond_212
    invoke-virtual {v3, v5, v9, v10, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v3, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    move-wide/from16 v5, p2

    long-to-double v5, v5

    mul-double/2addr v3, v5

    const-string v5, " actual # "

    const-string/jumbo v6, "UID "

    const-string v7, "CpuPowerCalculator"

    const/4 v8, 0x0

    if-eqz v1, :cond_49

    array-length v9, v1

    iget v10, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ne v9, v10, :cond_2e

    move v9, v8

    :goto_1e
    if-ge v9, v10, :cond_49

    iget-object v11, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v11, v11, v9

    aget-wide v12, v1, v9

    iget-wide v14, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v11, v12

    mul-double/2addr v14, v11

    add-double/2addr v3, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_2e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-static {v9, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_49
    if-eqz v2, :cond_7d

    array-length v1, v2

    iget-object v0, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v9, v0

    if-ne v1, v9, :cond_61

    :goto_51
    array-length v1, v2

    if-ge v8, v1, :cond_60

    aget-object v1, v0, v8

    aget-wide v5, v2, v8

    iget-wide v9, v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v5, v5

    mul-double/2addr v9, v5

    add-double/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    :cond_60
    return-wide v3

    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CPU freq # mismatch: Power Profile # "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v2

    invoke-static {v1, v0, v7}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_7d
    return-wide v3
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
