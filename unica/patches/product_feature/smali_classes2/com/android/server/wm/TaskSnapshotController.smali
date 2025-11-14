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
    .registers 11

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

    if-eqz v2, :cond_43

    const v2, 0x3f333333  # 0.7f

    goto :goto_50

    :cond_43
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105010d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    :goto_50
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_b1

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v6, v5, v2

    if-lez v6, :cond_b1

    cmpg-float v6, v0, v4

    if-lez v6, :cond_a9

    cmpg-float v5, v5, v0

    if-ltz v5, :cond_a9

    cmpg-float v5, v0, v2

    if-lez v5, :cond_a1

    cmpl-float v5, v2, v4

    if-lez v5, :cond_70

    div-float v4, v2, v0

    :goto_6d
    move v5, v1

    move v6, v4

    goto :goto_72

    :cond_70
    const/4 v1, 0x0

    goto :goto_6d

    :goto_72
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

    :cond_a1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be greater than low-res scale"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "Low-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .registers 4
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

    if-eqz v0, :cond_7

    goto :goto_1f

    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_b

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    new-instance p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getSnapshot(IIZ)Landroid/window/TaskSnapshot;
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p3, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    :cond_a
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final getSnapshotFromDisk(IIIZ)Landroid/window/TaskSnapshot;
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    iget-object p4, v0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    invoke-virtual {p4, p1, p2, p0}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_1c

    if-eqz p3, :cond_1c

    invoke-virtual {p0, p3}, Landroid/window/TaskSnapshot;->addReference(I)V

    :cond_1c
    return-object p0
.end method

.method public final getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object p0, p1, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public final getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final recordSnapshot(Lcom/android/server/wm/Task;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_24

    :cond_7
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    goto :goto_22

    :cond_16
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;)V

    iput-object v3, v1, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    move-object v0, v1

    :goto_22
    if-nez v0, :cond_25

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    if-ne p1, v2, :cond_38

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    return-void
.end method

.method public final recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V
    .registers 3

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    const/4 p2, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    return-void

    :catchall_9
    move-exception p1

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    throw p1
.end method

.method public final removeAndDeleteSnapshot(II)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v2, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    if-eqz v0, :cond_43

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_28
    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3c

    :try_start_2b
    iget-object v3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    new-instance v4, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;

    invoke-direct {v4, p0, p2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    iput-object v0, v4, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3e

    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception p0

    goto :goto_41

    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0

    :goto_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_3c

    throw p0

    :cond_43
    return-void
.end method

.method public final removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p2

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_d

    goto :goto_27

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
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

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-void
.end method

.method public final removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->remove(I)V

    :cond_10
    return-void
.end method

.method public final snapshotForSleeping(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_d

    goto :goto_3a

    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_3a

    :cond_16
    const/4 v2, 0x1

    if-nez p1, :cond_27

    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result p1

    if-eqz p1, :cond_27

    move p1, v2

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskSnapshotController;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final snapshotTasks(Landroid/util/ArraySet;)V
    .registers 4

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public final takeSnapshotByForce(Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final use16BitFormat()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return p0
.end method
