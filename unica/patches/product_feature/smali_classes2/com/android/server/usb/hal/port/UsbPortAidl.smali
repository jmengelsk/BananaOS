.class public final Lcom/android/server/usb/hal/port/UsbPortAidl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# static fields
.field public static final sCallbacks:Landroid/util/LongSparseArray;


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

.field public final mLock:Ljava/lang/Object;

.field public mProxy:Landroid/hardware/usb/IUsb;

.field public mSystemReady:Z

.field public mTransactionId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v1, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    iput-object p1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iput-object p0, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy()V

    return-void
.end method


# virtual methods
.method public final connectToProxy()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_5a

    :cond_b
    :try_start_b
    const-string/jumbo v1, "android.hardware.usb.IUsb/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/hardware/usb/IUsb$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    check-cast v1, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->setCallback(Landroid/hardware/usb/IUsbCallback;)V

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    check-cast v1, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/IUsb$Stub$Proxy;->queryPortStatus(J)V
    :try_end_3c
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_3c} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3c} :catch_3d
    .catchall {:try_start_b .. :try_end_3c} :catchall_9

    goto :goto_58

    :catch_3d
    move-exception p0

    goto :goto_41

    :catch_3f
    move-exception p0

    goto :goto_4d

    :goto_41
    :try_start_41
    const-string/jumbo v1, "connectToProxy: usb hal service not responding"

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :goto_4d
    const-string/jumbo v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    monitor-exit v0

    return-void

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_9

    throw p0
.end method

.method public final enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    .registers 8

    const-string v0, "Failed to set contaminant detection. opID:"

    const-string/jumbo v1, "Proxy is null. Retry ! opID: "

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez p0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p0

    goto :goto_42

    :cond_25
    :try_start_25
    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_23

    goto :goto_40

    :catch_2b
    move-exception p0

    :try_start_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    monitor-exit v2

    return-void

    :goto_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_23

    throw p0
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 14

    const-string/jumbo v0, "enableLimitPowerTransfer: Proxy is null. Retry !opID:"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v3, 0x1

    if-nez v2, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    const/4 v0, 0x6

    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_26} :catch_2b
    .catchall {:try_start_9 .. :try_end_26} :catchall_28

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p0

    goto/16 :goto_c0

    :catch_2b
    move-exception p0

    goto :goto_9c

    :cond_2d
    move-wide v4, p3

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    int-to-long v4, v0

    goto :goto_2e

    :cond_40
    cmp-long v2, v4, p3

    if-eqz v2, :cond_67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableUsbData: operationID exists ! opID:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " key:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v6, "UsbPortManager"

    const/4 v7, 0x4

    invoke-static {v7, v6, v2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_67} :catch_2b
    .catchall {:try_start_2e .. :try_end_67} :catchall_28

    :cond_67
    :try_start_67
    invoke-virtual {v0, v4, v5, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p1, v4, v5, p2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->limitPowerTransfer(Ljava/lang/String;JZ)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_71} :catch_72
    .catchall {:try_start_67 .. :try_end_71} :catchall_28

    goto :goto_be

    :catch_72
    move-exception p0

    :try_start_73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "enableLimitPowerTransfer: Failed while invoking AIDL HAL portID="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " opID:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p5, :cond_96

    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    :cond_96
    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_9b} :catch_2b
    .catchall {:try_start_73 .. :try_end_9b} :catchall_28

    goto :goto_be

    :goto_9c
    :try_start_9c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "enableLimitPowerTransfer: Failed to call onOperationComplete portID="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opID:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_be
    monitor-exit v1

    return-void

    :goto_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_9c .. :try_end_c1} :catchall_28

    throw p0
.end method

