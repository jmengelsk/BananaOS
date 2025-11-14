.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;


# instance fields
.field public mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mBinderCallCount:J

.field public final mBinderCallStats:Landroid/util/ArraySet;

.field public mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

.field public mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public final mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mChildUids:Landroid/util/SparseArray;

.field public mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mFullWifiLockOut:Z

.field public mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mInForegroundService:Z

.field public final mJobCompletions:Landroid/util/ArrayMap;

.field public final mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

.field public final mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public final mPackageStats:Landroid/util/ArrayMap;

.field public mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mPids:Landroid/util/SparseArray;

.field public mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field public mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field public mProcessState:I

.field public final mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mProcessStats:Landroid/util/ArrayMap;

.field public mProportionalSystemServiceUsage:D

.field public mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public final mSensorStats:Landroid/util/SparseArray;

.field public mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

.field public final mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mSystemServiceTimeUs:J

.field public final mUid:I

.field public mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

.field public mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

.field public mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

.field public mWifiBatchedScanBinStarted:I

.field public final mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiMulticastWakelockCount:I

.field public mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mWifiRunning:Z

.field public mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiScanStarted:Z

.field public mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;


# direct methods
.method public static bridge synthetic -$$Nest$fputmUidEnergyConsumerStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/internal/power/EnergyConsumerStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    return-void
.end method

