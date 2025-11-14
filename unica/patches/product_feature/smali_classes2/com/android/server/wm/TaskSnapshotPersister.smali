.class public final Lcom/android/server/wm/TaskSnapshotPersister;
.super Lcom/android/server/wm/BaseAppSnapshotPersister;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisableSnapshots:Z

.field public final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    iput-boolean p3, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    return-void
.end method


# virtual methods
.method public final persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .registers 13

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_27

    :try_start_14
    iget-object v4, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v8, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    new-instance v3, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    const/4 p0, 0x0

    invoke-virtual {v4, v3, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2a

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    goto :goto_2e

    :catchall_2a
    move-exception v0

    move-object p0, v0

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2a

    :try_start_2d
    throw p0

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_27

    throw p0
.end method

.method public final removeSnapshot(II)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_24

    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    new-instance v3, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    invoke-direct {v3, v2, p1, p2, p0}, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    const/4 p0, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_26

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p0

    goto :goto_29

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p0

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_24

    throw p0
.end method
