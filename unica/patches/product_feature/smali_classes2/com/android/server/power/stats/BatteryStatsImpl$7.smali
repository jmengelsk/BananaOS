.class public final Lcom/android/server/power/stats/BatteryStatsImpl$7;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0xe

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p2, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    const-string/jumbo p1, "connected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUsbConnectionStateLocked(JJZ)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "START"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOffTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenState:I

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOffTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSilentLogOn:Z

    if-eq v1, p2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    move-result v0

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateOldDischargeSilentLogOnLevelPermilLocked(II)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenState:I

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iput v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    goto :goto_1

    :cond_3
    iput v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    :goto_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-boolean p2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSilentLogOn:Z

    :cond_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x186a2

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    :cond_5
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
