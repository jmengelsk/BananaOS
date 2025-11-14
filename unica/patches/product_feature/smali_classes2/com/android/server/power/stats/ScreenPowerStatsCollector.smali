.class public final Lcom/android/server/power/stats/ScreenPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDisplayCount:I

.field public mFirstSample:Z

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastBrightnessLevelTime:[[J

.field public mLastCollectionTime:J

.field public mLastDozeTime:[J

.field public mLastScreenOnTime:[J

.field public final mLastTopActivityTime:Landroid/util/SparseLongArray;

.field public mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, v1, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    iput-object p1, v1, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->ensureInitialized$4()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    const-wide/16 v5, 0x3e8

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v7, v4, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_0
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v8, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v8}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v8

    mul-long/2addr v8, v5

    invoke-virtual {v4, v3, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenOnTime(IJ)J

    move-result-wide v8

    div-long/2addr v8, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-boolean v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v7, v7, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v10, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    aget-wide v10, v10, v3

    sub-long v10, v8, v10

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget v4, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    add-int/2addr v4, v3

    aput-wide v10, v7, v4

    :cond_1
    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    aput-wide v8, v4, v3

    move v4, v0

    :goto_1
    const/4 v7, 0x5

    if-ge v4, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v8, v7, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    :try_start_1
    iget-object v7, v7, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v7, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v9}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v5

    invoke-virtual {v7, v3, v4, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v9

    div-long/2addr v9, v5

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v11, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    aget-object v11, v11, v3

    aget-wide v11, v11, v4

    sub-long v11, v9, v11

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-object v7, v7, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    aput-wide v11, v8, v7

    :cond_2
    iget-object v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    aget-object v7, v7, v3

    aput-wide v9, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v8, v4, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    :try_start_3
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v5

    invoke-virtual {v4, v3, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v9

    div-long/2addr v9, v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-boolean v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    aget-wide v6, v6, v3

    sub-long v6, v9, v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget v4, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    add-int/2addr v4, v3

    aput-wide v6, v5, v4

    :cond_4
    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    aput-wide v9, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_5
    iget-object v1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    new-instance v2, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/ScreenPowerStatsCollector;)V

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_6
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    mul-long/2addr v7, v5

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_7

    iget-object v9, v1, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-virtual {v9, v0, v7, v8, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStateTime(IJI)J

    move-result-wide v10

    div-long/2addr v10, v5

    iget-object v12, v9, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v12, :cond_6

    iget v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;->onUidTopActivityTime(IJ)V

    goto :goto_3

    :catchall_3
    move-exception p0

    goto :goto_4

    :cond_6
    invoke-virtual {v12, v7, v8, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    div-long/2addr v12, v5

    iget v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;->onUidTopActivityTime(IJ)V

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastCollectionTime:J

    sub-long v4, v1, v4

    iput-wide v4, v3, Lcom/android/internal/os/PowerStats;->durationMs:J

    iput-wide v1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastCollectionTime:J

    iput-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    return-object v3

    :goto_4
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final ensureInitialized$4()Z
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v4, v4

    iput v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iput-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    new-instance v3, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    new-instance v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v0, v0

    invoke-direct {v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    iput v0, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    const-string/jumbo v5, "on"

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    const/4 v5, 0x5

    new-array v6, v5, [I

    iput-object v6, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_2

    iget-object v7, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    sget-object v8, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v4, v0, v2, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "doze"

    invoke-virtual {v4, v0, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    invoke-virtual {v4, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    const-string/jumbo v0, "top"

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    iput-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    new-instance v12, Landroid/os/PersistableBundle;

    invoke-direct {v12}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v0, v12}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v6, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget v8, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v11, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    new-array v3, v0, [J

    iput-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v5, v3, v1

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v6}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iput-boolean v1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method

.method public final onUidRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method
