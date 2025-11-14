.class Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/thermal/IThermal;

.field public final mThermalCallbackAidl:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$1;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public final declared-synchronized binderDied()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v1, "Thermal AIDL HAL died, reconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final connectToHal()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    return v1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/thermal/IThermal;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p0, :cond_29

    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "\t"

    const-string/jumbo v1, "ThermalHAL AIDL 3  connected: "

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

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
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    const/high16 v1, 0x7fc00000  # Float.NaN

    if-nez v0, :cond_9

    return v1

    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->forecastSkinTemperature(I)F

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p1

    const-string/jumbo v2, "ThermalManagerService$ThermalHalWrapper"

    const-string v3, "Couldn\'t forecastSkinTemperature, reconnecting..."

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1a
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    monitor-exit p1

    return v1

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final getCurrentCoolingDevices(IZ)Ljava/util/List;
    .registers 13

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_d

    goto/16 :goto_7f

    :cond_d
    if-eqz p2, :cond_18

    :try_start_f
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    goto :goto_1c

    :catch_14
    move-exception p1

    goto :goto_64

    :catch_16
    move-exception p0

    goto :goto_77

    :cond_18
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    :goto_1c
    if-nez v2, :cond_1f

    goto :goto_7f

    :cond_1f
    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_7f

    aget-object v5, v2, v4

    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-static {v6}, Landroid/os/CoolingDevice;->isValidType(I)Z

    move-result v6

    if-nez v6, :cond_4c

    const-string/jumbo v6, "ThermalManagerService$ThermalHalWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cooling device type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from AIDL HAL"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_4c
    if-eqz p2, :cond_53

    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    if-eq v6, p1, :cond_53

    goto :goto_61

    :cond_53
    new-instance v6, Landroid/os/CoolingDevice;

    iget-wide v7, v5, Landroid/hardware/thermal/CoolingDevice;->value:J

    iget v9, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    iget-object v5, v5, Landroid/hardware/thermal/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_61} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_61} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_61} :catch_14

    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :goto_64
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6f
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    monitor-exit p1

    goto :goto_7f

    :catchall_74
    move-exception p0

    monitor-exit p1
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_74

    throw p0

    :goto_77
    const-string/jumbo p1, "ThermalManagerService$ThermalHalWrapper"

    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7f
    :goto_7f
    return-object v1
.end method

.method public final getCurrentTemperatures(IZ)Ljava/util/List;
    .registers 14

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_d

    goto/16 :goto_83

    :cond_d
    if-eqz p2, :cond_18

    :try_start_f
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    goto :goto_1c

    :catch_14
    move-exception p1

    goto :goto_68

    :catch_16
    move-exception p0

    goto :goto_7b

    :cond_18
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    :goto_1c
    if-nez v2, :cond_1f

    goto :goto_83

    :cond_1f
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, v3, :cond_83

    aget-object v6, v2, v5

    iget v7, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-static {v7}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v7

    if-nez v7, :cond_4e

    const-string/jumbo v7, "ThermalManagerService$ThermalHalWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid temperature status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " received from AIDL HAL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    :cond_4e
    if-eqz p2, :cond_55

    iget v7, v6, Landroid/hardware/thermal/Temperature;->type:I

    if-eq v7, p1, :cond_55

    goto :goto_65

    :cond_55
    new-instance v7, Landroid/os/Temperature;

    iget v8, v6, Landroid/hardware/thermal/Temperature;->value:F

    iget v9, v6, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v10, v6, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v7, v8, v9, v10, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_65} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_65} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_65} :catch_14

    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :goto_68
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_73
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    monitor-exit p1

    goto :goto_83

    :catchall_78
    move-exception p0

    monitor-exit p1
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_78

    throw p0

    :goto_7b
    const-string/jumbo p1, "ThermalManagerService$ThermalHalWrapper"

    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_83
    :goto_83
    return-object v1
.end method

.method public final getHalInstance()Landroid/hardware/thermal/IThermal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getTemperatureThresholds(IZ)Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_c

    goto :goto_58

    :cond_c
    if-eqz p2, :cond_17

    :try_start_e
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    goto :goto_1b

    :catch_13
    move-exception p1

    goto :goto_3d

    :catch_15
    move-exception p0

    goto :goto_50

    :cond_17
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    :goto_1b
    if-nez v2, :cond_1e

    goto :goto_58

    :cond_1e
    if-eqz p2, :cond_38

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_38
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_3c} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_3c} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_3c} :catch_13

    return-object p0

    :goto_3d
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_48
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    monitor-exit p1

    goto :goto_58

    :catchall_4d
    move-exception p0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw p0

    :goto_50
    const-string/jumbo p1, "ThermalManagerService$ThermalHalWrapper"

    const-string p2, "Couldn\'t getTemperatureThresholds due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    return-object v1
.end method

.method public initProxyAndRegisterCallback(Landroid/os/IBinder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V
    .registers 6

    const-string/jumbo v0, "Unable to connect IThermal AIDL instance"

    const-string/jumbo v1, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v2, "Thermal HAL AIDL service connected with version "

    if-eqz p1, :cond_59

    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v3, 0x0

    :try_start_12
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    :goto_1d
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p1, :cond_59

    :try_start_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    invoke-interface {v2}, Landroid/hardware/thermal/IThermal;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_36} :catch_4f

    :try_start_36
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    invoke-interface {p1, v2}, Landroid/hardware/thermal/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3d} :catch_40
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_3d} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_59

    :catch_3e
    move-exception p1

    goto :goto_42

    :catch_40
    move-exception p0

    goto :goto_49

    :goto_42
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    goto :goto_59

    :goto_49
    const-string p1, "Couldn\'t registerThermalChangedCallback due to invalid status"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_4f
    move-exception p1

    const-string/jumbo v0, "Unable to read interface version from Thermal HAL"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    :cond_59
    :goto_59
    return-void
.end method
