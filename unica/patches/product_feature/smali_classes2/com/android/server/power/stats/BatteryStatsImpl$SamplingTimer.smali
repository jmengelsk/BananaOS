.class public Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBaseReportedCount:I

.field public mBaseReportedTotalTimeUs:J

.field public mCurrentReportedCount:I

.field public mCurrentReportedTotalTimeUs:J

.field public mTimeBaseRunning:Z

.field public mTrackingReportedValues:Z

.field public mUpdateVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    iget-boolean p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    iget-boolean p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method


# virtual methods
.method public final computeCurrentCountLocked()I
    .locals 2

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final computeRunTimeLocked(JJ)J
    .locals 2

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p3, :cond_0

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    sub-long/2addr p3, v0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    :goto_0
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentReportedCount="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mBaseReportedCount="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentReportedTotalTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mBaseReportedTotalTimeUs="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    const/4 p3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    const/4 p0, 0x1

    return p0
.end method

.method public final update(JJIJ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-nez v0, :cond_1

    sub-long v3, p1, p3

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    cmp-long p3, p3, v1

    if-nez p3, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p5, -0x1

    :goto_0
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    :cond_1
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_2

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    if-ge p5, p3, :cond_3

    :cond_2
    invoke-virtual {p0, v1, v2, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    move-result p3

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    :cond_3
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    return-void
.end method
