.class public final Lcom/android/server/power/WirelessChargerMotionDetector$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WirelessChargerMotionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WirelessChargerMotionDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    return-void
.end method


# virtual methods
.method public final onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 13

    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_ad

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1e

    goto/16 :goto_ad

    :cond_1e
    const-string/jumbo p1, "WirelessChargerMotionDetector"

    const-string/jumbo v5, "SContextListener: WIRELESS_CHARGING_DETECTION_MOVE"

    invoke-static {p1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    iput-boolean v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsDeviceMoving:Z

    iget-boolean v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v4, :cond_ad

    iget-object p1, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p1

    if-nez p1, :cond_ad

    iget-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    iget-boolean v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v4, :cond_47

    iget-object v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

    invoke-virtual {v4, v5, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v0, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    :cond_47
    iget-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    iget-wide v3, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long p1, v1, v3

    if-gez p1, :cond_ad

    const-string/jumbo p1, "WirelessChargerMotionDetector"

    const-string/jumbo v1, "SContextListener: received move lately"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    iget-object p0, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_68
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const-string v2, " powered change"

    iput-object v2, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string/jumbo v6, "android.server.power:POWER"

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v5, 0x3

    const/16 v7, 0x3e8

    const/16 v9, 0x3e8

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit p1

    return-void

    :catchall_9c
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_68 .. :try_end_9f} :catchall_9c

    throw p0

    :cond_a0
    const-string/jumbo p1, "WirelessChargerMotionDetector"

    const-string/jumbo v1, "SContextListener: WIRELESS_CHARGING_DETECTION_NOMOVE"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsDeviceMoving:Z

    :cond_ad
    :goto_ad
    return-void
.end method
