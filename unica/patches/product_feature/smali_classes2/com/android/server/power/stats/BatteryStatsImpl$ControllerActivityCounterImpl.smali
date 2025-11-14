.class public final Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mNumTxStates:I

.field public final mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mProcessState:I

.field public mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;


# direct methods
.method public static -$$Nest$mgetOrCreateRxTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    :cond_a
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public static -$$Nest$mgetOrCreateTxTimeCounters(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public static -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V
    .registers 7

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_9

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_10

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_22
    return-void
.end method

.method public constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public static writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_d
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public final createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    invoke-static {p0}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result p0

    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v3, p0, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    return-object v2
.end method

.method public final describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl;->ZERO_LONG_COUNTER:Lcom/android/server/power/stats/BatteryStatsImpl$1;

    :cond_6
    return-object p0
.end method

.method public final getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl;->ZERO_LONG_COUNTER:Lcom/android/server/power/stats/BatteryStatsImpl$1;

    :cond_6
    return-object p0
.end method

.method public final getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl;->ZERO_LONG_COUNTER_ARRAY:[Landroid/os/BatteryStats$LongCounter;

    :cond_6
    return-object p0
.end method

.method public final readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v2

    :goto_15
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    goto :goto_41

    :cond_40
    move-object v0, v2

    :goto_41
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_56

    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    move v1, v4

    :goto_57
    new-array v5, v3, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move v6, v4

    :goto_5a
    if-ge v6, v3, :cond_6f

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {p1, v0, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v7

    if-eqz v7, :cond_6b

    aput-object v7, v5, v6

    goto :goto_6c

    :cond_6b
    move v1, v4

    :goto_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_6f
    if-eqz v1, :cond_72

    move-object v2, v5

    :cond_72
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-void
.end method

.method public final reset(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    return-void
.end method

.method public final writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    array-length v2, v0

    move v3, v1

    :goto_27
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v4, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_36
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v1, p2

    move v2, v0

    :goto_27
    if-ge v2, v1, :cond_36

    aget-object v3, p2, v2

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_36
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
