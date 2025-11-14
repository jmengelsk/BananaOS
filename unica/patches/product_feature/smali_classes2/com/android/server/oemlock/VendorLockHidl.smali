.class public final Lcom/android/server/oemlock/VendorLockHidl;
.super Lcom/android/server/oemlock/OemLock;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;


# direct methods
.method public static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->getService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_1
    const-string/jumbo v0, "OemLock"

    const-string/jumbo v1, "OemLock Hidl HAL not present on device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getLockName()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Integer;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->getName(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    if-eq v3, v1, :cond_0

    const-string/jumbo v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-string v1, "Failed to get OEM lock name."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    aget-object p0, v2, p0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Failed to get name from HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .locals 5

    const-string/jumbo v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Boolean;

    new-array v3, v1, [Ljava/lang/Integer;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->isOemUnlockAllowedByCarrier(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_0

    const-string/jumbo p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get carrier OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Failed to get carrier state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final isOemUnlockAllowedByDevice()Z
    .locals 5

    const-string/jumbo v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Boolean;

    new-array v3, v1, [Ljava/lang/Integer;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->isOemUnlockAllowedByDevice(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_0

    const-string/jumbo p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get device OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Failed to get devie state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)V
    .locals 5

    const-string/jumbo v0, "OemLock"

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p2, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_1
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    invoke-virtual {p0, p2, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->setOemUnlockAllowedByCarrier(Ljava/util/ArrayList;Z)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Signature required for carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string/jumbo p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set carrier OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "Updated carrier allows OEM lock state to: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string p1, "Failed to set carrier state with HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setOemUnlockAllowedByDevice(Z)V
    .locals 2

    const-string/jumbo v0, "OemLock"

    const-string/jumbo v1, "Updated device allows OEM lock state to: "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->setOemUnlockAllowedByDevice(Z)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string/jumbo p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set device OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p1, "Failed to set device state with HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
