.class public final Lcom/android/server/power/PowerManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public mDeviceState:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 11

    const-string/jumbo v0, "onStateChanged: mDualScreenPolicy="

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    iget v1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    if-eq v1, p1, :cond_63

    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v3, v2, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    const/4 v4, 0x1

    if-eqz p1, :cond_29

    if-eq p1, v4, :cond_29

    const/4 v5, 0x2

    if-eq p1, v5, :cond_27

    const/4 v5, 0x3

    if-eq p1, v5, :cond_27

    const/4 p1, -0x1

    goto :goto_2a

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    move p1, v4

    :goto_2a
    iput p1, v2, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    if-eq p1, v3, :cond_4c

    const-string/jumbo p1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v4, p1, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    goto :goto_4c

    :catchall_49
    move-exception v0

    move-object p0, v0

    goto :goto_61

    :cond_4c
    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_49

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IIIIJ)V

    return-void

    :goto_61
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_49

    throw p0

    :cond_63
    return-void
.end method
