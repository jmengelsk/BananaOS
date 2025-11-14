.class public Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

.field public final mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

.field public final mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;

    iget-object v1, p2, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    iget-object v1, p1, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    const-string/jumbo v2, "aggregated-power-stats"

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    return-void
.end method

.method public static createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 15

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No clock updates in aggregated power stats "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "MultiStatePowerAttributor"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    iget-wide v2, v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    new-instance v4, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v4, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_1

    iget-wide v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    sub-long/2addr v2, v5

    :goto_1
    move-wide v13, v2

    goto :goto_2

    :cond_1
    iget-wide v8, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    sub-long v2, v8, v2

    goto :goto_1

    :goto_2
    iget-wide v9, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    iget-object v2, v4, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    new-instance v8, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    invoke-direct/range {v8 .. v14}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    add-long/2addr v5, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    invoke-virtual {v4, v0}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    return-object v4
.end method


# virtual methods
.method public final estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-wide/from16 v10, p3

    const/4 v7, 0x0

    :goto_0
    if-ltz v4, :cond_a

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v9, v8, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    const-string/jumbo v12, "aggregated-power-stats"

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v16, v3

    move v6, v4

    goto/16 :goto_5

    :cond_0
    iget-object v9, v8, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    const-wide v12, 0x7fffffffffffffffL

    const-wide/high16 v14, -0x8000000000000000L

    const/4 v5, 0x0

    :goto_1
    move-object v6, v9

    check-cast v6, Ljava/util/ArrayList;

    move-object/from16 v16, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_3

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    move v6, v4

    move/from16 v17, v5

    iget-wide v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    move-wide/from16 v18, v4

    iget-wide v3, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long v4, v18, v3

    cmp-long v3, v18, v12

    if-gez v3, :cond_1

    move-wide/from16 v12, v18

    :cond_1
    cmp-long v3, v4, v14

    if-lez v3, :cond_2

    move-wide v14, v4

    :cond_2
    add-int/lit8 v5, v17, 0x1

    move v4, v6

    move-object/from16 v3, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    move v6, v4

    cmp-long v3, v12, p3

    if-ltz v3, :cond_9

    cmp-long v3, v14, p5

    if-ltz v3, :cond_4

    goto :goto_5

    :cond_4
    cmp-long v3, v14, v10

    if-lez v3, :cond_5

    move-wide v10, v14

    :cond_5
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-wide v4, v8, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    const-string/jumbo v9, "aggregated-power-stats"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_7

    :try_start_1
    const-string/jumbo v4, "PowerStatsExporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read PowerStatsStore section "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_9

    :cond_6
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_7
    :try_start_3
    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    const/4 v5, 0x0

    :goto_2
    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_6

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    check-cast v7, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v1, v0, v7}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_8

    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v1

    :cond_9
    :goto_5
    add-int/lit8 v4, v6, -0x1

    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v7, :cond_b

    iget-wide v3, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    sub-long v3, p5, v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_c

    :cond_b
    iget-object v8, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v14, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;

    invoke-direct {v14, v1, v0}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;)V

    move-object/from16 v9, p2

    move-wide/from16 v12, p5

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    :cond_c
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :goto_6
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public final setPowerComponentSupported(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->setPowerComponentEnabled(IZ)V

    return-void
.end method

.method public storeAggregatedPowerStats(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    return-void
.end method
