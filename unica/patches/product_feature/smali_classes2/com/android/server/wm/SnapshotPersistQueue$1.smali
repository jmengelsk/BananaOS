.class public final Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    const-string/jumbo p1, "TaskSnapshotPersister"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v2, v1, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :goto_1
    move v2, v4

    goto :goto_3

    :cond_0
    iget-object v1, v1, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady(Lcom/android/server/pm/UserManagerInternal;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    const/4 v2, 0x1

    move-object v3, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v5, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez v5, :cond_2

    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_1

    :cond_3
    :goto_2
    move-object v3, v1

    goto :goto_1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez v2, :cond_6

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v3, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iput-boolean v0, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    iget-object v0, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iput-boolean v4, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :try_start_3
    monitor-exit v1

    goto/16 :goto_0

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
