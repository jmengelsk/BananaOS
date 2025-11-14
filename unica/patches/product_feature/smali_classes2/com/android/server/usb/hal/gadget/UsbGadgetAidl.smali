.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usb/hal/gadget/UsbGadgetHal;


# static fields
.field public static final USB_GADGET_AIDL_SERVICE:Ljava/lang/String;


# instance fields
.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public final mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

.field public final mGadgetProxyLock:Ljava/lang/Object;

.field public mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/usb/gadget/IUsbGadget;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    monitor-enter v0

    :try_start_10
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    if-eqz p1, :cond_18

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p0

    goto :goto_31

    :cond_18
    :try_start_18
    sget-object p1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadget;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_18 .. :try_end_24} :catch_25
    .catchall {:try_start_18 .. :try_end_24} :catchall_16

    goto :goto_2f

    :catch_25
    move-exception p0

    :try_start_26
    const-string/jumbo p1, "connectToProxy: usb gadget hal service not found. Did the service fail to start?"

    const-string/jumbo v1, "UsbDeviceManager"

    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_16

    throw p0
.end method


# virtual methods
.method public final getCurrentUsbFunctions(J)V
    .registers 7

    const-string/jumbo v0, "RemoteException while calling getCurrentUsbFunctions, opID:"

    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    new-instance v3, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    invoke-direct {v3, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V

    invoke-interface {v2, v3, p1, p2}, Landroid/hardware/usb/gadget/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_14
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    :try_start_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception p0

    goto :goto_2b

    :catch_14
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return-void

    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_12

    throw p0
.end method

.method public final getGadgetHalVersion()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    if-eqz p0, :cond_16

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_14

    const-string/jumbo p0, "UsbGadgetAidl"

    const-string/jumbo v0, "USB Gadget HAL AIDL version: GADGET_HAL_V2_0"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x14

    return p0

    :catchall_14
    move-exception p0

    goto :goto_1e

    :cond_16
    :try_start_16
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_14

    throw p0
.end method

.method public final getUsbSpeed(J)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/usb/gadget/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p0

    const-string/jumbo v0, "RemoteException while calling getUsbSpeed, opID:"

    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final reset(J)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/usb/gadget/IUsbGadget;->reset(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p0

    const-string/jumbo v0, "RemoteException while calling getUsbSpeed, opID:"

    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p2, "UsbDeviceManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setCurrentUsbFunctions(IJJZ)V
    .registers 16

    :try_start_0
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;IJZ)V

    iput-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    iget-object v8, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_1f

    :try_start_e
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    iget-object v3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    const/16 v1, 0x9c4

    int-to-long v4, v1

    move-wide v1, p2

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/usb/gadget/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/IUsbGadgetCallback;JJ)V

    monitor-exit v8

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "RemoteException while calling setCurrentUsbFunctions: mRequest="

    const-string v2, ", mFunctions="

    invoke-static {p1, v1, p2, p3, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargingFunctions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", timeout=2500, opID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
