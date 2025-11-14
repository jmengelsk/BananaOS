.class public final Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    const-string/jumbo p1, "TaskSnapshotPersister"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v2, v1, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    :goto_12
    move v2, v4

    goto :goto_42

    :cond_14
    iget-object v1, v1, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    if-eqz v1, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady(Lcom/android/server/pm/UserManagerInternal;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    const/4 v2, 0x1

    move-object v3, v1

    goto :goto_42

    :catchall_2e
    move-exception p0

    goto :goto_8d

    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v5, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez v5, :cond_3c

    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_40

    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_12

    :cond_40
    :goto_40
    move-object v3, v1

    goto :goto_12

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_2e

    if-eqz v3, :cond_55

    if-eqz v2, :cond_4a

    invoke-virtual {v3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez v0, :cond_55

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5a
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez v2, :cond_6e

    monitor-exit v1

    goto :goto_5

    :catchall_6c
    move-exception p0

    goto :goto_8b

    :cond_6e
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-boolean v3, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-eqz v3, :cond_7b

    if-eqz v0, :cond_7b

    iget-object v2, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_7b
    .catchall {:try_start_5a .. :try_end_7b} :catchall_6c

    :cond_7b
    :try_start_7b
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iput-boolean v0, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    iget-object v0, v2, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iput-boolean v4, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_88} :catch_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_6c

    :catch_88
    :try_start_88
    monitor-exit v1

    goto/16 :goto_5

    :goto_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_6c

    throw p0

    :goto_8d
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_2e

    throw p0
.end method
