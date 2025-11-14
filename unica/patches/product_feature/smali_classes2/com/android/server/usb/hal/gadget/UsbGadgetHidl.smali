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
    .registers 7

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    :try_start_14
    new-instance p1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v4, ""

    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    if-nez p1, :cond_2c

    const/4 p1, 0x6

    invoke-static {p1, v0, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2c} :catch_30

    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->connectToProxy$1()V

    return-void

    :catch_30
    move-exception p0

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final connectToProxy$1()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-eqz v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_39

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    const-wide/16 v3, 0x7d0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_1b} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_1c
    .catchall {:try_start_b .. :try_end_1b} :catchall_9

    goto :goto_37

    :catch_1c
    move-exception p0

    goto :goto_20

    :catch_1e
    move-exception p0

    goto :goto_2c

    :goto_20
    :try_start_20
    const-string/jumbo v1, "connectToProxy: usb gadget hal service not responding"

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :goto_2c
    const-string/jumbo v1, "connectToProxy: usb gadget hal service not found. Did the service fail to start?"

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_9

    throw p0
.end method

.method public final getCurrentUsbFunctions(J)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p0

    const-string/jumbo p1, "RemoteException while calling getCurrentUsbFunctions"

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getGadgetHalVersion()I
    .registers 5

    const-string/jumbo v0, "USB Gadget HAL HIDL version: "

    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-eqz v2, :cond_39

    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v2

    if-eqz v2, :cond_13

    const/16 p0, 0xc

    goto :goto_20

    :cond_13
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/16 p0, 0xb

    goto :goto_20

    :cond_1e
    const/16 p0, 0xa

    :goto_20
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

    :catchall_37
    move-exception p0

    goto :goto_41

    :cond_39
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "IUsbGadget not initialized yet"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_37

    throw p0
.end method

.method public final getUsbSpeed(J)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_20

    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object p2

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    :cond_1c
    :goto_1c
    monitor-exit p1

    return-void

    :goto_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    :try_start_1f
    throw p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string/jumbo p1, "get UsbSpeed failed"

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final reset(J)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_1b

    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p2

    if-eqz p2, :cond_17

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    :cond_17
    :goto_17
    monitor-exit p1

    return-void

    :goto_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    :try_start_1a
    throw p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p0

    const-string/jumbo p1, "RemoteException while calling reset"

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setCurrentUsbFunctions(IJJZ)V
    .registers 16

    :try_start_0
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_2b

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p6

    :try_start_6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;IJZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_28

    move p0, v5

    :try_start_a
    iput-object v0, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    iget-object p1, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_25

    move-wide v4, v3

    :try_start_10
    iget-object v3, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    iget-object v6, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    const/16 p2, 0x9c4

    int-to-long v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    move-wide v3, v4

    :try_start_1b
    monitor-exit p1

    return-void

    :catchall_1d
    move-exception v0

    :goto_1e
    move-object p2, v0

    goto :goto_23

    :catchall_20
    move-exception v0

    move-wide v3, v4

    goto :goto_1e

    :goto_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_1d

    :try_start_24
    throw p2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    :goto_26
    move-object p1, v0

    goto :goto_30

    :catch_28
    move-exception v0

    move p0, v5

    goto :goto_26

    :catch_2b
    move-exception v0

    move v2, p1

    move-wide v3, p2

    move p0, p6

    goto :goto_26

    :goto_30
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
