.class public final Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;


# instance fields
.field public final mBatteryCapacitySupplier:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

.field public mBatteryCapacityUah:D

.field public mBatteryChargeUah:I

.field public mBatteryLevel:I

.field public mBatteryLevelTimestampMs:J

.field public mCumulativeDischargeDurationMs:J

.field public mCumulativeDischargePct:I

.field public mCumulativeDischargeUah:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mStartTimestamp:J

.field public final mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacitySupplier:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    sget-object p1, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {p1, v6}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v0, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, p1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v5, p1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x12

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget p1, p1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    new-instance p1, Lcom/android/internal/os/PowerStats;

    invoke-direct {p1, v0}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    if-nez v4, :cond_13

    new-instance v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-direct {v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_13
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    sub-long v6, v2, v6

    sget-object v8, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget v9, v8, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide v6, v4, v9

    iget v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    iget v7, v8, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    aget-wide v9, v4, v7

    int-to-long v11, v6

    const-wide/32 v13, 0xf4240

    mul-long/2addr v11, v13

    add-long/2addr v11, v9

    aput-wide v11, v4, v7

    iget-wide v9, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    iget v13, v8, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    if-eqz v7, :cond_3f

    aget-wide v6, v4, v13

    add-long/2addr v6, v9

    aput-wide v6, v4, v13

    goto :goto_4c

    :cond_3f
    int-to-double v6, v6

    iget-wide v9, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacityUah:D

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4059000000000000L  # 100.0

    div-double/2addr v6, v9

    double-to-long v6, v6

    aget-wide v9, v4, v13

    add-long/2addr v9, v6

    aput-wide v9, v4, v13

    :goto_4c
    iget-wide v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    iget v9, v8, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    aget-wide v13, v4, v9

    add-long/2addr v13, v6

    aput-wide v13, v4, v9

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    iput-wide v11, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    iput-wide v11, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUids()Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_8c

    iget-wide v13, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    sub-long v13, v2, v13

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v7

    sub-int/2addr v7, v9

    :goto_70
    if-ltz v7, :cond_8c

    iget v10, v8, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v10, v10, [J

    iget v15, v8, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aput-wide v13, v10, v15

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v15, v15, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    move/from16 v16, v4

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v15, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    move/from16 v4, v16

    goto :goto_70

    :cond_8c
    move/from16 v16, v4

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v7, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v7, v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    :goto_a0
    if-ltz v4, :cond_ed

    iget-object v7, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v13, 0x2

    aput v16, v10, v13

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v13

    sub-int/2addr v13, v9

    :goto_bc
    if-ltz v13, :cond_e9

    invoke-virtual {v6, v13}, Landroid/util/IntArray;->get(I)I

    move-result v14

    iget-object v15, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v15, v15, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    aget v17, v15, v9

    aput v17, v10, v9

    aget v15, v15, v16

    aput v15, v10, v16

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v14, v10, v15}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v17

    if-eqz v17, :cond_e5

    invoke-virtual {v8, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v17

    cmp-long v17, v17, v11

    if-eqz v17, :cond_e5

    iget v9, v8, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aput-wide v11, v15, v9

    invoke-virtual {v1, v14, v10, v15}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_e5
    add-int/lit8 v13, v13, -0x1

    const/4 v9, 0x1

    goto :goto_bc

    :cond_e9
    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x1

    goto :goto_a0

    :cond_ed
    iput-wide v2, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    iget-object v1, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-static {v1, v11, v12}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final noteBatteryLevel(IIJ)V
    .registers 11

    iget v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    if-ge p1, v0, :cond_10

    iget v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    sub-int/2addr v0, p1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    if-eq v3, v2, :cond_21

    if-eqz p2, :cond_21

    if-ge p2, v3, :cond_21

    iget-wide v4, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    sub-int/2addr v3, p2

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    goto :goto_22

    :cond_21
    move v1, v0

    :goto_22
    if-eqz v1, :cond_33

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_33

    iget-wide v2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    sub-long v0, p3, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    :cond_33
    iput p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    iput p2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    return-void
.end method

.method public final start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 8

    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacitySupplier:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;->getAsDouble()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L  # 1000.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacityUah:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    iget-object p0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method
