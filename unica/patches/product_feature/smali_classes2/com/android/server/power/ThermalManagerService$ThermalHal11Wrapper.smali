.class public final Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mThermalCallback11:Ljava/lang/Object;

.field public mThermalHal11:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$1;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch p2, :pswitch_data_26

    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    new-instance p2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;

    invoke-direct {p2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void

    :pswitch_15  #0x1
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    new-instance p2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {p2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_15  #00000001
    .end packed-switch
.end method


# virtual methods
.method public final connectToHal()Z
    .registers 8

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_8c

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_a
    invoke-static {v1}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Z)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v5, 0x15ec

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-interface {v3, v4, v2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    const-string/jumbo v3, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v4, "Thermal HAL 2.0 service connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_2e} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2e} :catch_31
    .catchall {:try_start_a .. :try_end_2e} :catchall_2f

    goto :goto_3d

    :catchall_2f
    move-exception p0

    goto :goto_47

    :catch_31
    :try_start_31
    const-string/jumbo v3, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v4, "Thermal HAL 2.0 service not connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    :goto_3d
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    monitor-exit v0

    return v1

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_2f

    throw p0

    :pswitch_49  #0x0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4d
    invoke-static {v1}, Landroid/hardware/thermal/V1_1/IThermal;->getService(Z)Landroid/hardware/thermal/V1_1/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V1_1/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/thermal/V1_1/IThermal;

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->registerThermalCallback(Landroid/hardware/thermal/V1_1/IThermalCallback;)V

    const-string/jumbo v2, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v3, "Thermal HAL 1.1 service connected, limited thermal functions due to legacy API."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/util/NoSuchElementException; {:try_start_4d .. :try_end_71} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_71} :catch_74
    .catchall {:try_start_4d .. :try_end_71} :catchall_72

    goto :goto_80

    :catchall_72
    move-exception p0

    goto :goto_8a

    :catch_74
    :try_start_74
    const-string/jumbo v2, "ThermalManagerService$ThermalHalWrapper"

    const-string/jumbo v3, "Thermal HAL 1.1 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    :goto_80
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz p0, :cond_87

    goto :goto_88

    :cond_87
    const/4 v1, 0x0

    :goto_88
    monitor-exit v0

    return v1

    :goto_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_72

    throw p0

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_49  #00000000
    .end packed-switch
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 5

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_50

    const-string v0, "\t"

    const-string/jumbo v1, "ThermalHAL 2.0 connected: "

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_1c

    const-string/jumbo p0, "yes"

    goto :goto_1f

    :catchall_1a
    move-exception p0

    goto :goto_28

    :cond_1c
    const-string/jumbo p0, "no"

    :goto_1f
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_1a

    throw p0

    :pswitch_2a  #0x0
    const-string v0, "\t"

    const-string/jumbo v1, "ThermalHAL 1.1 connected: "

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz p0, :cond_41

    const-string/jumbo p0, "yes"

    goto :goto_44

    :catchall_3f
    move-exception p0

    goto :goto_4d

    :cond_41
    const-string/jumbo p0, "no"

    :goto_44
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :goto_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_3f

    throw p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2a  #00000000
    .end packed-switch
.end method

.method public final forecastSkinTemperature(I)F
    .registers 2

    iget p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch p0, :pswitch_data_18

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Not supported in Thermal HAL 2.0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_e  #0x0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Not supported in Thermal HAL 1.1"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e  #00000000
    .end packed-switch
.end method

.method public final getCurrentCoolingDevices(IZ)Ljava/util/List;
    .registers 8

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_5c

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_17

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_2d

    :catchall_15
    move-exception p0

    goto :goto_2e

    :cond_17
    :try_start_17
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p2, p1, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20
    .catchall {:try_start_17 .. :try_end_1f} :catchall_15

    goto :goto_2c

    :catch_20
    move-exception p1

    :try_start_21
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    :goto_2c
    monitor-exit v0

    :goto_2d
    return-object v1

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_15

    throw p0

    :pswitch_30  #0x0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_42

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_40

    goto :goto_59

    :catchall_40
    move-exception p0

    goto :goto_5a

    :cond_42
    :try_start_42
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v1, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;ZI)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4c
    .catchall {:try_start_42 .. :try_end_4b} :catchall_40

    goto :goto_58

    :catch_4c
    move-exception p1

    :try_start_4d
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    :goto_58
    monitor-exit v0

    :goto_59
    return-object v1

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_40

    throw p0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_30  #00000000
    .end packed-switch
.end method

.method public final getCurrentTemperatures(IZ)Ljava/util/List;
    .registers 8

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_5c

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_17

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_2d

    :catchall_15
    move-exception p0

    goto :goto_2e

    :cond_17
    :try_start_17
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p2, p1, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20
    .catchall {:try_start_17 .. :try_end_1f} :catchall_15

    goto :goto_2c

    :catch_20
    move-exception p1

    :try_start_21
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    :goto_2c
    monitor-exit v0

    :goto_2d
    return-object v1

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_15

    throw p0

    :pswitch_30  #0x0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_42

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_40

    goto :goto_59

    :catchall_40
    move-exception p0

    goto :goto_5a

    :cond_42
    :try_start_42
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v1, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;ZI)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4c
    .catchall {:try_start_42 .. :try_end_4b} :catchall_40

    goto :goto_58

    :catch_4c
    move-exception p1

    :try_start_4d
    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    :goto_58
    monitor-exit v0

    :goto_59
    return-object v1

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_40

    throw p0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_30  #00000000
    .end packed-switch
.end method

.method public final getTemperatureThresholds(IZ)Ljava/util/List;
    .registers 7

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_34

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_17

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_2a

    :catchall_15
    move-exception p0

    goto :goto_2b

    :cond_17
    :try_start_17
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;Ljava/util/List;)V

    invoke-interface {v2, p2, p1, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20
    .catchall {:try_start_17 .. :try_end_1f} :catchall_15

    goto :goto_29

    :catch_20
    move-exception p0

    :try_start_21
    const-string/jumbo p1, "ThermalManagerService$ThermalHalWrapper"

    const-string p2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    monitor-exit v0

    :goto_2a
    return-object v1

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_15

    throw p0

    :pswitch_2d  #0x0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2d  #00000000
    .end packed-switch
.end method
