.class public final Lcom/android/server/wm/SnapshotController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

.field public final mObsoleteSnapshots:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotPersistQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v2, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    new-instance p1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iget-object p0, v1, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache;->mSafeSnapshotReleaser:Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;

    iget-object p0, v2, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache;->mSafeSnapshotReleaser:Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;

    return-void
.end method


# virtual methods
.method public final closeObsoleteSnapshots()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getItemIfInQueue(I)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mDeferredCacheClear:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getItemIfInQueue(I)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mDeferredCacheClear:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onTransactionReady(ILjava/util/ArrayList;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/16 v4, 0xe

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    :goto_3
    const/4 v5, 0x0

    if-nez v2, :cond_9

    if-nez v4, :cond_9

    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_9

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v0

    move v3, v2

    :cond_4
    :goto_4
    if-ge v3, p1, :cond_6

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v1

    :cond_5
    if-eqz v6, :cond_4

    iget-boolean v7, v6, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    if-ne v7, v1, :cond_4

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_8
    :goto_5
    if-ge v0, p1, :cond_24

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    move-object v2, v5

    :goto_6
    if-ltz p1, :cond_16

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v7, v3, :cond_a

    goto/16 :goto_8

    :cond_a
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-boolean v8, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v8, :cond_e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_e

    iget v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-ne v8, v3, :cond_c

    iget v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_c

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    if-ne v8, v1, :cond_c

    goto/16 :goto_8

    :cond_c
    iget-object v8, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskSnapshotController;->removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V

    goto :goto_8

    :cond_d
    iget-object v8, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    :cond_e
    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_10

    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_15

    :cond_10
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_7

    :cond_11
    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    :goto_7
    if-eqz v6, :cond_15

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_15

    if-nez v2, :cond_12

    new-instance v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;

    invoke-direct {v2}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>()V

    :cond_12
    iget-object v7, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    if-nez v7, :cond_13

    new-instance v7, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    invoke-direct {v7}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;-><init>()V

    iget-object v8, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v7, v7, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    iget-object v7, v7, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_8
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_6

    :cond_16
    if-eqz v2, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object p1, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_9
    if-ltz p1, :cond_24

    iget-object p2, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    iget-object v4, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_f

    :cond_17
    iget-object v4, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_a
    if-ltz v4, :cond_19

    iget-object v6, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->mOptInOnBackInvoked:Z

    if-nez v6, :cond_18

    goto/16 :goto_f

    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_19
    iget-object v4, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_f

    :cond_1a
    iget-object p2, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_f

    :cond_1b
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v4, v4, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v6, v4, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v4, v4, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v4, v3, :cond_22

    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v4, v4, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v6, v4, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v4, v4, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0x14

    if-le v4, v6, :cond_1c

    goto/16 :goto_e

    :cond_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [I

    if-ne v4, v1, :cond_1f

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object v4, v5

    goto :goto_b

    :cond_1d
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v4

    new-instance v7, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p2, v5}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;)V

    iput-object v7, v4, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    :goto_b
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    iget-object v4, v4, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    goto :goto_c

    :cond_1e
    move-object v4, v5

    :goto_c
    if-eqz v4, :cond_23

    invoke-static {p2}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v7

    aput v7, v6, v0

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p2, v4, v6}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    goto :goto_f

    :cond_1f
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v7, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v8, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    invoke-virtual {v7, v4, v8}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object v7

    if-nez v7, :cond_20

    goto :goto_f

    :cond_20
    move v8, v0

    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_21

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v10, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {v10, v7, v9}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-static {v9}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_21
    iget p2, v4, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    goto :goto_f

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_22
    :goto_e
    const-string/jumbo p2, "WindowManager"

    const-string/jumbo v4, "Skipping recording activity snapshot, too many requests!"

    invoke-static {p2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_23
    :goto_f
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_9

    :cond_24
    return-void
.end method

.method public final onTransitionFinish(ILjava/util/ArrayList;)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v3, 0xd

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/16 v4, 0xe

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    :goto_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_5

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    return-void

    :cond_6
    const-wide/16 v3, 0x20

    const-string/jumbo v5, "SnapshotController_analysis"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v5}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_5
    if-ltz v7, :cond_9

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivitySnapshotController;->handleTransitionFinish(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_8

    :cond_a
    iget-object v6, v5, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_7
    if-ltz v6, :cond_b

    iget-object v7, v5, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_b
    iget-object v6, v5, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    iget-object v6, v5, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivitySnapshotController;->postProcess()V

    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_9
    if-ltz v5, :cond_e

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v6

    if-nez v6, :cond_d

    iget v6, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v6, v1, v1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZ)Landroid/window/TaskSnapshot;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v6

    if-eqz v6, :cond_c

    if-eq p1, v2, :cond_d

    if-eq p1, v0, :cond_d

    :cond_c
    iget v6, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget v9, v7, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TaskSnapshotController;->removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V

    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
