.class public final Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;


# virtual methods
.method public final connectToHal()Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1}, Landroid/hardware/thermal/V1_0/IThermal;->getService(Z)Landroid/hardware/thermal/V1_0/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V1_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    const-string/jumbo v2, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v3, "Thermal HAL 1.0 service connected, no thermal call back will be called due to legacy API."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_1d} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_20
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1e

    goto :goto_2c

    :catchall_1e
    move-exception p0

    goto :goto_34

    :catch_20
    :try_start_20
    const-string/jumbo v2, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v3, "Thermal HAL 1.0 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    :goto_2c
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    monitor-exit v0

    return v1

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_1e

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "\t"

    const-string/jumbo v1, "ThermalHAL 1.0 connected: "

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz p0, :cond_15

    const-string/jumbo p0, "yes"

    goto :goto_18

    :catchall_13
    move-exception p0

    goto :goto_21

    :cond_15
    const-string/jumbo p0, "no"

    :goto_18
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_13

    throw p0
.end method

.method public final forecastSkinTemperature(I)F
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Not supported in Thermal HAL 1.0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCurrentCoolingDevices(IZ)Ljava/util/List;
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_10

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_28

    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;ZI)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    goto :goto_26

    :catch_1a
    move-exception p1

    :try_start_1b
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    :goto_26
    monitor-exit v0

    return-object v1

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_e

    throw p0
.end method

.method public final getCurrentTemperatures(IZ)Ljava/util/List;
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_10

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_28

    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;ZI)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    goto :goto_26

    :catch_1a
    move-exception p1

    :try_start_1b
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    :goto_26
    monitor-exit v0

    return-object v1

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_e

    throw p0
.end method

.method public final getTemperatureThresholds(IZ)Ljava/util/List;
    .registers 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
