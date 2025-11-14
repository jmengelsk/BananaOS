.class public final Lcom/android/server/pm/PackageFreezer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo p1, "close"

    invoke-virtual {v1, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    if-eqz p2, :cond_2b

    iget-object p0, p2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_2b

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_2b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V
    .registers 18

    move-object/from16 v0, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p4, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_22

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_22
    iget-object v1, p4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_27
    iget-object v0, p4, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, p4, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_d5

    if-eqz p1, :cond_cc

    if-eqz p7, :cond_c4

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iget-object v3, p4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    if-nez v0, :cond_67

    :cond_64
    move v2, p1

    move v5, p5

    goto :goto_b8

    :cond_67
    new-instance v7, Lcom/android/server/pm/KillAppBlocker;

    invoke-direct {v7}, Lcom/android/server/pm/KillAppBlocker;-><init>()V

    :try_start_6c
    iget-boolean v3, v7, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-nez v3, :cond_82

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_a4

    if-eqz v3, :cond_82

    :try_start_76
    iget-object v4, v7, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    const-string/jumbo v5, "pm"

    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-interface {v3, v4, v8, v9, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iput-boolean v2, v7, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_82} :catch_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_a4

    :catch_82
    :cond_82
    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    :try_start_86
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityManagerInternal;->killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    iget-object p2, p4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7, v0, p1, p2, v1}, Lcom/android/server/pm/KillAppBlocker;->waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_a4

    iget-boolean p1, v7, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-eqz p1, :cond_cc

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    if-eqz p1, :cond_cc

    :try_start_9c
    iput-boolean v6, v7, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    iget-object p2, v7, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a3} :catch_cc

    goto :goto_cc

    :catchall_a4
    move-exception v0

    move-object p0, v0

    iget-boolean p1, v7, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-eqz p1, :cond_b7

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    if-eqz p1, :cond_b7

    :try_start_b0
    iput-boolean v6, v7, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    iget-object p2, v7, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b7} :catch_b7

    :catch_b7
    :cond_b7
    throw p0

    :goto_b8
    const-string/jumbo p1, "PackageManager"

    const-string v0, "Holds PM\'s lock, unable kill application synchronized"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_cc

    :cond_c4
    move v5, p5

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-static {v0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    :catch_cc
    :cond_cc
    :goto_cc
    iget-object p0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo p1, "close"

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_d5
    move-exception v0

    move-object p0, v0

    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d5

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method


# virtual methods
.method public final close()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v2

    if-lez v1, :cond_3d

    iget-object v2, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :catchall_3b
    move-exception p0

    goto :goto_48

    :cond_3d
    iget-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    monitor-exit v0

    goto :goto_4c

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_3b

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    if-eqz v0, :cond_5b

    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_58

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    :cond_5b
    return-void
.end method

.method public final finalize()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