.method public final enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 15

    const-string/jumbo v0, "enableUsbData: Proxy is null. Retry !opID:"

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v4, 0x1

    if-nez v3, :cond_2c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    const/4 v0, 0x6

    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_24} :catch_29
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_26

    return v2

    :catchall_26
    move-exception p0

    goto/16 :goto_c8

    :catch_29
    move-exception p0

    move-wide v5, p3

    goto :goto_9e

    :cond_2c
    move-wide v5, p3

    :goto_2d
    :try_start_2d
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    int-to-long v5, v0

    goto :goto_2d

    :catch_3f
    move-exception p0

    goto :goto_9e

    :cond_41
    cmp-long v3, v5, p3

    if-eqz v3, :cond_68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableUsbData: operationID exists ! opID:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " key:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v7, "UsbPortManager"

    const/4 v8, 0x4

    invoke-static {v8, v7, v3}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_68} :catch_3f
    .catchall {:try_start_2d .. :try_end_68} :catchall_26

    :cond_68
    :try_start_68
    invoke-virtual {v0, v5, v6, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p1, v5, v6, p2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->enableUsbData(Ljava/lang/String;JZ)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_74
    .catchall {:try_start_68 .. :try_end_72} :catchall_26

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_26

    return v4

    :catch_74
    move-exception p0

    :try_start_75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "enableUsbData: Failed to invoke enableUsbData: portID="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "opID:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {p5, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_9c} :catch_3f
    .catchall {:try_start_75 .. :try_end_9c} :catchall_26

    :try_start_9c
    monitor-exit v1

    goto :goto_c7

    :goto_9e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "enableUsbData: Failed to call onOperationComplete portID="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v1

    :goto_c7
    return v2

    :goto_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_9c .. :try_end_c9} :catchall_26

    throw p0
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 13

    const-string/jumbo v0, "enableUsbDataWhileDocked: Proxy is null. Retry !opID:"

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "UsbPortManager"

    const/4 v2, 0x6

    invoke-static {v2, v0, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_28
    .catchall {:try_start_6 .. :try_end_23} :catchall_25

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception p0

    goto/16 :goto_bb

    :catch_28
    move-exception p0

    goto :goto_97

    :cond_2a
    move-wide v4, p2

    :goto_2b
    :try_start_2b
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    int-to-long v4, v0

    goto :goto_2b

    :cond_3d
    cmp-long v2, v4, p2

    if-eqz v2, :cond_64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableUsbDataWhileDocked: operationID exists ! opID:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " key:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v6, "UsbPortManager"

    const/4 v7, 0x4

    invoke-static {v7, v6, v2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_64} :catch_28
    .catchall {:try_start_2b .. :try_end_64} :catchall_25

    :cond_64
    :try_start_64
    invoke-virtual {v0, v4, v5, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, v4, v5, p1}, Landroid/hardware/usb/IUsb$Stub$Proxy;->enableUsbDataWhileDocked(JLjava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6e} :catch_6f
    .catchall {:try_start_64 .. :try_end_6e} :catchall_25

    goto :goto_b9

    :catch_6f
    move-exception p0

    :try_start_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableUsbDataWhileDocked: error while invoking halportID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_96} :catch_28
    .catchall {:try_start_70 .. :try_end_96} :catchall_25

    goto :goto_b9

    :goto_97
    :try_start_97
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "enableUsbDataWhileDocked: Failed to call onOperationComplete portID="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opID:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b9
    monitor-exit v1

    return-void

    :goto_bb
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_97 .. :try_end_bc} :catchall_25

    throw p0
.end method

.method public final getUsbHalVersion()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz p0, :cond_19

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    const-string/jumbo p0, "USB HAL AIDL version: USB_HAL_V2_0"

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "UsbPortManager"

    const/4 v1, 0x4

    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x14

    return p0

    :catchall_17
    move-exception p0

    goto :goto_21

    :cond_19
    :try_start_19
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_17

    throw p0
.end method

