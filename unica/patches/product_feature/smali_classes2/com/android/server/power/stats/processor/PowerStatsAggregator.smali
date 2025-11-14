.class public Lcom/android/server/power/stats/processor/PowerStatsAggregator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field public mCurrentBatteryState:I

.field public mCurrentScreenState:I

.field public final mEnabledComponents:Landroid/util/SparseBooleanArray;

.field public mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-void
.end method


# virtual methods
.method public final aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_1
    const-wide/16 v7, -0x1

    :goto_1
    invoke-virtual/range {p1 .. p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, -0x1

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v14

    if-nez v12, :cond_7

    const-wide/16 v16, -0x1

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move v6, v10

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v18, v2

    const/4 v15, 0x0

    :goto_3
    :try_start_2
    iget-object v2, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    iget-object v2, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    goto :goto_4

    :cond_2
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    :goto_4
    iput-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    :cond_3
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v3, v2, v9, v10}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    :try_start_3
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 p3, v4

    :try_start_4
    iget-wide v3, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_14

    :cond_5
    cmp-long v2, v7, v16

    if-nez v2, :cond_6

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    move-object v2, v0

    goto/16 :goto_17

    :cond_6
    :goto_6
    const/4 v12, 0x1

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_7
    move-object/from16 p3, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_7
    move-wide/from16 v18, v2

    move-object/from16 p3, v4

    move v6, v10

    const-wide/16 v16, -0x1

    iget-byte v2, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    :cond_8
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v3, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_14

    :cond_9
    :goto_8
    iget-wide v2, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_b

    iget-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v4, v13, :cond_b

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v9, v14, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    const/4 v10, 0x0

    :goto_9
    iget-object v13, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_a

    iget-object v13, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v13, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v13, v4, v9, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteBatteryLevel(IIJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_a
    iget-byte v13, v14, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    :cond_b
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    iget v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    if-eq v4, v5, :cond_d

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v4, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    goto :goto_b

    :cond_d
    const/4 v15, 0x0

    :goto_b
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    move v4, v15

    goto :goto_c

    :cond_e
    const/4 v4, 0x1

    :goto_c
    iget v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    if-eq v4, v5, :cond_f

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v15, 0x1

    invoke-virtual {v5, v15, v4, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    :cond_f
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x60c00000

    and-int/2addr v4, v5

    const v9, 0x48200180    # 163846.0f

    if-ne v4, v6, :cond_11

    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v4, v9

    if-eq v4, v11, :cond_10

    goto :goto_d

    :cond_10
    move v10, v6

    goto :goto_f

    :cond_11
    :goto_d
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    const/4 v6, 0x0

    :goto_e
    iget-object v10, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_12

    iget-object v10, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v11, v10, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v11, v10, v14}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_12
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v4, v5

    iget v5, v14, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v5, v9

    move v10, v4

    move v11, v5

    :goto_f
    iget-object v4, v14, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v4, :cond_13

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v6, v4, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget v4, v4, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    move-wide/from16 v18, v7

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setUidState(IIJ)V

    goto :goto_10

    :cond_13
    move-wide/from16 v18, v7

    :goto_10
    iget-object v4, v14, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v4, :cond_19

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v6, v6, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iget-object v5, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eqz v5, :cond_15

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v5, :cond_14

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v5, v4}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    move-wide/from16 v7, v18

    goto :goto_12

    :cond_15
    cmp-long v4, v2, v18

    if-lez v4, :cond_17

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, v18

    iput-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    const/4 v5, 0x0

    :goto_11
    iget-object v6, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    iget-object v6, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v7, v6, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_16
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v0, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v5, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v4

    if-nez v4, :cond_18

    move-wide/from16 v7, v18

    goto :goto_15

    :cond_18
    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v2, v7

    :goto_12
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v5, v14, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v14, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v4, v5, v14, v15}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_13

    :cond_19
    move-wide/from16 v7, v18

    :goto_13
    move-object/from16 v4, p3

    goto/16 :goto_2

    :cond_1a
    move-wide/from16 v18, v2

    move-object/from16 p3, v4

    const-wide/16 v16, -0x1

    :goto_14
    move-wide/from16 v2, v18

    :goto_15
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    if-eqz v12, :cond_1d

    cmp-long v4, p4, v16

    if-eqz v4, :cond_1b

    move-wide/from16 v2, p4

    :cond_1b
    cmp-long v4, v2, v7

    if-lez v4, :cond_1d

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, v7

    iput-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    const/4 v9, 0x0

    :goto_16
    iget-object v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v9, v5, :cond_1c

    iget-object v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_1c
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :goto_17
    if-eqz p3, :cond_1e

    :try_start_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_18

    :catchall_4
    move-exception v0

    :try_start_7
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_18
    throw v2

    :goto_19
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public setPowerComponentEnabled(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
