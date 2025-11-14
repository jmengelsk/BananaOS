.class public final Lcom/android/server/wm/SnapshotPersistQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPaused:Z

.field public final mPersister:Lcom/android/server/wm/SnapshotPersistQueue$1;

.field public mQueueIdling:Z

.field public mShutdown:Z

.field public mStarted:Z

.field public final mStoreQueueItems:Ljava/util/ArrayDeque;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteQueue:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SnapshotPersistQueue$1;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPersister:Lcom/android/server/wm/SnapshotPersistQueue$1;

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 6

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1a
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_27
    return-void
.end method


# virtual methods
.method public final addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_12

    :cond_d
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_12
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onQueuedLocked()V

    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez p1, :cond_40

    :goto_19
    iget-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_40

    iget-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Queue is too deep! Purged item with index="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    const-string/jumbo v0, "WindowManager"

    invoke-static {p2, p1, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_19

    :cond_40
    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez p1, :cond_49

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_49
    return-void
.end method

.method public final getItemIfInQueue(I)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    iget v2, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    if-ne v2, p1, :cond_9

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception p0

    goto :goto_20

    :cond_1d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1b

    throw p0
.end method

.method public final setPaused(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez p1, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public waitForQueueEmpty()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    if-eqz v1, :cond_13

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1a

    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_11

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_11

    throw p0
.end method
