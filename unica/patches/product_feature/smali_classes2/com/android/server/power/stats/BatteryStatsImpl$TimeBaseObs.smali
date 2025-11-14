.class public interface abstract Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract onTimeStarted(JJ)V
.end method

.method public abstract onTimeStopped(JJJ)V
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    return-void
.end method

.method public abstract reset(JZ)Z
.end method
