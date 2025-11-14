.class public Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAcquireTimeUs:J

.field public mInList:Z

.field public mNesting:I

.field public mTimeoutUs:J

.field public final mTimerPool:Ljava/util/ArrayList;

.field public final mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

.field public mUpdateTimeUs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const-wide/16 p4, -0x1

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    return-void
.end method

.method public static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V
    .locals 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    int-to-long v4, p3

    div-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    :cond_0
    iput-wide p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final computeCurrentCountLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public final computeRunTimeLocked(JJ)J
    .locals 6

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-long v4, v2, p3

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    add-long p1, v2, p3

    :cond_0
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_2

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    int-to-long v0, p0

    div-long v0, p1, v0

    :cond_2
    add-long/2addr p3, v0

    return-wide p3
.end method

.method public detach()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final isRunningLocked()Z
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    const-string/jumbo v0, "mNesting="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mUpdateTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mAcquireTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p3, :cond_0

    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_0
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    return-void
.end method

.method public reset(JZ)Z
    .locals 3

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    invoke-super {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_2
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return v0
.end method

.method public final setMark(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p1, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_1
    :goto_0
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    return-void
.end method

.method public startRunningLocked(J)V
    .locals 3

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return-void

    :cond_1
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    :cond_2
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-static {v2, v3, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    :goto_0
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    :cond_2
    :goto_1
    return-void
.end method
