.class public final Lcom/android/server/oemlock/PersistentDataBlockLock;
.super Lcom/android/server/oemlock/OemLock;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getLockName()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const-string/jumbo v0, "no_oem_unlock"

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isOemUnlockAllowedByDevice()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persistent_data_block"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_18

    const-string/jumbo p0, "OemLock"

    const-string/jumbo v0, "PersistentDataBlock is not supported on this device"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_18
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)V
    .registers 7

    const-string/jumbo v0, "OemLock"

    if-eqz p2, :cond_b

    const-string/jumbo p2, "Signature provided but is not being used"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p2, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    xor-int/lit8 v1, p1, 0x1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v3, "no_oem_unlock"

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    if-nez p1, :cond_3b

    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "persistent_data_block"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_31

    const-string/jumbo p0, "PersistentDataBlock is not supported on this device"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    :cond_3b
    return-void
.end method

.method public final setOemUnlockAllowedByDevice(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persistent_data_block"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_17

    const-string/jumbo p0, "OemLock"

    const-string/jumbo p1, "PersistentDataBlock is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    invoke-virtual {p0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    return-void
.end method
