.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$7;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:I

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v7, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHotspotState:I

    if-eq v7, p0, :cond_1

    iput p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHotspotState:I

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setWifiApState(Z)V

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->saveBatteryUsageStatsOnReset()V

    monitor-enter v1

    :try_start_1
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v3

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsLocked(IJJ)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
