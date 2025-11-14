.class public final Lcom/android/server/oemlock/VendorLockAidl;
.super Lcom/android/server/oemlock/OemLock;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mOemLock:Landroid/hardware/oemlock/IOemLock;


# direct methods
.method public static getOemLockHalService()Landroid/hardware/oemlock/IOemLock;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget v2, Landroid/hardware/oemlock/IOemLock$Stub;->$r8$clinit:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/hardware/oemlock/IOemLock;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/hardware/oemlock/IOemLock;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v1
.end method


# virtual methods
.method public final getLockName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "OemLock"

    const-string v1, "Failed to get name from HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->isOemUnlockAllowedByCarrier()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "OemLock"

    const-string v1, "Failed to get carrier state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final isOemUnlockAllowedByDevice()Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->isOemUnlockAllowedByDevice()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "OemLock"

    const-string v1, "Failed to get devie state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)V
    .locals 3

    const-string/jumbo v0, "Updated carrier allows OEM lock state to: "

    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    const-string/jumbo v1, "OemLock"

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [B

    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-virtual {p0, p1, v2}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->setOemUnlockAllowedByCarrier(Z[B)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->setOemUnlockAllowedByCarrier(Z[B)I

    move-result p0

    :goto_0
    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    if-nez p2, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Signature required for carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string/jumbo p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set carrier OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p1, "Failed to set carrier state with HAL"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setOemUnlockAllowedByDevice(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->setOemUnlockAllowedByDevice(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "OemLock"

    const-string v0, "Failed to set device state with HAL"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
