.class public final Lcom/android/server/usb/hal/port/UsbPortHidl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# static fields
.field public static sUsbDataStatus:I


# instance fields
.field public mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

.field public final mLock:Ljava/lang/Object;

.field public mProxy:Landroid/hardware/usb/V1_0/IUsb;

.field public mSystemReady:Z


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .registers 7

    const-string/jumbo v0, "UsbPortManager"

    const-string v1, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    invoke-direct {v2}, Landroid/os/HwBinder;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    iput-object p1, v2, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iput-object p0, v2, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    iput-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    :try_start_20
    new-instance p1, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.usb@1.0::IUsb"

    const-string v4, ""

    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    if-nez p1, :cond_38

    const/4 p1, 0x6

    invoke-static {p1, v0, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_38} :catch_3c

    :cond_38
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy$1()V

    return-void

    :catch_3c
    move-exception p0

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final connectToProxy$1()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_4f

    :cond_b
    :try_start_b
    const-string/jumbo v1, "android.hardware.usb@1.0::IUsb"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/usb/V1_0/IUsb;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/base/V1_0/IBase;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_31
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_31} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_31} :catch_32
    .catchall {:try_start_b .. :try_end_31} :catchall_9

    goto :goto_4d

    :catch_32
    move-exception p0

    goto :goto_36

    :catch_34
    move-exception p0

    goto :goto_42

    :goto_36
    :try_start_36
    const-string/jumbo v1, "connectToProxy: usb hal service not responding"

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    :goto_42
    const-string/jumbo v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_9

    throw p0
.end method

