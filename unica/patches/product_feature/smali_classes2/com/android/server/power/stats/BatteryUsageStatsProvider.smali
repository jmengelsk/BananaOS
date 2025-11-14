.class public final Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAccumulatedBatteryUsageStatsSpanSize:I

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mLastAccumulationMonotonicHistorySize:J

.field public final mLock:Ljava/lang/Object;

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

.field public mPowerCalculators:Ljava/util/List;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

.field public final mRatedCapacity:D

.field public final mTypicalCapacity:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/MonotonicClock;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iput-object p5, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iput-object p4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iput p6, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    iput-object p7, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    new-instance p1, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p2, p5, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    const-string/jumbo p4, "battery-usage-stats"

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p2, p5, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    const-string/jumbo p4, "accumulated-battery-usage-stats"

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/android/internal/os/PowerProfile;->getBatteryTypicalCapacity()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mTypicalCapacity:D

    invoke-virtual {p3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mRatedCapacity:D

    return-void
.end method


# virtual methods
.method public final accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    new-instance p1, Lcom/android/server/power/stats/PowerStatsSpan;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p1, v1, v2}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    new-instance v1, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    invoke-virtual {p1, v1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    iget-wide v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long v8, v1, v4

    iget-object v1, p1, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->write()V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    iget-object p0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void

    :cond_0
    iget-object p2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    new-instance p2, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsSpan;Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v2

    iget-wide v5, v2, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v3}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long/2addr v3, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    :cond_1
    iget-object v0, v2, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicStartTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicEndTime()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    const/16 v18, 0x1

    goto :goto_0

    :cond_3
    const/16 v18, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v21

    iget-object v9, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    new-instance v16, Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v20

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v22}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    move-object/from16 v10, v16

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/lit8 v12, v11, 0x1

    if-nez v11, :cond_6

    cmp-long v11, v7, v3

    if-nez v11, :cond_5

    cmp-long v11, v14, v3

    if-eqz v11, :cond_6

    :cond_5
    const-string v11, "BatteryUsageStatsProv"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "BatteryUsageStatsQuery specifies a time range that is incompatible with PowerCalculators: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :cond_6
    cmp-long v9, v7, v3

    if-nez v9, :cond_7

    iget-wide v7, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    :cond_7
    move-wide/from16 v16, v3

    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    const/16 v18, 0x1

    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    sub-long v5, v7, v5

    add-long/2addr v5, v3

    invoke-virtual {v10, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    cmp-long v3, v14, v16

    if-eqz v3, :cond_8

    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    sub-long v5, v14, v5

    add-long/2addr v5, v3

    invoke-virtual {v10, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_2

    :cond_8
    move-wide/from16 v3, p3

    invoke-virtual {v10, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    :goto_2
    if-eqz v12, :cond_f

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v16, 0x3e8

    mul-long v26, v11, v16

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    mul-long v28, v5, v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_3
    if-ltz v11, :cond_a

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    if-nez v2, :cond_9

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    const/16 v9, 0x442

    if-ne v13, v9, :cond_9

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v25, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v10, v12}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_a
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_e

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/PowerCalculator;

    if-eqz v5, :cond_b

    array-length v11, v5

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_d

    aget v13, v5, v12

    invoke-virtual {v9, v13}, Lcom/android/server/power/stats/PowerCalculator;->isPowerComponentSupported(I)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_c

    :cond_b
    move-object/from16 v30, p2

    move-object/from16 v25, v3

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    goto :goto_7

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v25, v3

    goto :goto_8

    :goto_7
    :try_start_1
    invoke-virtual/range {v23 .. v30}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    move-object/from16 v10, v24

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v25

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_e
    move-object/from16 v25, v3

    monitor-exit v25

    goto :goto_a

    :goto_9
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_f
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getPreferredHistoryDurationMs()J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;J)Landroid/os/BatteryUsageStats$Builder;

    :cond_10
    iget-object v9, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v11, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    move-wide v12, v7

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_b
    if-ltz v4, :cond_15

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v10, v6}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    :cond_14
    :goto_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :cond_15
    :goto_d
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    long-to-double v2, v2

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    invoke-virtual {v10, v1, v2}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mRatedCapacity:D

    invoke-virtual {v10, v1, v2}, Landroid/os/BatteryUsageStats$Builder;->setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mTypicalCapacity:D

    invoke-virtual {v10, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v10}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    :cond_16
    const/16 v18, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_17

    move/from16 v11, v18

    goto :goto_e

    :cond_17
    const/4 v11, 0x0

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v14

    iget-object v10, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    new-instance v9, Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v13

    invoke-direct/range {v9 .. v15}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v1, "BatteryUsageStatsProv"

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    const-string/jumbo v5, "battery-usage-stats"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_f

    :cond_18
    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v12, 0x7fffffffffffffffL

    move-wide v14, v7

    move-wide/from16 v17, v14

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_19

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    move-object/from16 p1, v4

    move-object/from16 p0, v5

    iget-wide v4, v8, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    move-wide/from16 v19, v4

    iget-wide v4, v8, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long v4, v19, v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    goto :goto_10

    :cond_19
    move-object/from16 p0, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, v17

    if-eqz v4, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v4

    cmp-long v4, v12, v4

    if-lez v4, :cond_1b

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, v17

    if-eqz v4, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v4

    cmp-long v4, v14, v4

    if-gtz v4, :cond_1b

    goto :goto_12

    :cond_1b
    :goto_11
    move-wide/from16 v7, v17

    goto :goto_f

    :cond_1c
    :goto_12
    filled-new-array/range {p0 .. p0}, [Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v3

    if-nez v3, :cond_1e

    if-eqz v3, :cond_1b

    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    goto :goto_11

    :cond_1e
    :try_start_2
    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_1d

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    check-cast v7, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    iget-object v7, v7, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v7}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :cond_1f
    if-eqz v11, :cond_20

    invoke-virtual {v7}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v8

    if-nez v8, :cond_20

    const-string v7, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_20
    invoke-virtual {v9, v7}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_13

    :goto_14
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_15

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v1

    :cond_21
    invoke-virtual {v9}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public final getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerCalculators()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/BatteryChargeCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BatteryChargeCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/WakelockPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/MobileRadioPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/PhonePowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/WifiPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/SensorPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/SensorManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/GnssPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/CameraPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/FlashlightPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/AudioPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/VideoPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/ScreenPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/IdlePowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/PowerSharingCalculator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    .locals 15

    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string/jumbo v5, "accumulated-battery-usage-stats"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {p0, v7, v8, v6}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v6, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_0
    if-ltz v9, :cond_a

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    iget-object v11, v10, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    check-cast v10, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    iget-object v5, v10, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    iput-object v5, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    const/4 v6, 0x0

    move v9, v6

    move-wide v10, v7

    :goto_1
    iget-object v12, v5, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_1

    iget-object v12, v5, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    iget-wide v12, v12, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    cmp-long v14, v12, v10

    if-gez v14, :cond_0

    move-wide v10, v12

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    cmp-long v5, v10, v7

    if-eqz v5, :cond_2

    move-wide v1, v10

    :cond_2
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move v2, v6

    move-wide v9, v7

    :goto_2
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    iget-wide v11, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    cmp-long v5, v11, v9

    if-gez v5, :cond_3

    move-wide v9, v11

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    cmp-long v1, v9, v7

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-wide v9, v3

    :goto_3
    iput-wide v9, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    const-wide/high16 v1, -0x8000000000000000L

    move-wide v7, v1

    :goto_4
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_7

    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    iget-wide v9, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    iget-wide v11, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v9, v11

    cmp-long v5, v9, v7

    if-lez v5, :cond_6

    move-wide v7, v9

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    cmp-long p0, v7, v1

    if-eqz p0, :cond_8

    move-wide v3, v7

    :cond_8
    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    return-object v0

    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public final updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    iget-wide v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    if-nez v5, :cond_0

    move-wide v11, v6

    goto :goto_0

    :cond_0
    move-wide v11, v3

    :goto_0
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v5}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v13

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    if-nez v5, :cond_1

    new-instance v15, Landroid/os/BatteryUsageStats$Builder;

    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v21}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    iput-object v15, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-wide v8, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    iput-wide v8, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    iput-wide v6, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    invoke-virtual {v15, v8, v9}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    :cond_1
    iput-wide v13, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    sub-long v4, v13, v11

    invoke-virtual {v3, v4, v5}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    iget-object v9, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-object v10, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v8, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    long-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mRatedCapacity:D

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    iget-wide v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mTypicalCapacity:D

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method
