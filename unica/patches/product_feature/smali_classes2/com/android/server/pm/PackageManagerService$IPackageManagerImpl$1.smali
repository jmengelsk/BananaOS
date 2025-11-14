.class public final Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$callingUid:I

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IILandroid/content/pm/IPackageDataObserver;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$callingUid:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const-string/jumbo v0, "result of clearing user data: "

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    const-string/jumbo v5, "clearApplicationUserData"

    new-instance v2, Lcom/android/server/pm/PackageFreezer;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v4, -0x1

    const/16 v7, 0xa

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_11e

    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_121

    :try_start_3a
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadata(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_11e

    if-eqz v3, :cond_67

    :try_start_55
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$callingUid:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V

    goto :goto_67

    :catchall_63
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11a

    :cond_67
    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_63

    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    if-eqz v3, :cond_d4

    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    if-eqz v1, :cond_88

    iget-object v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_88
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-string/jumbo v2, "android.permission.SUSPEND_APPS"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_d4

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6, v1, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {v2, v1, v5, v4}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_c3
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    monitor-exit v1

    goto :goto_d4

    :catchall_ce
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_ce

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_d4
    :goto_d4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v1, :cond_119

    :try_start_d8
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_e6

    const-string/jumbo v0, "succeeded"

    goto :goto_e9

    :cond_e6
    const-string/jumbo v0, "failed"

    :goto_e9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-interface {v0}, Landroid/content/pm/IPackageDataObserver;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_10f} :catch_110

    return-void

    :catch_110
    const-string/jumbo p0, "PackageManager"

    const-string/jumbo v0, "Observer no longer exists."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_119
    return-void

    :goto_11a
    :try_start_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_63

    :try_start_11b
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11e

    :catchall_11e
    move-exception v0

    move-object p0, v0

    goto :goto_12c

    :catchall_121
    move-exception v0

    move-object p0, v0

    :try_start_123
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12b

    :catchall_127
    move-exception v0

    :try_start_128
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12b
    throw p0
    :try_end_12c
    .catchall {:try_start_128 .. :try_end_12c} :catchall_11e

    :goto_12c
    :try_start_12c
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_130

    goto :goto_134

    :catchall_130
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_134
    throw p0
.end method