.method public final enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_17

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p3, 0x6

    invoke-static {p3, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p0

    goto :goto_3b

    :cond_17
    :try_start_17
    invoke-static {p0}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_15

    goto :goto_39

    :catch_1f
    move-exception p0

    goto :goto_23

    :catch_21
    move-exception p0

    goto :goto_2f

    :goto_23
    :try_start_23
    const-string/jumbo p1, "Method only applicable to V1.2 or above implementation"

    sget p3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p3, "UsbPortManager"

    invoke-static {p3, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :goto_2f
    const-string p1, "Failed to set contaminant detection"

    sget p3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p3, "UsbPortManager"

    invoke-static {p3, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    monitor-exit p2

    return-void

    :goto_3b
    monitor-exit p2
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_15

    throw p0
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 6

    const/4 p0, 0x2

    :try_start_1
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const-string p2, "Failed to call onOperationComplete"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 14

    const-string v0, "Failed to call onOperationComplete. opID:"

    const-string v1, "Failed enableUsbData: opId:"

    const-string/jumbo v2, "enableUsbData success["

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->getUsbHalVersion()I

    move-result v4
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d7

    const/16 v5, 0xd

    if-eq v4, v5, :cond_36

    const/4 p0, 0x2

    :try_start_11
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    return v3

    :catch_15
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Failed to call onOperationComplete. opID:"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f6

    :cond_36
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    :try_start_3a
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {p0}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb$Proxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->enableUsbDataSignal(Z)Z

    move-result p0

    const-string/jumbo v6, "UsbPortHidl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] from USB HAL, while enable["

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_65} :catch_97
    .catchall {:try_start_3a .. :try_end_65} :catchall_95

    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_95

    if-eqz p0, :cond_70

    if-eqz p2, :cond_6c

    move p2, v3

    goto :goto_6e

    :cond_6c
    const/16 p2, 0x10

    :goto_6e
    sput p2, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    :cond_70
    xor-int/2addr p0, v5

    :try_start_71
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_74} :catch_75

    return v3

    :catch_75
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Failed to call onOperationComplete. opID:"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f6

    :catchall_95
    move-exception p0

    goto :goto_d5

    :catch_97
    move-exception p0

    :try_start_98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " portId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v1, "UsbPortManager"

    invoke-static {v1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_98 .. :try_end_b4} :catchall_95

    :try_start_b4
    invoke-interface {p5, v5}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_95

    goto :goto_d3

    :catch_b8
    move-exception p0

    :try_start_b9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    monitor-exit v4

    goto :goto_f6

    :goto_d5
    monitor-exit v4
    :try_end_d6
    .catchall {:try_start_b9 .. :try_end_d6} :catchall_95

    throw p0

    :catch_d7
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Failed to query USB HAL version. opID:"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f6
    return v3
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 5

    const/4 p0, 0x2

    :try_start_1
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const-string p2, "Failed to call onOperationComplete"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getUsbHalVersion()I
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_80

    invoke-static {v1}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb$Proxy;

    move-result-object v1

    if-eqz v1, :cond_10

    const/16 p0, 0xd

    goto :goto_61

    :cond_10
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/16 p0, 0xc

    goto :goto_61

    :cond_1b
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    const/4 v1, 0x0

    if-nez p0, :cond_21

    goto :goto_5a

    :cond_21
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    if-nez p0, :cond_28

    goto :goto_5a

    :cond_28
    const-string/jumbo v2, "android.hardware.usb@1.1::IUsb"

    invoke-interface {p0, v2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_39

    instance-of v4, v3, Landroid/hardware/usb/V1_1/IUsb;

    if-eqz v4, :cond_39

    move-object v1, v3

    check-cast v1, Landroid/hardware/usb/V1_1/IUsb;

    goto :goto_5a

    :cond_39
    new-instance v3, Landroid/hardware/usb/V1_1/IUsb$Proxy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p0, v3, Landroid/hardware/usb/V1_1/IUsb$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_7e

    :try_start_40
    invoke-virtual {v3}, Landroid/hardware/usb/V1_1/IUsb$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_49
    if-ge v5, v4, :cond_5a

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_57} :catch_5a
    .catchall {:try_start_40 .. :try_end_57} :catchall_7e

    if-eqz v6, :cond_49

    move-object v1, v3

    :catch_5a
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5f

    const/16 p0, 0xb

    goto :goto_61

    :cond_5f
    const/16 p0, 0xa

    :goto_61
    :try_start_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USB HAL HIDL version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    const/4 v3, 0x4

    invoke-static {v3, v2, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return p0

    :catchall_7e
    move-exception p0

    goto :goto_88

    :cond_80
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_7e

    throw p0
.end method

.method public final queryPortStatus(J)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_17

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    const/4 v0, 0x6

    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p0

    goto :goto_29

    :cond_17
    :try_start_17
    invoke-interface {p0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_15

    goto :goto_27

    :catch_1b
    move-exception p0

    :try_start_1c
    const-string/jumbo p2, "ServiceStart: Failed to query port status"

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "UsbPortManager"

    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    monitor-exit p1

    return-void

    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_15

    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 6

    const/4 p0, 0x2

    :try_start_1
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Failed to call onOperationComplete. opID:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " portId:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final switchDataRole(ILjava/lang/String;J)V
    .registers 7

    const-string p3, "Failed to set the USB data role: portId="

    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_19

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_17
    move-exception p0

    goto :goto_4c

    :cond_19
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    iput p1, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_17

    :try_start_23
    invoke-interface {p0, p2, v0}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_17

    goto :goto_4a

    :catch_27
    move-exception p0

    :try_start_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newDataRole="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    monitor-exit p4

    return-void

    :goto_4c
    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_17

    throw p0
.end method

.method public final switchMode(ILjava/lang/String;J)V
    .registers 7

    const-string p3, "Failed to set the USB port mode: portId="

    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_19

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_17
    move-exception p0

    goto :goto_4c

    :cond_19
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    iput p1, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_17

    :try_start_23
    invoke-interface {p0, p2, v0}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_17

    goto :goto_4a

    :catch_27
    move-exception p0

    :try_start_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    monitor-exit p4

    return-void

    :goto_4c
    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_17

    throw p0
.end method

.method public final switchPowerRole(ILjava/lang/String;J)V
    .registers 7

    const-string p3, "Failed to set the USB power role: portId="

    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_19

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_17
    move-exception p0

    goto :goto_4c

    :cond_19
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    iput p1, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_17

    :try_start_23
    invoke-interface {p0, p2, v0}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_17

    goto :goto_4a

    :catch_27
    move-exception p0

    :try_start_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newPowerRole="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    monitor-exit p4

    return-void

    :goto_4c
    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_17

    throw p0
.end method

.method public final systemReady()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    return-void
.end method
