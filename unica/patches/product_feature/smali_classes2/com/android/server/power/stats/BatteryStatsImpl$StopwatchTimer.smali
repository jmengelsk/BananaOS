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
    .registers 6

    invoke-direct {p0, p1, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const-wide/16 p4, -0x1

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    return-void
.end method

.method public static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V
    .registers 10

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v0, p3, -0x1

    :goto_6
    if-ltz v0, :cond_24

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1f

    int-to-long v4, p3

    div-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    :cond_1f
    iput-wide p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_24
    return-void
.end method


# virtual methods
.method public final computeCurrentCountLocked()I
    .registers 1

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public final computeRunTimeLocked(JJ)J
    .registers 11

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_12

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-long v4, v2, p3

    cmp-long v4, p1, v4

    if-lez v4, :cond_12

    add-long p1, v2, p3

    :cond_12
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_30

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x1

    :goto_2d
    int-to-long v0, p0

    div-long v0, p1, v0

    :cond_30
    add-long/2addr p3, v0

    return-wide p3
.end method

.method public detach()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public final isRunningLocked()Z
    .registers 1

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

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
    .registers 7

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p3, :cond_12

    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_12
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    return-void
.end method

.method public reset(JZ)Z
    .registers 7

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_e

    if-eqz p3, :cond_e

    move v1, v2

    :cond_e
    invoke-super {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p3, :cond_1d

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_1d
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return v0
.end method

.method public final setMark(J)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    goto :goto_20

    :cond_15
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p1, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_20
    :goto_20
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    return-void
.end method

.method public startRunningLocked(J)V
    .registers 6

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz p1, :cond_31

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return-void

    :cond_31
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    :cond_35
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .registers 4

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_a
    return-void
.end method

.method public stopRunningLocked(J)V
    .registers 7

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_5

    goto :goto_40

    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    const/4 p1, 0x0

    invoke-static {v2, v3, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_22
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    :goto_2d
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_40

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_40

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    :cond_40
    :goto_40
    return-void
.end method
