.class public abstract Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mEnergyConsumerSupported:Z

.field public mInitiatingUid:I

.field public mLastState:I

.field public mLastStateTimestamp:J

.field public mLastUpdateTimestamp:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerComponentId:I

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(ID)V
    .registers 5

    new-instance v0, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    return-void
.end method

.method public constructor <init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    new-instance p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {p1, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object p4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    return-void
.end method


# virtual methods
.method public final addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    :cond_f
    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_28

    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    iget v0, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    aput-wide v2, p2, v0

    :cond_28
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .registers 12

    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_55

    iget-object v1, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v3, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_52

    :cond_21
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_52

    if-eqz p3, :cond_40

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    mul-double/2addr v4, v6

    goto :goto_46

    :cond_40
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v6, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v4, v4

    mul-double/2addr v4, v6

    :goto_46
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_52
    :goto_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_55
    return-void
.end method

.method public final ensureInitialized()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v6, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v2, [J

    iput-object v3, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v0, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    return-void
.end method

.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v4, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    move-wide/from16 v5, p2

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    goto :goto_15

    :cond_13
    move-wide/from16 v5, p2

    :goto_15
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_25

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_25
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-boolean v4, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eqz v4, :cond_172

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_41
    iget-object v5, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    if-ltz v4, :cond_96

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    new-instance v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    iget-object v8, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_61
    if-ltz v8, :cond_93

    iget-object v9, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v9, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v9, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v9

    if-nez v9, :cond_78

    goto :goto_90

    :cond_78
    iget-wide v9, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    iget-object v11, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v12, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_84

    const-wide/16 v11, 0x0

    goto :goto_8d

    :cond_84
    aget-wide v11, v11, v12

    long-to-double v11, v11

    const-wide v13, 0x412e848000000000L  # 1000000.0

    div-double/2addr v11, v13

    :goto_8d
    add-double/2addr v11, v9

    iput-wide v11, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    :goto_90
    add-int/lit8 v8, v8, -0x1

    goto :goto_61

    :cond_93
    add-int/lit8 v4, v4, -0x1

    goto :goto_41

    :cond_96
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_a1
    if-ltz v4, :cond_ef

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_ba
    if-ltz v8, :cond_ec

    invoke-virtual {v2, v8}, Landroid/util/IntArray;->get(I)I

    move-result v9

    iget-object v10, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_c9
    :goto_c9
    if-ge v12, v11, :cond_e9

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v13, v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v9, v13, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v13

    if-eqz v13, :cond_c9

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v15

    add-long/2addr v13, v15

    iput-wide v13, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    goto :goto_c9

    :cond_e9
    add-int/lit8 v8, v8, -0x1

    goto :goto_ba

    :cond_ec
    add-int/lit8 v4, v4, -0x1

    goto :goto_a1

    :cond_ef
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_fa
    if-ltz v4, :cond_172

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    iget-wide v8, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_119

    :cond_116
    move/from16 p2, v4

    goto :goto_16e

    :cond_119
    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_122
    if-ltz v8, :cond_116

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v12

    sub-int/2addr v12, v3

    :goto_12f
    if-ltz v12, :cond_168

    invoke-virtual {v2, v12}, Landroid/util/IntArray;->get(I)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v15, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v13, v15, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v14

    if-eqz v14, :cond_160

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_160

    move/from16 p2, v4

    iget-wide v3, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    long-to-double v14, v14

    mul-double/2addr v3, v14

    iget-wide v14, v7, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    long-to-double v14, v14

    div-double/2addr v3, v14

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v14, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v3, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v13, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto :goto_162

    :cond_160
    move/from16 p2, v4

    :goto_162
    add-int/lit8 v12, v12, -0x1

    move/from16 v4, p2

    const/4 v3, 0x1

    goto :goto_12f

    :cond_168
    move/from16 p2, v4

    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x1

    goto :goto_122

    :goto_16e
    add-int/lit8 v4, p2, -0x1

    const/4 v3, 0x1

    goto :goto_fa

    :cond_172
    return-void
.end method

.method public final flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    return-void
.end method

.method public abstract getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 9

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, 0x8015

    if-ne p1, v1, :cond_3f

    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    goto :goto_3f

    :cond_1a
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const/16 v3, 0x4015

    if-ne v1, v3, :cond_2b

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    :cond_2b
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    iput v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    iget-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    if-nez v1, :cond_3f

    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    :cond_3f
    :goto_3f
    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    return-void
.end method

.method public recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .registers 11

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    sub-long v0, p3, v0

    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v3

    add-long/2addr v3, v0

    iget v5, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide v3, p1, v5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_41

    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget p2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aput-wide v0, p1, p2

    goto :goto_41

    :cond_34
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v3

    add-long/2addr v3, v0

    iget p2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide v3, p1, p2

    :cond_41
    :goto_41
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method
