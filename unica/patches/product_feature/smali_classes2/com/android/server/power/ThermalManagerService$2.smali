.class public final Lcom/android/server/power/ThermalManagerService$2;
.super Landroid/os/IThermalService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/IThermalService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentCoolingDevices()[Landroid/os/CoolingDevice;
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    new-array p0, v3, [Landroid/os/CoolingDevice;
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_3e

    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(IZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/CoolingDevice;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/os/CoolingDevice;
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_3f

    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(IZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/CoolingDevice;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCurrentTemperatures()[Landroid/os/Temperature;
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    new-array p0, v3, [Landroid/os/Temperature;
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_3e

    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Temperature;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Temperature;
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/os/Temperature;
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_3f

    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Temperature;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Temperature;
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCurrentThermalStatus()I
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_3c

    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v4, v4, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_1b

    move v4, v6

    goto :goto_1c

    :cond_1b
    move v4, v5

    :goto_1c
    iget-object v7, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget v7, v7, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    packed-switch v7, :pswitch_data_46

    const/4 v5, 0x0

    goto :goto_2e

    :pswitch_25  #0x6
    const/4 v5, 0x6

    goto :goto_2e

    :pswitch_27  #0x5
    const/4 v5, 0x5

    goto :goto_2e

    :pswitch_29  #0x4
    const/4 v5, 0x4

    goto :goto_2e

    :pswitch_2b  #0x3
    const/4 v5, 0x3

    goto :goto_2e

    :pswitch_2d  #0x1
    move v5, v6

    :goto_2e
    :pswitch_2e  #0x2
    const/16 v6, 0x304

    invoke-static {v6, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_3e

    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_3c
    move-exception p0

    goto :goto_43

    :catchall_3e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_3c

    throw p0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_29  #00000004
        :pswitch_27  #00000005
        :pswitch_25  #00000006
    .end packed-switch
.end method

.method public final getThermalHeadroom(I)F
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v1, 0x305

    const/high16 v2, 0x7fc00000  # Float.NaN

    if-nez v0, :cond_17

    invoke-static {}, Landroid/os/IThermalService$Stub;->getCallingUid()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v1, p0, v0, v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    return v2

    :cond_17
    if-ltz p1, :cond_27

    const/16 v0, 0x3c

    if-le p1, v0, :cond_1e

    goto :goto_27

    :cond_1e
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result p0

    return p0

    :cond_27
    :goto_27
    invoke-static {}, Landroid/os/IThermalService$Stub;->getCallingUid()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v1, p0, v0, v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    return v2
.end method

.method public final getThermalHeadroomThresholds()[F
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v1, 0x306

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_1b
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Thermal HAL connection is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_15

    if-nez v0, :cond_b

    goto :goto_15

    :cond_b
    const-string/jumbo p0, "ThermalManagerService"

    const-string/jumbo p1, "Only shell is allowed to call thermalservice shell commands"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    :goto_15
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final registerThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_26

    :try_start_16
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v1, v1, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_46

    const/4 v5, 0x0

    if-nez v1, :cond_28

    :try_start_21
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_26

    return v5

    :catchall_26
    move-exception p0

    goto :goto_4b

    :cond_28
    :try_start_28
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_30
    if-ge v5, v1, :cond_40

    iget-object v6, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Temperature;

    invoke-static {v6, p1, v2}, Lcom/android/server/power/ThermalManagerService;->postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_46

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_40
    :try_start_40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_46
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_26

    throw p0
.end method

.method public final registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2a

    :try_start_16
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v3
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_4e

    const/4 v4, 0x0

    if-nez v3, :cond_2c

    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2a

    return v4

    :catchall_2a
    move-exception p0

    goto :goto_53

    :cond_2c
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    :goto_38
    if-ge v4, v3, :cond_48

    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    invoke-static {v5, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_4e

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_48
    :try_start_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_4e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_2a

    throw p0
.end method

.method public final registerThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_24

    :try_start_15
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v4, v4, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_4d

    if-nez v4, :cond_26

    :try_start_1f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return v1

    :catchall_24
    move-exception p0

    goto :goto_52

    :cond_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_24

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object v1, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_31
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    move-result-object v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_4a

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v1, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3f
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;->postHeadroomListenerLocked(Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V

    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_47

    throw p0

    :catchall_4a
    move-exception p0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0

    :catchall_4d
    move-exception p0

    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_24

    throw p0
.end method

.method public final registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_19

    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3c

    if-nez v3, :cond_1b

    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    return p0

    :catchall_19
    move-exception p0

    goto :goto_41

    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_36

    const-string/jumbo p0, "ThermalManagerService"

    const-string/jumbo p1, "Thermal status callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3c

    :cond_36
    :try_start_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_3c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_19

    throw p0
.end method

.method public final unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_23

    :try_start_16
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_25

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    goto :goto_2a

    :catchall_25
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_23

    throw p0
.end method

.method public final unregisterThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_16

    :try_start_9
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    goto :goto_1d

    :catchall_18
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_16

    throw p0
.end method

.method public final unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_16

    :try_start_9
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$2;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    goto :goto_1d

    :catchall_18
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_16

    throw p0
.end method
