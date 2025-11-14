.class public final Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerState:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eq v4, v5, :cond_1

    if-ne v4, v8, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    const/16 v5, 0x14

    if-ne v2, v5, :cond_2

    iput-boolean v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_2

    :cond_2
    const/16 v5, 0xd

    if-ne v2, v5, :cond_3

    if-ne p1, v8, :cond_3

    iput-boolean v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_2

    :cond_3
    iput-boolean v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    :goto_2
    iget-boolean p1, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsServiceStateNr:Z

    if-eqz p1, :cond_4

    if-eqz v4, :cond_4

    iget-object p1, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object p1, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