.method public final queryPortStatus(J)V
    .registers 6

    const-string/jumbo v0, "ServiceStart: Failed to query port status. opID:"

    const-string/jumbo v1, "Proxy is null. Retry ! opID:"

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez p0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p0

    goto :goto_43

    :cond_26
    :try_start_26
    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->queryPortStatus(J)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_24

    goto :goto_41

    :catch_2c
    move-exception p0

    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    monitor-exit v2

    return-void

    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_24

    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 13

    const-string/jumbo v0, "resetUsbPort: Proxy is null. Retry !opID:"

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v2, "UsbPortManager"

    const/4 v4, 0x6

    invoke-static {v4, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_27
    .catchall {:try_start_6 .. :try_end_23} :catchall_24

    goto :goto_2a

    :catchall_24
    move-exception p0

    goto/16 :goto_c6

    :catch_27
    move-exception p0

    move-wide v4, p2

    goto :goto_9c

    :cond_2a
    :goto_2a
    move-wide v4, p2

    :goto_2b
    :try_start_2b
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    int-to-long v4, v0

    goto :goto_2b

    :catch_3d
    move-exception p0

    goto :goto_9c

    :cond_3f
    cmp-long v2, v4, p2

    if-eqz v2, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUsbPort: operationID exists ! opID:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " key:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v6, "UsbPortManager"

    const/4 v7, 0x4

    invoke-static {v7, v6, v2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_66} :catch_3d
    .catchall {:try_start_2b .. :try_end_66} :catchall_24

    :cond_66
    :try_start_66
    invoke-virtual {v0, v4, v5, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz p0, :cond_c4

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, v4, v5, p1}, Landroid/hardware/usb/IUsb$Stub$Proxy;->resetUsbPort(JLjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_72} :catch_73
    .catchall {:try_start_66 .. :try_end_72} :catchall_24

    goto :goto_c4

    :catch_73
    move-exception p0

    :try_start_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetUsbPort: Failed to resetUsbPort: portID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "opId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_9b} :catch_3d
    .catchall {:try_start_74 .. :try_end_9b} :catchall_24

    goto :goto_c4

    :goto_9c
    :try_start_9c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "resetUsbPort: Failed to call onOperationComplete portID="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_c4
    :goto_c4
    monitor-exit v1

    return-void

    :goto_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_9c .. :try_end_c7} :catchall_24

    throw p0
.end method

.method public final switchDataRole(ILjava/lang/String;J)V
    .registers 10

    const-string v0, "Failed to set the USB data role: portId="

    const-string/jumbo v1, "Proxy is null. Retry ! opID:"

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v3, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_23
    move-exception p0

    goto :goto_68

    :cond_25
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v1, Landroid/hardware/usb/PortRole;->_tag:I

    iput-object v3, v1, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_23

    :try_start_34
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p2, v1, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_23

    goto :goto_66

    :catch_3c
    move-exception p0

    :try_start_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newDataRole="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    monitor-exit v2

    return-void

    :goto_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_3d .. :try_end_69} :catchall_23

    throw p0
.end method

.method public final switchMode(ILjava/lang/String;J)V
    .registers 10

    const-string v0, "Failed to set the USB port mode: portId="

    const-string/jumbo v1, "Proxy is null. Retry ! opID:"

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v3, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_23
    move-exception p0

    goto :goto_68

    :cond_25
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x2

    iput v4, v1, Landroid/hardware/usb/PortRole;->_tag:I

    iput-object v3, v1, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_23

    :try_start_34
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p2, v1, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_23

    goto :goto_66

    :catch_3c
    move-exception p0

    :try_start_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newMode="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    monitor-exit v2

    return-void

    :goto_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_3d .. :try_end_69} :catchall_23

    throw p0
.end method

.method public final switchPowerRole(ILjava/lang/String;J)V
    .registers 10

    const-string v0, "Failed to set the USB power role: portId="

    const-string/jumbo v1, "Proxy is null. Retry ! opID:"

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v3, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p1, "UsbPortManager"

    const/4 p2, 0x6

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_23
    move-exception p0

    goto :goto_68

    :cond_25
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v1, Landroid/hardware/usb/PortRole;->_tag:I

    iput-object v3, v1, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_23

    :try_start_34
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    check-cast p0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-virtual {p0, p2, v1, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_23

    goto :goto_66

    :catch_3c
    move-exception p0

    :try_start_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newPowerRole="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    monitor-exit v2

    return-void

    :goto_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_3d .. :try_end_69} :catchall_23

    throw p0
.end method

.method public final systemReady()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    return-void
.end method
