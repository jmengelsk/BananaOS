.class public final synthetic Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/utils/WatchedArrayMap;

.field public final synthetic f$6:Lcom/android/server/utils/WatchedArrayMap;

.field public final synthetic f$7:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;Lcom/android/server/pm/PackageManagerTracedLock;ZLcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-boolean p3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput p5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$6:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$7:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-boolean v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$6:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$7:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    if-nez v2, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    :try_start_0
    iget-object v2, v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionStateTEMP()V

    :cond_1
    invoke-static {v4, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPackagePermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v4, v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getShareUsersPermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    move-result-object v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v6, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/android/permission/persistence/RuntimePermissionsState;

    invoke-direct {v7, v1, v6, v2, v3}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method
