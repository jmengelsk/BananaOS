.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mServiceStats:Landroid/util/ArrayMap;

.field public final mWakeupAlarms:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getServiceStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getWakeupAlarmStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final noteWakeupAlarmLocked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->stepAtomic()V

    return-void
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
