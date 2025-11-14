.class public final Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCallback:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 p1, 0x3

    const/high16 v4, 0x4000000

    if-eq v2, p1, :cond_3

    const/4 p0, 0x4

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSystemServicesReady:Z

    if-eqz p0, :cond_2

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.server.BatteryStatsService.action.BATTERYSTATS_RESET"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->batterySendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSystemServicesReady:Z

    if-nez p1, :cond_4

    iput-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPendingReportCharging:Z

    :cond_4
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    if-eqz p0, :cond_5

    const-string/jumbo p0, "android.os.action.CHARGING"

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "android.os.action.DISCHARGING"

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->batterySendBroadcast(Landroid/content/Intent;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    :try_start_2
    iput-boolean v3, v1, Lcom/android/server/am/ActivityManagerService;->mOnBattery:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    return-void
.end method
