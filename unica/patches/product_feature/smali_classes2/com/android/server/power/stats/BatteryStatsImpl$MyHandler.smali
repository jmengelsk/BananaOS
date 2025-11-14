.class public final Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCallback:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_7

    goto :goto_2a

    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_50

    const/4 p1, 0x3

    const/high16 v4, 0x4000000

    if-eq v2, p1, :cond_2b

    const/4 p0, 0x4

    if-eq v2, p0, :cond_18

    goto :goto_2a

    :cond_18
    iget-boolean p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSystemServicesReady:Z

    if-eqz p0, :cond_2a

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.server.BatteryStatsService.action.BATTERYSTATS_RESET"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->batterySendBroadcast(Landroid/content/Intent;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-boolean p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSystemServicesReady:Z

    if-nez p1, :cond_31

    iput-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPendingReportCharging:Z

    :cond_31
    monitor-enter v0

    :try_start_32
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    if-eqz p0, :cond_3e

    const-string/jumbo p0, "android.os.action.CHARGING"

    goto :goto_41

    :catchall_3c
    move-exception p0

    goto :goto_4e

    :cond_3e
    const-string/jumbo p0, "android.os.action.DISCHARGING"

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_3c

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->batterySendBroadcast(Landroid/content/Intent;)V

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_3c

    throw p0

    :cond_50
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_55

    goto :goto_56

    :cond_55
    const/4 v3, 0x0

    :goto_56
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    :try_start_5f
    iput-boolean v3, v1, Lcom/android/server/am/ActivityManagerService;->mOnBattery:Z

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_66

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :cond_6c
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    return-void
.end method
