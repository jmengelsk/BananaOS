.class public final Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAcquireTime:J

.field public mDutyCycle:I

.field public mNesting:I

.field public mUpdateTime:J


# virtual methods
.method public final computeCurrentCountLocked()I
    .registers 1

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public final computeRunTimeLocked(JJ)J
    .registers 7

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_11

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    sub-long/2addr p1, v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    int-to-long v0, p0

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    goto :goto_13

    :cond_11
    const-wide/16 p1, 0x0

    :goto_13
    add-long/2addr p3, p1

    return-wide p3
.end method

.method public final isRunningLocked()Z
    .registers 1

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    const-string/jumbo v0, "mNesting="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mUpdateTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mAcquireTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mDutyCycle="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mNesting="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .registers 7

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez p3, :cond_12

    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    :cond_12
    return-void
.end method

.method public final readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    return-void
.end method

.method public final reset(JZ)Z
    .registers 5

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    const/4 v0, 0x0

    if-gtz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_8

    :cond_7
    move p3, v0

    :goto_8
    invoke-super {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    :cond_17
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    return p3
.end method

.method public final stopRunningLocked(J)V
    .registers 9

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v0, :cond_5

    goto :goto_30

    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_30

    cmp-long p1, p1, v2

    if-nez p1, :cond_30

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    :cond_30
    :goto_30
    return-void
.end method

.method public final writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
