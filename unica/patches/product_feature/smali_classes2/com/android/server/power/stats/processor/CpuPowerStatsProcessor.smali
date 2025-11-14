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
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .registers 15

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

    :goto_21
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    sget-wide v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    if-ge v2, v4, :cond_4f

    aget v4, v0, v2

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    invoke-virtual {p2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    move-result-wide v8

    div-double/2addr v8, v5

    aput-wide v8, v7, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    move v8, v1

    :goto_37
    array-length v9, v7

    if-ge v8, v9, :cond_4c

    iget-object v9, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aput v2, v9, v3

    iget-object v9, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    invoke-virtual {p2, v4, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v10

    div-double/2addr v10, v5

    aput-wide v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_4f
    const-string/jumbo p1, "cpu.active"

    invoke-virtual {p2, p1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide p1

    div-double/2addr p1, v5

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_a

    goto/16 :goto_22f

    :cond_a
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_19

    :goto_15
    const/16 p2, 0x0

    goto/16 :goto_15b

    :cond_19
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

    if-nez v8, :cond_60

    iget v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    new-array v8, v8, [I

    iput-object v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    :cond_60
    iput v6, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    iget-object v8, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    array-length v9, v8

    const/4 v10, 0x0

    :goto_66
    if-ge v10, v9, :cond_75

    aget v11, v8, v10

    iget v12, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-lt v11, v12, :cond_72

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    :cond_72
    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    :cond_75
    iput-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v8, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v8, v8, [J

    iput-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iput-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-nez v2, :cond_8a

    goto :goto_15

    :cond_8a
    iget v3, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    new-array v8, v2, [I

    iput-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    new-array v8, v2, [[I

    iput-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    iget-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v8

    array-length v9, v8

    if-ne v2, v9, :cond_14a

    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v2, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    array-length v3, v8

    new-array v9, v3, [Landroid/util/ArraySet;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a6
    array-length v12, v8

    if-ge v10, v12, :cond_d1

    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    aget v13, v8, v10

    invoke-virtual {v12, v13}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v12

    new-instance v13, Landroid/util/ArraySet;

    array-length v14, v12

    invoke-direct {v13, v14}, Landroid/util/ArraySet;-><init>(I)V

    aput-object v13, v9, v10

    const/4 v13, 0x0

    :goto_ba
    array-length v14, v12

    if-ge v13, v14, :cond_ce

    aget-object v14, v9, v10

    add-int/lit8 v15, v11, 0x1

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move v11, v15

    goto :goto_ba

    :cond_ce
    add-int/lit8 v10, v10, 0x1

    goto :goto_a6

    :cond_d1
    array-length v2, v8

    new-array v8, v2, [Landroid/util/ArraySet;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d6
    if-ge v10, v3, :cond_118

    const/4 v12, 0x0

    :goto_d9
    if-ge v12, v11, :cond_f9

    aget-object v13, v8, v12

    aget-object v14, v9, v10

    const/16 p2, 0x0

    const/4 v15, 0x0

    :goto_e2
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v15, v4, :cond_f6

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    goto :goto_fc

    :cond_f3
    add-int/lit8 v15, v15, 0x1

    goto :goto_e2

    :cond_f6
    add-int/lit8 v12, v12, 0x1

    goto :goto_d9

    :cond_f9
    const/16 p2, 0x0

    move v12, v5

    :goto_fc
    if-eq v12, v5, :cond_10a

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v12, v4, v10

    aget-object v4, v8, v12

    aget-object v12, v9, v10

    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_115

    :cond_10a
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v11, v4, v10

    add-int/lit8 v4, v11, 0x1

    aget-object v12, v9, v10

    aput-object v12, v8, v11

    move v11, v4

    :goto_115
    add-int/lit8 v10, v10, 0x1

    goto :goto_d6

    :cond_118
    const/16 p2, 0x0

    sub-int/2addr v2, v6

    :goto_11b
    if-ltz v2, :cond_15b

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

    :goto_130
    if-ltz v3, :cond_147

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

    goto :goto_130

    :cond_147
    add-int/lit8 v2, v2, -0x1

    goto :goto_11b

    :cond_14a
    const/16 p2, 0x0

    new-array v2, v3, [I

    move/from16 v4, p2

    :goto_150
    if-ge v4, v3, :cond_157

    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_150

    :cond_157
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aput-object v2, v3, p2

    :cond_15b
    :goto_15b
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_168

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_168
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v3, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    const-string v4, ", expected: "

    const-string v8, "CpuPowerStatsProcessor"

    iget v9, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    if-eq v3, v9, :cond_18d

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

    :cond_18d
    iget v2, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    iget v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-eq v2, v3, :cond_1ac

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

    :cond_1ac
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

    :goto_1c3
    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    if-ltz v11, :cond_227

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    const-wide/16 v18, 0x0

    move-object/from16 v12, v17

    check-cast v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v12, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v12, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v12

    if-nez v12, :cond_1de

    move-object/from16 v17, v2

    goto :goto_222

    :cond_1de
    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v12, v13}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v12

    add-long/2addr v6, v12

    move/from16 v12, p2

    :goto_1e9
    if-ge v12, v3, :cond_201

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

    goto :goto_1e9

    :cond_201
    move-object/from16 v17, v2

    move/from16 v2, p2

    :goto_205
    if-ge v2, v9, :cond_222

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

    goto :goto_205

    :cond_222
    :goto_222
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v2, v17

    goto :goto_1c3

    :cond_227
    move-object/from16 v17, v2

    const-wide/16 v18, 0x0

    cmp-long v2, v14, v18

    if-nez v2, :cond_230

    :goto_22f
    return-void

    :cond_230
    long-to-double v6, v6

    iget-wide v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    mul-double/2addr v10, v6

    new-array v2, v3, [D

    move/from16 v6, p2

    :goto_238
    if-ge v6, v3, :cond_24d

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

    goto :goto_238

    :cond_24d
    move-object/from16 v20, v2

    new-array v2, v9, [D

    move/from16 v3, p2

    :goto_253
    if-ge v3, v9, :cond_27e

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

    if-eqz v23, :cond_271

    aget-wide v23, v20, v4

    mul-double v23, v23, v6

    long-to-double v2, v2

    div-double v23, v23, v2

    add-double v12, v23, v12

    :cond_271
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    aget-wide v2, v2, v22

    mul-double/2addr v2, v6

    add-double/2addr v2, v12

    aput-wide v2, v21, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v2, v21

    goto :goto_253

    :cond_27e
    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-nez v2, :cond_288

    :goto_286
    const/4 v2, 0x0

    goto :goto_2bd

    :cond_288
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez v2, :cond_297

    goto :goto_286

    :cond_297
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v3, :cond_29c

    goto :goto_286

    :cond_29c
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v4, :cond_2a6

    invoke-virtual {v4, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2bd

    :cond_2a6
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

    :cond_2bd
    :goto_2bd
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

    :goto_2d5
    if-ltz v9, :cond_423

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    new-instance v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    const-wide v22, 0x412e848000000000L  # 1000000.0

    new-array v10, v5, [J

    iput-object v10, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    new-array v10, v5, [D

    iput-object v10, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    iget-object v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v11, v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v11, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v10

    if-nez v10, :cond_304

    move/from16 v16, v3

    move/from16 v20, v4

    move v14, v5

    move-object/from16 v28, v6

    goto/16 :goto_416

    :cond_304
    move/from16 v10, p2

    :goto_306
    if-ge v10, v4, :cond_34b

    const-wide/16 v24, 0x0

    aget-wide v12, v17, v10

    cmp-long v14, v12, v18

    if-nez v14, :cond_318

    move/from16 v16, v3

    move/from16 v20, v4

    move v14, v5

    move-object/from16 v28, v6

    goto :goto_341

    :cond_318
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

    :goto_341
    add-int/lit8 v10, v10, 0x1

    move v5, v14

    move/from16 v3, v16

    move/from16 v4, v20

    move-object/from16 v6, v28

    goto :goto_306

    :cond_34b
    move/from16 v16, v3

    move/from16 v20, v4

    move v14, v5

    move-object/from16 v28, v6

    const-wide/16 v24, 0x0

    if-eqz v16, :cond_3d0

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v3, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-nez v3, :cond_35e

    goto/16 :goto_3d0

    :cond_35e
    if-nez v8, :cond_363

    new-array v8, v3, [J

    goto :goto_368

    :cond_363
    move-wide/from16 v4, v18

    invoke-static {v8, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    :goto_368
    move/from16 v4, p2

    :goto_36a
    if-ge v4, v3, :cond_381

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

    goto :goto_36a

    :cond_381
    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_386
    if-ltz v3, :cond_3d0

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v4, v4, v3

    if-nez v4, :cond_391

    move/from16 v26, v3

    goto :goto_3cd

    :cond_391
    aget-wide v5, v8, v3

    long-to-double v5, v5

    const-wide v12, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    mul-double/2addr v5, v12

    array-length v10, v4

    move/from16 v26, v3

    move-wide/from16 v12, v24

    move/from16 v3, p2

    :goto_3a1
    if-ge v3, v10, :cond_3b0

    aget v27, v4, v3

    move/from16 v29, v3

    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v30, v3, v27

    add-double v12, v12, v30

    add-int/lit8 v3, v29, 0x1

    goto :goto_3a1

    :cond_3b0
    cmpl-double v3, v12, v24

    if-nez v3, :cond_3b5

    goto :goto_3cd

    :cond_3b5
    array-length v3, v4

    move/from16 v10, p2

    :goto_3b8
    if-ge v10, v3, :cond_3cd

    aget v27, v4, v10

    move/from16 v29, v3

    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v30, v3, v27

    mul-double v30, v30, v5

    div-double v30, v30, v12

    aput-wide v30, v3, v27

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v29

    goto :goto_3b8

    :cond_3cd
    :goto_3cd
    add-int/lit8 v3, v26, -0x1

    goto :goto_386

    :cond_3d0
    :goto_3d0
    iget-object v3, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v4, v24

    :goto_3d7
    if-ltz v3, :cond_3e1

    iget-object v6, v15, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v12, v6, v3

    add-double/2addr v4, v12

    add-int/lit8 v3, v3, -0x1

    goto :goto_3d7

    :cond_3e1
    if-eqz v2, :cond_404

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    invoke-virtual {v2, v11, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v3

    if-eqz v3, :cond_404

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    iget v3, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_3f7

    move-wide/from16 v12, v24

    goto :goto_3fc

    :cond_3f7
    aget-wide v12, v6, v3

    long-to-double v12, v12

    div-double v12, v12, v22

    :goto_3fc
    sub-double/2addr v4, v12

    move-wide/from16 v12, v24

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_406

    :cond_404
    move-wide/from16 v12, v24

    :goto_406
    cmpl-double v3, v4, v12

    if-eqz v3, :cond_416

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v11, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_416
    :goto_416
    add-int/lit8 v9, v9, -0x1

    move v5, v14

    move/from16 v3, v16

    move/from16 v4, v20

    move-object/from16 v6, v28

    const-wide/16 v18, 0x0

    goto/16 :goto_2d5

    :cond_423
    const-wide v22, 0x412e848000000000L  # 1000000.0

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_434
    if-ltz v3, :cond_491

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

    :goto_45f
    if-ltz v7, :cond_48e

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v9, p2

    :goto_470
    if-ge v9, v6, :cond_48b

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

    goto :goto_470

    :cond_48b
    add-int/lit8 v7, v7, -0x1

    goto :goto_45f

    :cond_48e
    add-int/lit8 v3, v3, -0x1

    goto :goto_434

    :cond_491
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eqz v4, :cond_59a

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4a1
    if-ltz v4, :cond_59a

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    move/from16 v6, p2

    :goto_4a9
    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_58d

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

    :goto_4c9
    iget-object v10, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_57e

    iget-object v10, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v12, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v5, v12, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v11

    if-nez v11, :cond_4f4

    move-object/from16 p3, v3

    move/from16 v16, v4

    move/from16 v17, v6

    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_574

    :cond_4f4
    move/from16 v11, p2

    const-wide/16 v12, 0x0

    :goto_4f8
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v15, v14, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-ge v11, v15, :cond_534

    iget-object v15, v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    move-object/from16 p3, v3

    move/from16 v16, v4

    aget-wide v3, v15, v11

    const-wide/16 v18, 0x0

    cmp-long v15, v3, v18

    if-nez v15, :cond_50d

    goto :goto_518

    :cond_50d
    iget-object v15, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v14, v14, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr v14, v11

    aget-wide v14, v15, v14

    cmp-long v17, v14, v18

    if-nez v17, :cond_51b

    :goto_518
    move/from16 v17, v6

    goto :goto_52b

    :cond_51b
    move/from16 v17, v6

    iget-object v6, v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v20, v6, v11

    long-to-double v14, v14

    mul-double v20, v20, v14

    long-to-double v3, v3

    div-double v20, v20, v3

    add-double v20, v20, v12

    move-wide/from16 v12, v20

    :goto_52b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move/from16 v6, v17

    goto :goto_4f8

    :cond_534
    move-object/from16 p3, v3

    move/from16 v16, v4

    move/from16 v17, v6

    const-wide/16 v18, 0x0

    iget-object v3, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    if-eqz v2, :cond_561

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v4

    if-eqz v4, :cond_561

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    iget v4, v4, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_554

    const-wide/16 v14, 0x0

    goto :goto_559

    :cond_554
    aget-wide v14, v6, v4

    long-to-double v14, v14

    div-double v14, v14, v22

    :goto_559
    sub-double/2addr v12, v14

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    goto :goto_564

    :cond_561
    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    :goto_564
    cmpl-double v4, v12, v14

    if-eqz v4, :cond_574

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v4, v6, v12, v13}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_574
    :goto_574
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move/from16 v6, v17

    goto/16 :goto_4c9

    :cond_57e
    move-object/from16 p3, v3

    move/from16 v16, v4

    move/from16 v17, v6

    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    add-int/lit8 v6, v17, 0x1

    goto/16 :goto_4a9

    :cond_58d
    move-object/from16 p3, v3

    move/from16 v16, v4

    const/4 v10, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    add-int/lit8 v4, v16, -0x1

    goto/16 :goto_4a1

    :cond_59a
    iget-object v0, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
