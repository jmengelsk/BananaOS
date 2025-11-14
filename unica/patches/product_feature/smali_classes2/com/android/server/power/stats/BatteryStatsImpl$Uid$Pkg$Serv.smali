.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mLaunched:Z

.field public mLaunchedSinceMs:J

.field public mLaunches:I

.field public mRunning:Z

.field public mRunningSinceMs:J

.field public mStartTimeMs:J

.field public mStarts:I


# virtual methods
.method public final detach()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public final getLaunches(I)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    return p0
.end method

.method public final getStartTime(JI)J
    .locals 2

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez p3, :cond_0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public final getStarts(I)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    return p0
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
