.class public final Lcom/android/server/power/stats/BatteryStatsImpl$7;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->$r8$classId:I

    packed-switch p1, :pswitch_data_c4

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

    :pswitch_1c  #0x1
    const-string/jumbo p1, "connected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_27
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

    :catchall_3c
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_3c

    throw p0

    :pswitch_40  #0x0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_43
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c0

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

    if-eqz p2, :cond_88

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenState:I

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_88

    :catchall_7e
    move-exception v0

    move-object p0, v0

    goto :goto_c2

    :cond_81
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOffTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSilentLogOn:Z

    if-eq v1, p2, :cond_b3

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    move-result v0

    if-nez p2, :cond_9b

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenState:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateOldDischargeSilentLogOnLevelPermilLocked(II)V

    :cond_9b
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenState:I

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ab

    iput v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    goto :goto_af

    :cond_ab
    iput v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOnUnplugLevelPermil:I

    iput v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeSilentOnScreenOffUnplugLevelPermil:I

    :goto_af
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-boolean p2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mIsSilentLogOn:Z

    :cond_b3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x186a2

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    :cond_c0
    monitor-exit p1

    return-void

    :goto_c2
    monitor-exit p1
    :try_end_c3
    .catchall {:try_start_43 .. :try_end_c3} :catchall_7e

    throw p0

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method
