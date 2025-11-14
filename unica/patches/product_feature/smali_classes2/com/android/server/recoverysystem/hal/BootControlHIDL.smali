.class public final Lcom/android/server/recoverysystem/hal/BootControlHIDL;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/boot/IBootControl;


# instance fields
.field public final v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl$Proxy;

.field public final v1_hal:Landroid/hardware/boot/V1_0/IBootControl;


# direct methods
.method public constructor <init>(Landroid/hardware/boot/V1_0/IBootControl;Landroid/hardware/boot/V1_1/IBootControl;Landroid/hardware/boot/V1_2/IBootControl$Proxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_hal:Landroid/hardware/boot/V1_0/IBootControl;

    iput-object p3, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl$Proxy;

    if-eqz p1, :cond_2

    const-string p0, "BootControlHIDL"

    if-eqz p3, :cond_0

    const-string/jumbo p1, "V1.2 version of BootControl HIDL HAL available, using V1.2"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p1, "V1.1 version of BootControl HIDL HAL available, using V1.1"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p1, "V1.0 version of BootControl HIDL HAL available, using V1.0"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Failed to find V1.0 BootControl HIDL"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActiveBootSlot()I
    .locals 4

    iget-object p0, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl$Proxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "android.hardware.boot@1.2::IBootControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object p0, p0, Landroid/hardware/boot/V1_2/IBootControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0

    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v0, "getActiveBootSlot() requires V1.2 BootControl HAL"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCurrentSlot()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_hal:Landroid/hardware/boot/V1_0/IBootControl;

    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    move-result p0

    return p0
.end method
