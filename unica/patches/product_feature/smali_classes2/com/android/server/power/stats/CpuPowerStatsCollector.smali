.class public final Lcom/android/server/power/stats/CpuPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mCpuPowerStats:Lcom/android/internal/os/PowerStats;

.field public mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mCpuTimeByScalingStep:[J

.field public mDefaultCpuPowerBrackets:I

.field public mDefaultCpuPowerBracketsPerEnergyConsumer:I

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mIsPerUidTimeInStateSupported:Z

.field public mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

.field public mLastUpdateTimestampNanos:J

.field public mLastUpdateUptimeMillis:J

.field public mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field public mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mTempCpuTimeByScalingStep:[J

.field public mTempUidStats:[J

.field public final mUidStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .registers 9

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    iput-object p1, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    return-void
.end method

.method public static mapScalingStepsToDefaultBrackets([I[DI)V
    .registers 13

    array-length v0, p1

    const-wide v1, 0x7fefffffffffffffL  # Double.MAX_VALUE

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_a
    if-ge v6, v0, :cond_1b

    aget-wide v7, p1, v6

    cmpg-double v9, v7, v1

    if-gez v9, :cond_13

    move-wide v1, v7

    :cond_13
    cmpl-double v9, v7, v3

    if-lez v9, :cond_18

    move-wide v3, v7

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1b
    array-length v0, p1

    if-gt v0, p2, :cond_26

    :goto_1e
    array-length p1, p0

    if-ge v5, p1, :cond_46

    aput v5, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_26
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v2, v0

    int-to-double v6, p2

    div-double/2addr v2, v6

    :goto_31
    array-length v4, p1

    if-ge v5, v4, :cond_46

    aget-wide v6, p1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sub-double/2addr v6, v0

    div-double/2addr v6, v2

    double-to-int v4, v6

    if-lt v4, p2, :cond_41

    add-int/lit8 v4, p2, -0x1

    :cond_41
    aput v4, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_46
    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized$1()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    if-nez v0, :cond_d

    :goto_b
    const/4 p0, 0x0

    return-object p0

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling readCpuStats: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v1, v1, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    array-length v1, v1

    const-string v2, "CpuScalingPolicyReader"

    invoke-static {v0, v1, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    new-instance v4, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    iget-wide v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    iget-object v9, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->nativeReadCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v2, v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_62
    if-ltz v2, :cond_7f

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v6, v5, v2

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    aget-wide v9, v8, v2

    sub-long/2addr v6, v9

    iget v3, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr v3, v2

    aput-wide v6, v4, v3

    aget-wide v3, v5, v2

    aput-wide v3, v8, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    :cond_7f
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v4, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_a2

    move-wide v2, v4

    :cond_a2
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iget v5, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide v2, v4, v5

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method

.method public final ensureInitialized$1()Z
    .registers 16

    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iput-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    new-instance v3, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    invoke-virtual {v3}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->nativeIsSupportedFeature()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    new-instance v3, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v3, v0, [J

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketCount()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7b

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_5c
    if-ge v5, v4, :cond_126

    aget v7, v3, v5

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v2

    :goto_67
    array-length v10, v8

    if-ge v9, v10, :cond_78

    iget-object v10, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v10, v7, v9}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketForScalingStep(II)I

    move-result v10

    add-int/lit8 v11, v6, 0x1

    aput v10, v0, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v11

    goto :goto_67

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    :cond_7b
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    if-ne v0, v1, :cond_8d

    goto/16 :goto_120

    :cond_8d
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    array-length v0, v0

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    if-ne v0, v3, :cond_ec

    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v4

    array-length v5, v4

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_b0
    if-ge v6, v5, :cond_ea

    aget v9, v4, v6

    iget-object v10, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v10, v9}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v10

    array-length v11, v10

    new-array v11, v11, [D

    move v12, v2

    :goto_be
    array-length v13, v10

    if-ge v12, v13, :cond_cc

    iget-object v13, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v13, v9, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v13

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    :cond_cc
    array-length v9, v10

    new-array v9, v9, [I

    invoke-static {v9, v11, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    move v11, v2

    move v12, v11

    :goto_d4
    array-length v13, v10

    if-ge v11, v13, :cond_e5

    aget v13, v9, v11

    add-int/2addr v13, v8

    add-int/lit8 v14, v7, 0x1

    aput v13, v3, v7

    if-le v13, v12, :cond_e1

    move v12, v13

    :cond_e1
    add-int/lit8 v11, v11, 0x1

    move v7, v14

    goto :goto_d4

    :cond_e5
    add-int/lit8 v8, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_b0

    :cond_ea
    move-object v0, v3

    goto :goto_126

    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Assigning a single power brackets to each CPU_CLUSTER energy consumer. Number of CPU clusters ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") does not match the number of energy consumers ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ").  Using default power bucket assignment."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CpuPowerStatsCollector"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object v0

    goto :goto_126

    :cond_120
    :goto_120
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object v0

    :cond_126
    :goto_126
    new-instance v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v5

    array-length v5, v5

    invoke-direct {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    array-length v6, v0

    const-string/jumbo v7, "steps"

    invoke-virtual {v3, v6, v2, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    iput v6, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    const-string/jumbo v6, "clusters"

    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    iput v5, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    iput-object v0, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    iput v1, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    array-length v4, v0

    move v5, v2

    :goto_15e
    if-ge v5, v4, :cond_16d

    aget v6, v0, v5

    iget v7, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-lt v6, v7, :cond_16a

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    :cond_16a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15e

    :cond_16d
    iget v0, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    const-string/jumbo v4, "time"

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0, v10}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v6, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v9, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v0, v0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    iput-boolean v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method

.method public getCpuPowerBracketDescription(I)Ljava/lang/String;
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized$1()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v0, v0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1c
    if-ge v5, v3, :cond_79

    aget v7, v2, v5

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v4

    :goto_27
    array-length v10, v8

    if-ge v9, v10, :cond_76

    aget v10, v0, v6

    if-eq v10, p1, :cond_31

    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_3c

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    array-length v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_48

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_48
    aget v10, v8, v9

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x28

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%.1f"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    :goto_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized$1()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object p0
.end method

.method public final initDefaultPowerBrackets(I)[I
    .registers 15

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    new-array v1, v1, [D

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1a
    if-ge v5, v3, :cond_39

    aget v7, v2, v5

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v4

    :goto_25
    array-length v10, v8

    if-ge v9, v10, :cond_36

    add-int/lit8 v10, v6, 0x1

    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    aput-wide v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_25

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_39
    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    return-object v0
.end method

.method public final onUidRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
