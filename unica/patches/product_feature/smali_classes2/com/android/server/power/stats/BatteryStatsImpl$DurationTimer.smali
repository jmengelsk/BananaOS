.class public Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCurrentDurationMs:J

.field public mMaxDurationMs:J

.field public mStartTimeMs:J

.field public mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method


# virtual methods
.method public final getCurrentDurationMsLocked(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    div-long/2addr p1, v3

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public final getMaxDurationMsLocked(J)J
    .locals 2

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    return-wide p1

    :cond_0
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    return-wide p0
.end method

.method public final getTotalDurationMsLocked(J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p1, :cond_0

    const-wide/16 p1, 0x3e8

    div-long/2addr p3, p1

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :cond_0
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p1, :cond_0

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    const-wide/16 p3, 0x3e8

    div-long/2addr p5, p3

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr p5, p3

    add-long/2addr p5, p1

    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    return-void
.end method

.method public reset(JZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    move-result p3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return p3

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return p3
.end method

.method public startRunningLocked(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    div-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
