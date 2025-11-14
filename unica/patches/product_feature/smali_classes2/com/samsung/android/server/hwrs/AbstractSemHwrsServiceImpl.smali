.class public abstract Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;
.super Lcom/samsung/android/hwrs/ISemHwrsManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/hwrs/ISemHwrsManager$Stub;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    const-string v1, "AbstractSemHwrsServiceImpl entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/samsung/android/server/hwrs/common/HwrsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x40

    const-wide/16 v5, 0x3c

    const/16 v3, 0x40

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v2, Lcom/samsung/android/server/hwrs/common/HwrsUtils;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/server/hwrs/common/HwrsUtils;->sHandler:Landroid/os/Handler;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;->addShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "addShare failed- "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[HWRS_SYS]SemHwrsService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final addUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/server/hwrs/samba/ServerUserManager;->addUser(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "addUser failed- "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[HWRS_SYS]SemHwrsService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final deleteUser(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/hwrs/samba/ServerUserManager;->delUser(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "deleteUser failed- "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[HWRS_SYS]SemHwrsService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getKsmbdServerStatus()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo p0, "ksmbd_start"

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object p0

    sget-object v1, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-virtual {p0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "running"

    return-object p0

    :cond_1
    const-string/jumbo p0, "ksmbd_stop"

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object p0

    sget-object v1, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-virtual {p0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "stopping"

    return-object p0

    :cond_2
    const-string/jumbo p0, "stopped"
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getKsmbdServerStatus failed- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "[HWRS_SYS]SemHwrsService"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final ksmbdServerCleanup()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo p0, "[HWRS_SYS]ServerManager"

    const-string/jumbo v0, "ksmbdServerCleanup"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "[HWRS_SYS]ServerUserManager"

    const-string/jumbo v0, "cleanup"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/misc/hwrs/ksmbd/ksmbdpwd.db"

    invoke-static {p0}, Lcom/samsung/android/server/hwrs/utils/FileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ksmbdServerCleanup failed- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final permissionCheck()Ljava/lang/Boolean;
    .locals 5

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    aget-object v1, v3, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.HW_RESOURCE_SHARE"

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-string/jumbo p0, "Unauthorized access attempt by package : "

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {p0, v1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final reloadKmbdServerConfiguration()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo p0, "[HWRS_SYS]ServerManager"

    const-string/jumbo v0, "Reload configuration for ksmbd server"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "ksmbd.r"

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reloadKmbdServerConfiguration failed- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final restartKsmbdServer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo p0, "restartSmbServer"

    const-string/jumbo v0, "[HWRS_SYS]ServerManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->stopSmbServer()V

    invoke-static {}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->startSmbServer()V

    const-string/jumbo p0, "Restart KSMBD Successful!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restartKsmbdServer failed- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract setCurrentUserHandle(Landroid/os/UserHandle;)V
.end method

.method public final startKsmbdServer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->startSmbServer()V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startKsmbdServer failed- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final stopKsmbdServer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->permissionCheck()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->stopSmbServer()V
    :try_end_0
    .catch Lcom/samsung/android/server/hwrs/utils/StorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopKsmbdServer failed- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
