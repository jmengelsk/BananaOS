.class public final Lcom/android/server/wm/TaskSnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

.field public final mTmpTasks:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    new-instance v3, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10500ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LOW_TASK_SNAPSHOT_SCALE_FOR_TABLET:Z

    if-eqz v2, :cond_0

    const v2, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105010d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    :goto_0
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v2

    if-lez v6, :cond_4

    cmpg-float v6, v0, v4

    if-lez v6, :cond_3

    cmpg-float v5, v5, v0

    if-ltz v5, :cond_3

    cmpg-float v5, v0, v2

    if-lez v5, :cond_2

    cmpl-float v5, v2, v4

    if-lez v5, :cond_1

    div-float v4, v2, v0

    :goto_1
    move v5, v1

    move v6, v4

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110295

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    new-instance v2, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const-string/jumbo v4, "snapshots"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;Ljava/lang/String;ZFZ)V

    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    new-instance p1, Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    invoke-direct {p1, p2, v2, v0}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    new-instance p1, Lcom/android/server/wm/TaskSnapshotCache;

    new-instance p2, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {p2, v2}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-direct {p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/AppSnapshotLoader;)V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be greater than low-res scale"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "Low-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    new-instance p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getSnapshot(IIZ)Landroid/window/TaskSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final getSnapshotFromDisk(IIIZ)Landroid/window/TaskSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p4, v0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    invoke-virtual {p4, p1, p2, p0}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Landroid/window/TaskSnapshot;->addReference(I)V

    :cond_1
    return-object p0
.end method

.method public final getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object p0, p1, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public final getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final recordSnapshot(Lcom/android/server/wm/Task;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;)V

    iput-object v3, v1, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    return-void
.end method

.method public final recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    return-void

    :catchall_0
    move-exception p1

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    throw p1
.end method

.method public final removeAndDeleteSnapshot(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v2, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    new-instance v4, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;

    invoke-direct {v4, p0, p2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    iput-object v0, v4, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public final snapshotForSleeping(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskSnapshotController;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final snapshotTasks(Landroid/util/ArraySet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final takeSnapshotByForce(Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final use16BitFormat()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return p0
.end method
