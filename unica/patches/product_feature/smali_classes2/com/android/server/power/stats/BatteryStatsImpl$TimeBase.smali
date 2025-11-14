.class public final Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mObservers:Ljava/util/Collection;

.field public mPastRealtimeUs:J

.field public mPastUptimeUs:J

.field public mRealtimeStartUs:J

.field public mRealtimeUs:J

.field public mRunning:Z

.field public mUptimeStartUs:J

.field public mUptimeUs:J


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_10

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final computeRealtime(J)J
    .registers 5

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final computeUptime(J)J
    .registers 5

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final getRealtime(J)J
    .registers 7

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_b
    return-wide v0
.end method

.method public final getUptime(J)J
    .registers 7

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_b
    return-wide v0
.end method

.method public final init(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    return-void
.end method

.method public final remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setRunning(JJZ)Z
    .registers 15

    move v5, p5

    iget-boolean v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v6, v5, :cond_5c

    iput-boolean v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v5, :cond_27

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    invoke-interface {v5, p3, p4, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJ)V

    goto :goto_17

    :cond_27
    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v7, p1, v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-wide v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v7, p3, v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v3, v1

    move-wide v1, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    move-wide v1, v3

    goto :goto_47

    :cond_5a
    const/4 v0, 0x1

    return v0

    :cond_5c
    const/4 v0, 0x0

    return v0
.end method

.method public final writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .registers 8

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
