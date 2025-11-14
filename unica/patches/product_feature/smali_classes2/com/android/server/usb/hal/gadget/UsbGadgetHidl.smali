.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usb/hal/gadget/UsbGadgetHal;


# instance fields
.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

.field public final mGadgetProxyLock:Ljava/lang/Object;

.field public mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 5

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    :try_start_0
    new-instance p1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v4, ""

    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-static {p1, v0, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->connectToProxy$1()V

    return-void

    :catch_0
    move-exception p0

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final connectToProxy$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

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
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    const-wide/16 v3, 0x7d0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
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
    const-string/jumbo v1, "connectToProxy: usb gadget hal service not responding"

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string/jumbo v1, "connectToProxy: usb gadget hal service not found. Did the service fail to start?"

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

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

.method public final getCurrentUsbFunctions(J)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemoteException while calling getCurrentUsbFunctions"

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getGadgetHalVersion()I
    .locals 4

    const-string/jumbo v0, "USB Gadget HAL HIDL version: "

    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p0, 0xb

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    const/4 v3, 0x4

    invoke-static {v3, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "IUsbGadget not initialized yet"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUsbSpeed(J)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object p2

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "get UsbSpeed failed"

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final reset(J)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemoteException while calling reset"

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setCurrentUsbFunctions(IJJZ)V
    .locals 9

    :try_start_0
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p6

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;IJZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move p0, v5

    :try_start_2
    iput-object v0, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    iget-object p1, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v4, v3

    :try_start_3
    iget-object v3, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    iget-object v6, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    const/16 p2, 0x9c4

    int-to-long v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v3, v4

    :try_start_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide v3, v4

    goto :goto_0

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move p0, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, p1

    move-wide v3, p2

    move p0, p6

    goto :goto_2

    :goto_3
    const-string/jumbo p2, "RemoteException while calling setCurrentUsbFunctions mRequest = "

    const-string p3, ", mFunctions = "

    invoke-static {v2, p2, v3, v4, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", timeout = 2500, mChargingFunctions = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", operationId ="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
