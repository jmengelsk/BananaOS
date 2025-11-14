.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mInDischarge:Z

.field public mLastAddedDurationUs:J

.field public mLastAddedTimeUs:J


# virtual methods
.method public final computeCurrentCountLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public final computeRunTimeLocked(JJ)J
    .locals 2

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr p1, p3

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    return-wide p1

    :cond_1
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    return-wide p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    const-string/jumbo v0, "mLastAddedTime="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mLastAddedDuration="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    :cond_0
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return-void
.end method

.method public final recomputeLastDuration(JZ)V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    :cond_1
    if-eqz p3, :cond_2

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    return-void

    :cond_2
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    :cond_3
    return-void
.end method

.method public final reset(JZ)Z
    .locals 2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method
