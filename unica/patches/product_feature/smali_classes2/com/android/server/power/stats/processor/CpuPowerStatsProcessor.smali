.class public final Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HOUR_IN_MILLIS:D


# instance fields
.field public mCombinedEnergyConsumerToPowerBracketMap:[[I

.field public final mCpuClusterCount:I

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuScalingStepCount:I

.field public mEnergyConsumerToCombinedEnergyConsumerMap:[I

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerMultiplierForCpuActive:D

.field public final mPowerMultipliersByCluster:[D

.field public final mPowerMultipliersByScalingStep:[D

.field public final mScalingStepToCluster:[I

.field public mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public mTmpWakelockDeviceStats:[J

.field public mTmpWakelockUidStats:[J

.field public mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    sget-wide v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    if-ge v2, v4, :cond_1

    aget v4, v0, v2

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    invoke-virtual {p2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    move-result-wide v8

    div-double/2addr v8, v5

    aput-wide v8, v7, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    move v8, v1

    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_0

    iget-object v9, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aput v2, v9, v3

    iget-object v9, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    invoke-virtual {p2, v4, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v10

    div-double/2addr v10, v5

    aput-wide v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "cpu.active"

    invoke-virtual {p2, p1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide p1

    div-double/2addr p1, v5

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    :goto_0
    const/16 p2, 0x0

    goto/16 :goto_c

    :cond_1
    iput-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iget-object v8, v2, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v9, "dt"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    const-string/jumbo v9, "dtc"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    const-string/jumbo v9, "dc"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    const-string/jumbo v9, "dcc"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    const-string/jumbo v9, "ub"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    const-string/jumbo v9, "us"

    invoke-static {v9, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Ljava/lang/String;Landroid/os/PersistableBundle;)[I

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    if-nez v8, :cond_2

    iget v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    new-array v8, v8, [I

    iput-object v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    :cond_2
    iput v6, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    iget-object v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    aget v11, v8, v10

    iget v12, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-lt v11, v12, :cond_3

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    iput-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v8, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v8, v8, [J

    iput-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iput-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget v3, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    new-array v8, v2, [I

    iput-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    new-array v8, v2, [[I

    iput-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    iget-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v8

    array-length v9, v8

    if-ne v2, v9, :cond_e

    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v2, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    array-length v3, v8

    new-array v9, v3, [Landroid/util/ArraySet;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    array-length v12, v8

    if-ge v10, v12, :cond_7

    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    aget v13, v8, v10

    invoke-virtual {v12, v13}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v12

    new-instance v13, Landroid/util/ArraySet;

    array-length v14, v12

    invoke-direct {v13, v14}, Landroid/util/ArraySet;-><init>(I)V

    aput-object v13, v9, v10

    const/4 v13, 0x0

    :goto_3
    array-length v14, v12

    if-ge v13, v14, :cond_6

    aget-object v14, v9, v10

    add-int/lit8 v15, v11, 0x1

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move v11, v15

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    array-length v2, v8

    new-array v8, v2, [Landroid/util/ArraySet;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v10, v3, :cond_c

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_a

    aget-object v13, v8, v12

    aget-object v14, v9, v10

    const/16 p2, 0x0

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v15, v4, :cond_9

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    const/16 p2, 0x0

    move v12, v5

    :goto_7
    if-eq v12, v5, :cond_b

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v12, v4, v10

    aget-object v4, v8, v12

    aget-object v12, v9, v10

    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_8

    :cond_b
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v11, v4, v10

    add-int/lit8 v4, v11, 0x1

    aget-object v12, v9, v10

    aput-object v12, v8, v11

    move v11, v4

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    const/16 p2, 0x0

    sub-int/2addr v2, v6

    :goto_9
    if-ltz v2, :cond_10

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v4, v8, v2

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [I

    aput-object v4, v3, v2

    aget-object v3, v8, v2

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v6

    :goto_a
    if-ltz v3, :cond_d

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v4, v4, v2

    aget-object v9, v8, v2

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_e
    const/16 p2, 0x0

    new-array v2, v3, [I

    move/from16 v4, p2

    :goto_b
    if-ge v4, v3, :cond_f

    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_f
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aput-object v2, v3, p2

    :cond_10
    :goto_c
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_11

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_11
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v3, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    const-string v4, ", expected: "

    const-string v8, "CpuPowerStatsProcessor"

    iget v9, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    if-eq v3, v9, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Mismatched CPU scaling step count in PowerStats: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget v2, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    iget v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-eq v2, v3, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Mismatched CPU cluster count in PowerStats: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    new-array v2, v9, [J

    new-array v4, v3, [J

    new-array v8, v3, [J

    iget-object v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v10, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v6

    move/from16 p3, v6

    const-wide/16 v6, 0x0

    const-wide/16 v14, 0x0

    :goto_d
    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    if-ltz v11, :cond_17

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    const-wide/16 v18, 0x0

    move-object/from16 v12, v17

    check-cast v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v12, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v12, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v12

    if-nez v12, :cond_14

    move-object/from16 v17, v2

    goto :goto_10

    :cond_14
    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v12, v13}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v12

    add-long/2addr v6, v12

    move/from16 v12, p2

    :goto_e
    if-ge v12, v3, :cond_15

    aget-wide v20, v4, v12

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v13, v13, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    add-int/2addr v13, v12

    aget-wide v22, v2, v13

    add-long v20, v20, v22

    aput-wide v20, v4, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v17

    goto :goto_e

    :cond_15
    move-object/from16 v17, v2

    move/from16 v2, p2

    :goto_f
    if-ge v2, v9, :cond_16

    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v12, v12, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr v12, v2

    aget-wide v12, v13, v12

    add-long/2addr v14, v12

    aget-wide v20, v17, v2

    add-long v20, v20, v12

    aput-wide v20, v17, v2

    aget v20, v5, v2

    aget-wide v21, v8, v20

    add-long v21, v21, v12

    aput-wide v21, v8, v20

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_16
    :goto_10
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v2, v17

    goto :goto_d

    :cond_17
    move-object/from16 v17, v2

    const-wide/16 v18, 0x0

    cmp-long v2, v14, v18

    if-nez v2, :cond_18

    :goto_11
    return-void

    :cond_18
    long-to-double v6, v6

    iget-wide v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    mul-double/2addr v10, v6

    new-array v2, v3, [D

    move/from16 v6, p2

    :goto_12
    if-ge v6, v3, :cond_19

    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    aget-wide v12, v7, v6

    move-object/from16 v20, v2

    move v7, v3

    aget-wide v2, v4, v6

    long-to-double v2, v2

    mul-double/2addr v12, v2

    aput-wide v12, v20, v6

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    move-object/from16 v2, v20

    goto :goto_12

    :cond_19
    move-object/from16 v20, v2

    new-array v2, v9, [D

    move/from16 v3, p2

    :goto_13
    if-ge v3, v9, :cond_1b

    aget v4, v5, v3

    aget-wide v6, v17, v3

    long-to-double v6, v6

    mul-double v12, v10, v6

    move-object/from16 v21, v2

    move/from16 v22, v3

    long-to-double v2, v14

    div-double/2addr v12, v2

    aget-wide v2, v8, v4

    cmp-long v23, v2, v18

    if-eqz v23, :cond_1a

    aget-wide v23, v20, v4

    mul-double v23, v23, v6

    long-to-double v2, v2

    div-double v23, v23, v2

    add-double v12, v23, v12

    :cond_1a
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    aget-wide v2, v2, v22

    mul-double/2addr v2, v6

    add-double/2addr v2, v12

    aput-wide v2, v21, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v2, v21

    goto :goto_13

    :cond_1b
    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-nez v2, :cond_1c

    :goto_14
    const/4 v2, 0x0

    goto :goto_15

    :cond_1c
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez v2, :cond_1d

    goto :goto_14

    :cond_1d
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v3, :cond_1e

    goto :goto_14

    :cond_1e
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    iput-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v4, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v4, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v4, v3, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    iget v3, v3, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    :cond_20
    :goto_15
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v4, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    iget v5, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    iget-object v6, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    iget v3, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move v9, v8

    const/4 v8, 0x0

    :goto_16
    if-ltz v9, :cond_30

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    new-instance v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    const-wide v22, 0x412e848000000000L    # 1000000.0

    new-array v10, v5, [J

    iput-object v10, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    new-array v10, v5, [D

    iput-object v10, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    iget-object v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v11, v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v11, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v10

    if-nez v10, :cond_21

    move/from16 v16, v3

    move/from16 v20, v4

    move v14, v5

    move-object/from16 v28, v6

    goto/16 :goto_23

    :cond_21
    move/from16 v10, p2

    :goto_17
    if-ge v10, v4, :cond_23

    const-wide/16 v24, 0x0

    aget-wide v12, v17, v10

    cmp-long v14, v12, v18

    if-nez v14, :cond_22

    move/from16 v16, v3

    move/from16 v20, v4

    move v14, v5

    move-object/from16 v28, v6

    goto :goto_18

    :cond_22
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v14, v14, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr v14, v10

    move/from16 v20, v4

    aget-wide v3, v3, v14

    aget-wide v26, v21, v10

    move v14, v5

    move-object/from16 v28, v6

    long-to-double v5, v3

    mul-double v26, v26, v5

    long-to-double v5, v12

    div-double v26, v26, v5

    aget v5, v28, v10

    iget-object v6, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v12, v6, v5

    add-long/2addr v12, v3

    aput-wide v12, v6, v5

    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v12, v3, v5

    add-double v12, v12, v26

    aput-wide v12, v3, v5

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move v5, v14

    move/from16 v3, v16

    move/from16 v4, v20

    move-object/from16 v6, v28

    goto :goto_17

    :cond_23
    move/from16 v16, v3

    move/from16 v20, v4

    move v14, v5

    move-object/from16 v28, v6

    const-wide/16 v24, 0x0

    if-eqz v16, :cond_2b

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v3, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-nez v3, :cond_24

    goto/16 :goto_1f

    :cond_24
    if-nez v8, :cond_25

    new-array v8, v3, [J

    goto :goto_19

    :cond_25
    move-wide/from16 v4, v18

    invoke-static {v8, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    :goto_19
    move/from16 v4, p2

    :goto_1a
    if-ge v4, v3, :cond_26

    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aget v5, v5, v4

    aget-wide v12, v8, v5

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v6, v4, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v26

    add-long v26, v26, v12

    aput-wide v26, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_26
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_1b
    if-ltz v3, :cond_2b

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v4, v4, v3

    if-nez v4, :cond_27

    move/from16 v26, v3

    goto :goto_1e

    :cond_27
    aget-wide v5, v8, v3

    long-to-double v5, v5

    const-wide v12, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr v5, v12

    array-length v10, v4

    move/from16 v26, v3

    move-wide/from16 v12, v24

    move/from16 v3, p2

    :goto_1c
    if-ge v3, v10, :cond_28

    aget v27, v4, v3

    move/from16 v29, v3

    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v30, v3, v27

    add-double v12, v12, v30

    add-int/lit8 v3, v29, 0x1

    goto :goto_1c

    :cond_28
    cmpl-double v3, v12, v24

    if-nez v3, :cond_29

    goto :goto_1e

    :cond_29
    array-length v3, v4

    move/from16 v10, p2

    :goto_1d
    if-ge v10, v3, :cond_2a

    aget v27, v4, v10

    move/from16 v29, v3

    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v30, v3, v27

    mul-double v30, v30, v5

    div-double v30, v30, v12

    aput-wide v30, v3, v27

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v29

    goto :goto_1d

    :cond_2a
    :goto_1e
    add-int/lit8 v3, v26, -0x1

    goto :goto_1b

    :cond_2b
    :goto_1f
    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v4, v24

    :goto_20
    if-ltz v3, :cond_2c

    iget-object v6, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v12, v6, v3

    add-double/2addr v4, v12

    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    :cond_2c
    if-eqz v2, :cond_2e

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    invoke-virtual {v2, v11, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    iget v3, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_2d

    move-wide/from16 v12, v24

    goto :goto_21

    :cond_2d
    aget-wide v12, v6, v3

    long-to-double v12, v12

    div-double v12, v12, v22

    :goto_21
    sub-double/2addr v4, v12

    move-wide/from16 v12, v24

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_22

    :cond_2e
    move-wide/from16 v12, v24

    :goto_22
    cmpl-double v3, v4, v12

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v11, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_2f
    :goto_23
    add-int/lit8 v9, v9, -0x1

    move v5, v14

    move/from16 v3, v16

    move/from16 v4, v20

    move-object/from16 v6, v28

    const-wide/16 v18, 0x0

    goto/16 :goto_16

    :cond_30
    const-wide v22, 0x412e848000000000L    # 1000000.0

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_24
    if-ltz v3, :cond_33

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    new-instance v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v6, v6, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    new-array v7, v6, [J

    iput-object v7, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    new-array v7, v6, [D

    iput-object v7, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_25
    if-ltz v7, :cond_32

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v9, p2

    :goto_26
    if-ge v9, v6, :cond_31

    iget-object v10, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v11, v10, v9

    iget-object v13, v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v13, v13, v9

    add-long/2addr v11, v13

    aput-wide v11, v10, v9

    iget-object v10, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v11, v10, v9

    iget-object v13, v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v13, v13, v9

    add-double/2addr v11, v13

    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_31
    add-int/lit8 v7, v7, -0x1

    goto :goto_25

    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    :cond_33
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_27
    if-ltz v4, :cond_3d

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    move/from16 v6, p2

    :goto_28
    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3c

    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    move/from16 v9, p2

    :goto_29
    iget-object v10, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3b

    iget-object v10, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v12, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v5, v12, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v11

    if-nez v11, :cond_34

    move-object/from16 p3, v3

    move/from16 v16, v4

    move/from16 v17, v6

    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_2f

    :cond_34
    move/from16 v11, p2

    const-wide/16 v12, 0x0

    :goto_2a
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v15, v14, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-ge v11, v15, :cond_37

    iget-object v15, v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    move-object/from16 p3, v3

    move/from16 v16, v4

    aget-wide v3, v15, v11

    const-wide/16 v18, 0x0

    cmp-long v15, v3, v18

    if-nez v15, :cond_35

    goto :goto_2b

    :cond_35
    iget-object v15, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v14, v14, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr v14, v11

    aget-wide v14, v15, v14

    cmp-long v17, v14, v18

    if-nez v17, :cond_36

    :goto_2b
    move/from16 v17, v6

    goto :goto_2c

    :cond_36
    move/from16 v17, v6

    iget-object v6, v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v20, v6, v11

    long-to-double v14, v14

    mul-double v20, v20, v14

    long-to-double v3, v3

    div-double v20, v20, v3

    add-double v20, v20, v12

    move-wide/from16 v12, v20

    :goto_2c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move/from16 v6, v17

    goto :goto_2a

    :cond_37
    move-object/from16 p3, v3

    move/from16 v16, v4

    move/from16 v17, v6

    const-wide/16 v18, 0x0

    iget-object v3, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    if-eqz v2, :cond_39

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    iget v4, v4, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_38

    const-wide/16 v14, 0x0

    goto :goto_2d

    :cond_38
    aget-wide v14, v6, v4

    long-to-double v14, v14

    div-double v14, v14, v22

    :goto_2d
    sub-double/2addr v12, v14

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    goto :goto_2e

    :cond_39
    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    :goto_2e
    cmpl-double v4, v12, v14

    if-eqz v4, :cond_3a

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v4, v6, v12, v13}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_3a
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move/from16 v6, v17

    goto/16 :goto_29

    :cond_3b
    move-object/from16 p3, v3

    move/from16 v16, v4

    move/from16 v17, v6

    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    add-int/lit8 v6, v17, 0x1

    goto/16 :goto_28

    :cond_3c
    move-object/from16 p3, v3

    move/from16 v16, v4

    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    add-int/lit8 v4, v16, -0x1

    goto/16 :goto_27

    :cond_3d
    iget-object v0, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
