.class public final Lcom/android/server/power/stats/WakelockPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mFirstCollection:Z

.field public mIsInitialized:Z

.field public mLastCollectionTime:J

.field public final mLastUidWakelockDurations:Landroid/util/SparseLongArray;

.field public mLastWakelockDurationMs:J

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

.field public final mWakelockDurationRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .registers 9

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    const/16 v0, 0xc

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, v1, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastUidWakelockDurations:Landroid/util/SparseLongArray;

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakelockDurationRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iput-object p0, v1, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mWakelockDurationRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mIsInitialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    goto :goto_3b

    :cond_8
    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v1, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v1}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-virtual {v1, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v3, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget v5, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v8, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v7, 0x0

    const/16 v4, 0xc

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v3, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v1, Lcom/android/internal/os/PowerStats;

    iget-object v3, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v1, v3}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iput-boolean v2, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mIsInitialized:Z

    :goto_3b
    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v7, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastCollectionTime:J

    sub-long v7, v5, v7

    iput-wide v7, v1, Lcom/android/internal/os/PowerStats;->durationMs:J

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mWakelockDurationRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_5e
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v9}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v8

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v10}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v11

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, 0x0

    invoke-virtual {v1, v13, v14, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    sub-long/2addr v8, v13

    div-long/2addr v8, v11

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    monitor-exit v7
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_140

    iget-boolean v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    if-nez v1, :cond_9c

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v7, v7, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v13, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastWakelockDurationMs:J

    sub-long v13, v8, v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iget v1, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide v13, v7, v1

    :cond_9c
    iput-wide v8, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastWakelockDurationMs:J

    iget-object v1, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mWakelockDurationRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    :try_start_a3
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v11

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_b5
    if-ltz v7, :cond_135

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object v9, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move-wide/from16 v18, v3

    move-wide/from16 v16, v11

    move v11, v10

    :goto_ce
    if-ge v11, v15, :cond_e8

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_e5

    invoke-virtual {v12, v13, v14, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v20

    add-long v18, v18, v20

    goto :goto_e5

    :catchall_e3
    move-exception v0

    goto :goto_13e

    :cond_e5
    :goto_e5
    add-int/lit8 v11, v11, 0x1

    goto :goto_ce

    :cond_e8
    div-long v11, v18, v16

    cmp-long v9, v11, v3

    if-eqz v9, :cond_12f

    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iget-boolean v9, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    if-nez v9, :cond_126

    iget-object v9, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastUidWakelockDurations:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v18

    move-wide/from16 v20, v11

    sub-long v10, v20, v18

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    cmp-long v12, v10, v3

    if-eqz v12, :cond_128

    iget-object v12, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v12, v12, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [J

    if-nez v12, :cond_11f

    iget-object v12, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v12, v12, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v12, v12, [J

    iget-object v15, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v15, v15, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11f
    iget-object v15, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget v15, v15, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aput-wide v10, v12, v15

    goto :goto_128

    :cond_126
    move-wide/from16 v20, v11

    :cond_128
    :goto_128
    iget-object v10, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastUidWakelockDurations:Landroid/util/SparseLongArray;

    move-wide/from16 v11, v20

    invoke-virtual {v10, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_12f
    add-int/lit8 v7, v7, -0x1

    move-wide/from16 v11, v16

    const/4 v10, 0x0

    goto :goto_b5

    :cond_135
    monitor-exit v8
    :try_end_136
    .catchall {:try_start_a3 .. :try_end_136} :catchall_e3

    iput-wide v5, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastCollectionTime:J

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    iget-object v0, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v0

    :goto_13e
    :try_start_13e
    monitor-exit v8
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_e3

    throw v0

    :catchall_140
    move-exception v0

    :try_start_141
    monitor-exit v7
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw v0
.end method
