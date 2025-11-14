.class public final Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;
.super Landroid/hardware/thermal/IThermalChangedCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "4c4fc474c40b64963eb8d78b713b1095fecd72f0"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public final notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .registers 7

    iget v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    check-cast p0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_3c

    :try_start_19
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    move-result-object p1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_3e

    :try_start_2a
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3c

    :try_start_2f
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->checkAndNotifyHeadroomListenersLocked(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_39

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    goto :goto_41

    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3c

    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_45
    return-void
.end method

.method public final notifyThrottling(Landroid/hardware/thermal/Temperature;)V
    .registers 6

    new-instance v0, Landroid/os/Temperature;

    iget v1, p1, Landroid/hardware/thermal/Temperature;->value:F

    iget v2, p1, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v3, p1, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget p1, p1, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_11
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    check-cast p0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$1;->onTemperatureChanged(Landroid/os/Temperature;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
