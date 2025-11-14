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
    .locals 5

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

    :try_start_0
    new-instance p1, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.usb@1.0::IUsb"

    const-string v4, ""

    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-static {p1, v0, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy$1()V

    return-void

    :catch_0
    move-exception p0

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final connectToProxy$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_1
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
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string/jumbo v1, "connectToProxy: usb hal service not responding"

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string/jumbo v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_0

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p3, 0x6

    invoke-static {p3, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string/jumbo p1, "Method only applicable to V1.2 or above implementation"

    sget p3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p3, "UsbPortManager"

    invoke-static {p3, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string p1, "Failed to set contaminant detection"

    sget p3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p3, "UsbPortManager"

    invoke-static {p3, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit p2

    return-void

    :goto_3
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 0

    const/4 p0, 0x2

    :try_start_0
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const-string p2, "Failed to call onOperationComplete"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .locals 8

    const-string v0, "Failed to call onOperationComplete. opID:"

    const-string v1, "Failed enableUsbData: opId:"

    const-string/jumbo v2, "enableUsbData success["

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->getUsbHalVersion()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/4 p0, 0x2

    :try_start_1
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
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

    goto/16 :goto_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    :try_start_2
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
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    const/16 p2, 0x10

    :goto_0
    sput p2, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    :cond_2
    xor-int/2addr p0, v5

    :try_start_4
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    return v3

    :catch_1
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

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :try_start_5
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {p5, v5}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_3
    move-exception p0

    :try_start_7
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

    :goto_1
    monitor-exit v4

    goto :goto_3

    :goto_2
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :catch_4
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

    :goto_3
    return v3
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 0

    const/4 p0, 0x2

    :try_start_0
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const-string p2, "Failed to call onOperationComplete"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getUsbHalVersion()I
    .locals 7

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_8

    invoke-static {v1}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb$Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 p0, 0xd

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 p0, 0xc

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    const/4 v1, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.hardware.usb@1.1::IUsb"

    invoke-interface {p0, v2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v4, v3, Landroid/hardware/usb/V1_1/IUsb;

    if-eqz v4, :cond_4

    move-object v1, v3

    check-cast v1, Landroid/hardware/usb/V1_1/IUsb;

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/hardware/usb/V1_1/IUsb$Proxy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p0, v3, Landroid/hardware/usb/V1_1/IUsb$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Landroid/hardware/usb/V1_1/IUsb$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_5
    if-ge v5, v4, :cond_6

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    move-object v1, v3

    :catch_0
    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    const/16 p0, 0xb

    goto :goto_1

    :cond_7
    const/16 p0, 0xa

    :goto_1
    :try_start_2
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

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_8
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final queryPortStatus(J)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_0

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    const/4 v0, 0x6

    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p2, "ServiceStart: Failed to query port status"

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "UsbPortManager"

    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 1

    const/4 p0, 0x2

    :try_start_0
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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
    .locals 2

    const-string p3, "Failed to set the USB data role: portId="

    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_0

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    iput p1, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0, p2, v0}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
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

    :goto_0
    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final switchMode(ILjava/lang/String;J)V
    .locals 2

    const-string p3, "Failed to set the USB port mode: portId="

    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_0

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    iput p1, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0, p2, v0}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
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

    :goto_0
    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final switchPowerRole(ILjava/lang/String;J)V
    .locals 2

    const-string p3, "Failed to set the USB power role: portId="

    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p0, :cond_0

    const-string/jumbo p0, "Proxy is null. Retry !"

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/hardware/usb/V1_0/PortRole;->type:I

    iput p1, v0, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0, p2, v0}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
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

    :goto_0
    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final systemReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    return-void
.end method
