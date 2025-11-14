.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApexObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

.field public final mAppLaunchObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$4;

.field public mBatteryLow:Z

.field public mBgDexoptFinishTime:J

.field public final mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

.field public final mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$3;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mInitialThermalStatus:I

.field public mInterruptionCount:I

.field public mIsUpdateReady:Z

.field public final mLastEnergyNwh:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mOptimizationWindows:Ljava/util/Stack;

.field public mScreenOff:Z

.field public final mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

.field public final mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

.field public mThermalService:Landroid/os/IThermalService;

.field public mThermalStatus:I

.field public mWasLowBattery:Z

.field public mWasPlugged:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mLastEnergyNwh:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInterruptionCount:I

    iput-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mIsUpdateReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasPlugged:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasLowBattery:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBgDexoptFinishTime:J

    iput v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    iput v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mOptimizationWindows:Ljava/util/Stack;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mApexObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$3;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$4;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mAppLaunchObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$4;

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    return-void
.end method


# virtual methods
.method public final declared-synchronized isDexoptingAllowed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :catchall_f
    move-exception v0

    goto :goto_17

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->updateOptimizationWindows(Z)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_f

    monitor-exit p0

    return v0

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_f

    throw v0
.end method

.method public final declared-synchronized onUserActivityLocked()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInterruptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInterruptionCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->pauseOptimizing()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initial thermal status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nThermal status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nScreen off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nLow battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized updateOptimizationWindows(Z)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mOptimizationWindows:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_36

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mOptimizationWindows:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pu/OptimizationWindow;

    iget-boolean v1, v0, Lcom/android/server/pm/pu/OptimizationWindow;->mIsActive:Z

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_38

    if-nez v1, :cond_38

    iget-object v4, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mOptimizationWindows:Ljava/util/Stack;

    new-instance v5, Lcom/android/server/pm/pu/OptimizationWindow;

    iget-object v6, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mLastEnergyNwh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/pm/pu/OptimizationWindow;->mIsActive:Z

    iput-wide v2, v5, Lcom/android/server/pm/pu/OptimizationWindow;->mConsumedNwh:J

    iput-wide v6, v5, Lcom/android/server/pm/pu/OptimizationWindow;->mInitialNwh:J

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_50

    :cond_38
    :goto_38
    if-nez p1, :cond_4e

    if-eqz v1, :cond_4e

    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mLastEnergyNwh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/pm/pu/OptimizationWindow;->mInitialNwh:J

    sub-long/2addr v6, v4

    cmp-long p1, v6, v2

    if-lez p1, :cond_4b

    iput-wide v6, v0, Lcom/android/server/pm/pu/OptimizationWindow;->mConsumedNwh:J

    :cond_4b
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/server/pm/pu/OptimizationWindow;->mIsActive:Z
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_36

    :cond_4e
    monitor-exit p0

    return-void

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_36

    throw p1
.end method
