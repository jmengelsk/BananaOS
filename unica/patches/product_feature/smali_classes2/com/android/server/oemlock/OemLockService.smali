.class public Lcom/android/server/oemlock/OemLockService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mOemLock:Lcom/android/server/oemlock/OemLock;

.field public final mService:Lcom/android/server/oemlock/OemLockService$2;

.field public final mUserRestrictionsListener:Lcom/android/server/oemlock/OemLockService$1;


# direct methods
.method public static -$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_21

    if-eqz p0, :cond_18

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_18
    :try_start_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Must be an admin user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static -$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    .registers 5

    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    instance-of p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    if-nez p0, :cond_3b

    const-string/jumbo p0, "OemLock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Update OEM Unlock bit in pst partition to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    iget-object p0, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2c
    iget-object v1, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    iget-object p1, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    move-result-object v0

    const-string/jumbo v1, "OemLock"

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "Using vendor lock via the HAL(aidl)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/oemlock/VendorLockAidl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    goto :goto_40

    :cond_1b
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "Using vendor lock via the HAL(hidl)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/oemlock/VendorLockHidl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    goto :goto_40

    :cond_33
    const-string/jumbo v0, "Using persistent data block based lock"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    :goto_40
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/oemlock/OemLockService$1;

    invoke-direct {v1, p0}, Lcom/android/server/oemlock/OemLockService$1;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mUserRestrictionsListener:Lcom/android/server/oemlock/OemLockService$1;

    new-instance v2, Lcom/android/server/oemlock/OemLockService$2;

    invoke-direct {v2, p0}, Lcom/android/server/oemlock/OemLockService$2;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v2, p0, Lcom/android/server/oemlock/OemLockService;->mService:Lcom/android/server/oemlock/OemLockService$2;

    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void
.end method

.method public static isHalPresent()Z
    .registers 1

    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mService:Lcom/android/server/oemlock/OemLockService$2;

    const-string/jumbo v1, "oem_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
