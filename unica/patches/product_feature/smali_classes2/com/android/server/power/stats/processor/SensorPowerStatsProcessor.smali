.class public final Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mIsInitialized:Z

.field public mLastUpdateTimestamp:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorManagerSupplier:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

.field public final mSensorStates:Landroid/util/SparseArray;

.field public mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManagerSupplier:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    iget-boolean v4, v3, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-eqz v4, :cond_1

    move-wide/from16 v4, p2

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v4, p2

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->flushPowerStats$1(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [D

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_2
    if-ltz v8, :cond_4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Sensor;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getHandle()I

    move-result v11

    iget-object v10, v10, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    aput v10, v6, v8

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getPower()F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x414b774000000000L    # 3600000.0

    div-double/2addr v9, v11

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_d

    iget-object v12, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v12, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v13, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    :goto_4
    if-ltz v14, :cond_c

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v10, v16

    const-wide/16 p2, 0x0

    :goto_5
    if-ltz v10, :cond_b

    invoke-virtual {v2, v10}, Landroid/util/IntArray;->get(I)I

    move-result v11

    const-wide/16 v16, 0x0

    iget-object v8, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v9, v15, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v11, v9, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v8

    if-nez v8, :cond_5

    move-object v9, v2

    move/from16 v18, v3

    move/from16 v19, v5

    goto :goto_8

    :cond_5
    const/4 v8, 0x0

    move-object v9, v2

    move/from16 v18, v3

    move-wide/from16 v2, p2

    :goto_6
    if-ge v8, v5, :cond_8

    move/from16 v19, v5

    aget v5, v6, v8

    if-eq v5, v4, :cond_7

    iget-object v4, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    aget-wide v4, v4, v5

    cmp-long v20, v4, v16

    if-nez v20, :cond_6

    goto :goto_7

    :cond_6
    aget-wide v20, v7, v8

    long-to-double v4, v4

    mul-double v20, v20, v4

    add-double v2, v20, v2

    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v19

    const/4 v4, -0x1

    goto :goto_6

    :cond_8
    move/from16 v19, v5

    cmpl-double v4, v2, p2

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    iget-object v4, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v4, v15, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v5, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v11, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    iget-object v4, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    if-nez v5, :cond_a

    new-instance v5, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    :cond_a
    move-wide/from16 v20, v2

    iget-wide v2, v5, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    add-double v2, v2, v20

    iput-wide v2, v5, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    :goto_8
    add-int/lit8 v10, v10, -0x1

    move-object v2, v9

    move/from16 v3, v18

    move/from16 v5, v19

    const/4 v4, -0x1

    goto :goto_5

    :cond_b
    move-object v9, v2

    move/from16 v18, v3

    move/from16 v19, v5

    const-wide/16 v16, 0x0

    add-int/lit8 v14, v14, -0x1

    const/4 v4, -0x1

    goto/16 :goto_4

    :cond_c
    move-object v9, v2

    move/from16 v18, v3

    move/from16 v19, v5

    add-int/lit8 v3, v18, -0x1

    const/4 v4, -0x1

    goto/16 :goto_3

    :cond_d
    const-wide/16 p2, 0x0

    const-wide/16 v16, 0x0

    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_11

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    if-nez v4, :cond_e

    :goto_a
    move-wide/from16 v7, v16

    goto :goto_c

    :cond_e
    check-cast v4, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    iget-wide v4, v4, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    cmpl-double v6, v4, p2

    if-nez v6, :cond_f

    goto :goto_a

    :cond_f
    iget-object v6, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    invoke-virtual {v1, v3, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    move-wide/from16 v7, v16

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_b

    :cond_10
    move-wide/from16 v7, v16

    :goto_b
    iget-object v6, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v6, v9, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v4, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_c
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v16, v7

    goto :goto_9

    :cond_11
    iget-object v0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method

.method public final flushPowerStats$1(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    iget-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    iget-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iput-wide p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    return-void
.end method

.method public final noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v0, -0xc001

    and-int/2addr p1, v0

    const/16 v0, 0x15

    if-ne p1, v0, :cond_5

    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string/jumbo v0, "sensor:0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    iput p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->sensorHandle:I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-nez v1, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    iput p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    iget-wide p0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    return-void

    :cond_3
    iget v1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    if-eq v1, p1, :cond_5

    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    iput p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    return-void

    :cond_4
    iget-boolean p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-eqz p1, :cond_5

    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Bad format of event tag: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SensorPowerStatsProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public final recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V
    .locals 5

    iget-wide v0, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget v3, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->sensorHandle:I

    iget-object p0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v4, :cond_1

    const-string/jumbo p0, "Unknown sensor: "

    const-string/jumbo v0, "SensorPowerStatsLayout"

    invoke-static {v3, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    aget-wide v3, v2, p0

    add-long/2addr v3, v0

    aput-wide v3, v2, p0

    :cond_2
    :goto_0
    iput-wide p2, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    return-void
.end method

.method public final start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManagerSupplier:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;)V

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget v4, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v7, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v6, 0x0

    const/16 v3, 0x9

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    :goto_0
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->flushPowerStats$1(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method