.method public static -$$Nest$mmarkProcessForegroundTimeUs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;JZ)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    mul-long v5, p1, v1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    mul-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    :cond_3
    cmp-long p0, v3, v5

    if-gez p0, :cond_4

    return-wide v3

    :cond_4
    return-wide v5
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IJJ)V
    .locals 10

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v6, 0x7

    iput v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mInForegroundService:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v7, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v3, 0x3e8

    mul-long v8, p5, v3

    mul-long/2addr v3, p3

    invoke-virtual {v7, v8, v9, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v5, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5, v8, v9, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    const/4 v3, 0x2

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-array v0, v6, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-void
.end method

.method public static nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .locals 4

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final createBluetoothDutyScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    const/16 v1, 0x64

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    return-object p0
.end method

.method public final detachFromTimeBase()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([[Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->detach()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final ensureMultiStateCounters(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Multi-state counters used in streamlined mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureNetworkActivityLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public final getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public final getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public getBinderCallStats()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public final getBluetoothDutyScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    return-object p0
.end method

.method public final getBluetoothEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBluetoothEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public final getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-object p0
.end method

.method public final getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-object p0
.end method

.method public final getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public final getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public final getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public final getCameraEnergyConsumptionUC()J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public final getCpuActiveTime()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final getCpuActiveTime(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    invoke-static {v3}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public final getCpuClusterTimes()[J
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public final getCpuEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCpuEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getCpuFreqTimes([JI)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return v0

    :cond_2
    array-length p0, p1

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v2

    if-eq p0, v2, :cond_3

    return v0

    :cond_3
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public final getCpuFreqTimes(I)[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public final getCustomEnergyConsumerBatteryConsumptionUC()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/power/EnergyConsumerStats;->getNumberCustomPowerBuckets()I

    move-result p0

    new-array p0, p0, [J

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/power/EnergyConsumerStats;->getAccumulatedCustomBucketCharges()[J

    move-result-object p0

    return-object p0
.end method

.method public final getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v0, v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    const-string v0, ",0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    const-string/jumbo v4, "times="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "count="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "totalLatencyMs="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v1, v0

    if-ge p2, v1, :cond_2

    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v0, v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final getDisplayTopActivityTime(IJI)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v2, v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    aget-object p0, p0, p1

    if-nez p0, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_0
    return-wide v0
.end method

.method public final getEnergyConsumptionUC(I)J
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->getAccumulatedStandardBucketCharge(I)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getEnergyConsumptionUC(II)J
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/power/EnergyConsumerStats;->getAccumulatedStandardBucketCharge(II)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public final getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public final getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public final getFullWifiLockTime(JI)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getGnssEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getJobStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getMobileRadioActiveCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMobileRadioActiveTime(I)J
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    invoke-static {v3}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public final getMobileRadioActiveTimeInProcessState(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getTotalCount()J

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getMobileRadioApWakeupCount(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getMobileRadioEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMobileRadioEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public final getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public final getNetworkActivityBytes(II)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length p2, p0

    if-ge p1, p2, :cond_0

    aget-object p0, p0, p1

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getNetworkActivityPackets(II)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length p2, p0

    if-ge p1, p2, :cond_0

    aget-object p0, p0, p1

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getOrCreateBluetoothControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public final getOrCreateWifiControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public final getPackageStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getPackageStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getPidStats()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getProcessStateTime(IJI)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public final getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProcessStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getProportionalSystemServiceUsage()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    return-wide v0
.end method

.method public final getScreenOffCpuFreqTimes([JI)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return v0

    :cond_2
    array-length p0, p1

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v2

    if-eq p0, v2, :cond_3

    return v0

    :cond_3
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public final getScreenOffCpuFreqTimes(I)[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public final getScreenOnEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSensorStats()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;-><init>(I)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object p2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p2, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    move-object v5, p2

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v6, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object v2
.end method

.method public final getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>()V

    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final getSpeakerMediaTime(II)J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    if-ltz p1, :cond_1

    array-length p2, p0

    if-ge p1, p2, :cond_1

    aget-object p0, p0, p1

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public final getSyncStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getSystemCpuTimeUs(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0
.end method

.method public final getTimeAtCpuSpeed(III)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length p3, p0

    if-ge p1, p3, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    array-length p1, p0

    if-ge p2, p1, :cond_0

    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    return p0
.end method

.method public final getUserActivityCount(II)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getUserCpuTimeUs(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0
.end method

.method public final getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    return-object p0
.end method

.method public final getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public final getWakelockStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    :cond_0
    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "type="

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v2, p0

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_3

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    move-object v2, p0

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_5

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    :cond_5
    return-object p0

    :cond_6
    move-object v2, p0

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_7

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object v0

    :cond_7
    return-object p0
.end method

.method public final getWifiBatchedScanCount(II)I
    .locals 1

    const/4 p2, 0x0

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    if-nez p0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method public final getWifiBatchedScanTime(IJI)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public final getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public final getWifiEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWifiEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWifiMulticastTime(JI)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWifiRadioApWakeupCount(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getWifiRunningTime(JI)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWifiScanActualTime(J)J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public final getWifiScanBackgroundCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getWifiScanBackgroundTime(J)J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public final getWifiScanCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result p0

    return p0
.end method

.method public final getWifiScanTime(JI)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public final hasNetworkActivity()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSpeakerActivity()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasUserActivity()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initSpeakerTimeCounterLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final initUserActivityLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    sget v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final makeDisplayTopActivityTimer(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, v2

    iget-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    aput-object v1, v0, p1

    return-void
.end method

.method public final makeProcessState(I)V
    .locals 7

    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, v2

    iget-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    aput-object v1, v0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final makeWifiBatchedScanBin(I)V
    .locals 8

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v5, v0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    aput-object v2, v0, p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final noteActivityPausedLocked(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public final noteActivityResumedLocked(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public final noteBinderCallStatsLocked(JLjava/util/Collection;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallCount:J

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/os/BinderCallsStats$CallStat;

    sget-object p3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    iget-object v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    iget v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    goto :goto_1

    :cond_0
    new-instance p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    invoke-direct {p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;-><init>()V

    iget-object v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    iget v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->callCount:J

    iget-wide v2, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v0, v2

    iput-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->callCount:J

    iget-wide v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    iget-wide v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final noteBluetoothScanStartedLocked(IJZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->stopRunningLocked(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createBluetoothDutyScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    move-result-object v0

    iput p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v4, v3

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v2, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v1, v3

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_5
    return-void
.end method

.method public final noteFullWifiLockAcquiredLocked(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public final noteFullWifiLockReleasedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public final noteNetworkActivityLocked(IJJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void

    :cond_0
    const-string/jumbo p0, "Unknown network activity type "

    const-string p2, " was specified."

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "BatteryStatsImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final noteUserActivityLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    :cond_0
    if-ltz p1, :cond_1

    sget v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->stepAtomic()V

    return-void

    :cond_1
    const-string/jumbo p0, "Unknown user activity type "

    const-string v0, " was specified."

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "BatteryStatsImpl"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final noteWifiBatchedScanStartedLocked(IJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p1, v1, p1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p1, p1, v0

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public final noteWifiBatchedScanStoppedLocked(J)V
    .locals 3

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    :cond_0
    return-void
.end method

.method public final noteWifiMulticastDisabledLocked(J)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final noteWifiMulticastEnabledLocked(J)V
    .locals 7

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_1

    :cond_1
    move-object v3, p0

    :goto_1
    iget p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    return-void
.end method

.method public final noteWifiRunningLocked(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public final noteWifiScanStartedLocked(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public final noteWifiScanStoppedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public final noteWifiStoppedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public final readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->add(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_3
    return-void
.end method

.method public reset(JJI)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    move-result p1

    xor-int/2addr p1, p2

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    or-int/2addr p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    or-int/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    or-int/2addr p1, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_6

    move v1, v0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    move-result v2

    xor-int/2addr v2, p2

    or-int/2addr p1, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    move v1, p2

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    or-int/2addr p1, v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-lez v1, :cond_7

    move v1, p2

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    or-int/2addr p1, v1

    :cond_8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_9

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    invoke-static {v2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v2

    xor-int/2addr v2, p2

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_c

    move v1, v0

    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    invoke-static {v2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v2

    xor-int/2addr v2, p2

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v1, v2, :cond_b

    move v1, p2

    goto :goto_6

    :cond_b
    move v1, v0

    :goto_6
    or-int/2addr p1, v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->reset(JZ)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    goto :goto_7

    :cond_d
    move p1, p2

    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(J)V

    :cond_f
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(J)V

    :cond_10
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(J)V

    :cond_11
    const/4 v1, 0x4

    if-ne p5, v1, :cond_12

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    goto :goto_8

    :cond_12
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    invoke-static {p5}, Lcom/android/internal/power/EnergyConsumerStats;->resetIfNotNull(Lcom/android/internal/power/EnergyConsumerStats;)V

    :goto_8
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p5, :cond_13

    move v1, v0

    :goto_9
    array-length v3, p5

    if-ge v1, v3, :cond_13

    aget-object v3, p5, v1

    invoke-static {v3, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p5, p5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, p2

    :goto_a
    if-ltz v1, :cond_16

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v4, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v4

    xor-int/2addr v4, p2

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v5

    xor-int/2addr v5, p2

    or-int/2addr v4, v5

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v5

    xor-int/2addr v5, p2

    or-int/2addr v4, v5

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    move-result v5

    xor-int/2addr v5, p2

    or-int/2addr v4, v5

    if-nez v4, :cond_14

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :cond_14
    if-nez v4, :cond_15

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_b

    :cond_15
    move p1, p2

    :goto_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_16
    const-wide/16 v3, 0x3e8

    div-long v3, p3, v3

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {p5, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->cleanup(J)V

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p5, p5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, p2

    :goto_c
    if-ltz v1, :cond_18

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v5, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_d

    :cond_17
    move p1, p2

    :goto_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_18
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {p5, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->cleanup(J)V

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p5, p5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, p2

    :goto_e
    if-ltz v1, :cond_1a

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v5, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_f

    :cond_19
    move p1, p2

    :goto_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1a
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {p5, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->cleanup(J)V

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->clear()V

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result p5

    sub-int/2addr p5, p2

    :goto_10
    if-ltz p5, :cond_1c

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v1, p3, p4, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_11

    :cond_1b
    move p1, p2

    :goto_11
    add-int/lit8 p5, p5, -0x1

    goto :goto_10

    :cond_1c
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_12
    if-ltz p3, :cond_1d

    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_12

    :cond_1d
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_13
    if-ltz p3, :cond_1f

    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/BatteryStats$Uid$Pid;

    iget p4, p4, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez p4, :cond_1e

    move p1, p2

    goto :goto_14

    :cond_1e
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_14
    add-int/lit8 p3, p3, -0x1

    goto :goto_13

    :cond_1f
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_15
    if-ltz p3, :cond_20

    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->detach()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_15

    :cond_20
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallCount:J

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->clear()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public setProcessStateForTest(IJ)V
    .locals 2

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    invoke-static {p1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mEnergyConsumerStatsConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mEnergyConsumerStatsConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-direct {v0, v1}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/power/EnergyConsumerStats;->setState(IJ)V

    :cond_3
    return-void
.end method
