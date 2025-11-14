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
    .registers 2

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .registers 4

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
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    monitor-enter p0

    :try_start_5
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-nez v2, :cond_18

    new-instance v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_18

    :catchall_15
    move-exception v0

    goto/16 :goto_214

    :cond_18
    :goto_18
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_21

    move-wide/from16 v7, p2

    goto :goto_23

    :cond_21
    const-wide/16 v7, -0x1

    :goto_23
    invoke-virtual/range {p1 .. p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_15

    const/4 v10, -0x1

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2b
    :try_start_2b
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c7

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v14

    if-nez v12, :cond_91

    const-wide/16 v16, -0x1

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move v6, v10

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_8b

    move-wide/from16 v18, v2

    const/4 v15, 0x0

    :goto_41
    :try_start_41
    iget-object v2, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_6e

    iget-object v2, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    if-nez v3, :cond_66

    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    if-nez v3, :cond_5e

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    goto :goto_64

    :cond_5e
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    :goto_64
    iput-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    :cond_66
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v3, v2, v9, v10}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_8f

    add-int/lit8 v15, v15, 0x1

    goto :goto_41

    :cond_6e
    :try_start_6e
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_8b

    move-object/from16 p3, v4

    :try_start_74
    iget-wide v3, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_7e

    goto/16 :goto_1cd

    :cond_7e
    cmp-long v2, v7, v16

    if-nez v2, :cond_89

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_89

    :catchall_85
    move-exception v0

    :goto_86
    move-object v2, v0

    goto/16 :goto_209

    :cond_89
    :goto_89
    const/4 v12, 0x1

    goto :goto_ae

    :catchall_8b
    move-exception v0

    :goto_8c
    move-object/from16 p3, v4

    goto :goto_86

    :catchall_8f
    move-exception v0

    goto :goto_8c

    :cond_91
    move-wide/from16 v18, v2

    move-object/from16 p3, v4

    move v6, v10

    const-wide/16 v16, -0x1

    iget-byte v2, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_a0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_ae

    :cond_a0
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v3, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_ae

    goto/16 :goto_1cd

    :cond_ae
    :goto_ae
    iget-wide v2, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_d7

    iget-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v4, v13, :cond_d7

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v9, v14, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    const/4 v10, 0x0

    :goto_bd
    iget-object v13, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_d5

    iget-object v13, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v13, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v13, v4, v9, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteBatteryLevel(IIJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_bd

    :cond_d5
    iget-byte v13, v14, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    :cond_d7
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e0

    const/4 v4, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v4, 0x0

    :goto_e1
    iget v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    if-eq v4, v5, :cond_f0

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v4, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    goto :goto_f1

    :cond_f0
    const/4 v15, 0x0

    :goto_f1
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_fa

    move v4, v15

    goto :goto_fb

    :cond_fa
    const/4 v4, 0x1

    :goto_fb
    iget v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    if-eq v4, v5, :cond_109

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v9, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v15, 0x1

    invoke-virtual {v5, v15, v4, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    :cond_109
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x60c00000

    and-int/2addr v4, v5

    const v9, 0x48200180  # 163846.0f

    if-ne v4, v6, :cond_11b

    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v4, v9

    if-eq v4, v11, :cond_119

    goto :goto_11b

    :cond_119
    move v10, v6

    goto :goto_13e

    :cond_11b
    :goto_11b
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    const/4 v6, 0x0

    :goto_11e
    iget-object v10, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_136

    iget-object v10, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v11, v10, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v11, v10, v14}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11e

    :cond_136
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v4, v5

    iget v5, v14, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v5, v9

    move v10, v4

    move v11, v5

    :goto_13e
    iget-object v4, v14, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v4, :cond_150

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v6, v4, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget v4, v4, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    move-wide/from16 v18, v7

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setUidState(IIJ)V

    goto :goto_152

    :cond_150
    move-wide/from16 v18, v7

    :goto_152
    iget-object v4, v14, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v4, :cond_1c1

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v6, v6, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iget-object v5, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eqz v5, :cond_178

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v5, :cond_175

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v5, v4}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    :cond_175
    move-wide/from16 v7, v18

    goto :goto_1b7

    :cond_178
    cmp-long v4, v2, v18

    if-lez v4, :cond_1a0

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, v18

    iput-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    const/4 v5, 0x0

    :goto_183
    iget-object v6, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_19b

    iget-object v6, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v7, v6, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_183

    :cond_19b
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v0, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1a0
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v5, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v4

    if-nez v4, :cond_1b4

    move-wide/from16 v7, v18

    goto :goto_1cf

    :cond_1b4
    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v2, v7

    :goto_1b7
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v5, v14, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v14, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v4, v5, v14, v15}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_1c0
    .catchall {:try_start_74 .. :try_end_1c0} :catchall_85

    goto :goto_1c3

    :cond_1c1
    move-wide/from16 v7, v18

    :goto_1c3
    move-object/from16 v4, p3

    goto/16 :goto_2b

    :cond_1c7
    move-wide/from16 v18, v2

    move-object/from16 p3, v4

    const-wide/16 v16, -0x1

    :goto_1cd
    move-wide/from16 v2, v18

    :goto_1cf
    :try_start_1cf
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    if-eqz v12, :cond_202

    cmp-long v4, p4, v16

    if-eqz v4, :cond_1da

    move-wide/from16 v2, p4

    :cond_1da
    cmp-long v4, v2, v7

    if-lez v4, :cond_202

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, v7

    iput-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    const/4 v9, 0x0

    :goto_1e5
    iget-object v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v9, v5, :cond_1fd

    iget-object v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e5

    :cond_1fd
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_202
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    monitor-exit p0
    :try_end_208
    .catchall {:try_start_1cf .. :try_end_208} :catchall_15

    return-void

    :goto_209
    if-eqz p3, :cond_213

    :try_start_20b
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_20f

    goto :goto_213

    :catchall_20f
    move-exception v0

    :try_start_210
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_213
    :goto_213
    throw v2

    :goto_214
    monitor-exit p0
    :try_end_215
    .catchall {:try_start_210 .. :try_end_215} :catchall_15

    throw v0
.end method

.method public setPowerComponentEnabled(IZ)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_12

    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_9

    throw p1
.end method
