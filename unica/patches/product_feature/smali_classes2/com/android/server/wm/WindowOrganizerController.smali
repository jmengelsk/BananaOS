.class public final Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public final mEnterSplitWithSingleStage:Ljava/util/HashSet;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mLaunchTaskFragments:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public final mTmpBounds0:Landroid/graphics/Rect;

.field public final mTmpBounds1:Landroid/graphics/Rect;

.field public final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowOrganizerController;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    new-instance v0, Lcom/android/server/wm/TransitionController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-void
.end method

.method public static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/high16 p2, 0x20000000

    and-int/2addr p2, v1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1, v2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p0

    long-to-int p0, p0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    const p1, 0xa00003

    and-int/2addr p0, p1

    if-nez p0, :cond_3

    const p0, -0x20000001

    and-int/2addr v1, p0

    :cond_3
    const p0, 0x20003c00

    and-int/2addr p0, v1

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static shouldApplyLifecycleEffectOnPipChange()Z
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.apply_lifecycle_on_pip_change"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    const-string/jumbo v3, "null"

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitMode()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitFlags()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitStartBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitReason()Ljava/lang/String;

    move-result-object v10

    const-string v8, ", reason="

    const-string v12, "ChangeTransitionController"

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleWindowContainerTransaction: failed, we support Task only now!, wc="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "pip_to_split"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-boolean v4, v2, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v2

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;

    const/4 v13, 0x1

    invoke-direct {v9, v13}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-object v6, v9

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "handleWindowContainerTransaction: requested #"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startBounds="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    move-object v6, v9

    new-instance v9, Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_1
    invoke-direct {v9, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object v2

    iget-object v7, v5, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v7

    if-eqz v7, :cond_7

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_7

    iget-object v2, v5, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addToChangingPipTaskIfPossible: tid #"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v5, v12}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_4

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleWindowContainerTransaction: failed, tid #"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_6

    iget v5, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v3

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashMode()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashScale()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    const-string/jumbo v8, "MultiTaskingController"

    if-nez v7, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateFocusForFreeformStash: failed, we support Task only now!, wc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    new-instance v9, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashScale()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeFreeformStashScale()F

    move-result v3

    iget v9, v7, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    cmpl-float v9, v9, v3

    if-eqz v9, :cond_c

    iput v3, v7, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashMode()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeFreeformStashMode()I

    move-result v3

    iget v9, v7, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    if-eq v9, v3, :cond_d

    iput v3, v7, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    :cond_d
    if-ne v3, v6, :cond_e

    const-string/jumbo v2, "setStashScaled"

    invoke-virtual {v7, v2, v5, v4}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    goto :goto_6

    :cond_e
    iget v3, v7, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_f

    iput v9, v7, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    :cond_f
    iget v3, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v3, "stash-update"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    :cond_10
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->isForceTaskInfoChangeRequested()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateFreeformStashState: force taskInfoChanged , t #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    goto :goto_8

    :cond_11
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateFocusForFreeformStash: failed, tid #"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_12

    iget v3, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->isOrganizedTaskViewTask()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getTaskViewTaskOrganizerTaskId()I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/Task;->mTaskViewTaskOrganizerTaskId:I

    :cond_14
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_DESKTOP_DIMMING:Z

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeCaptionShowingState()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeCaptionShowingState()I

    move-result v3

    iget v7, v2, Lcom/android/server/wm/Task;->mCaptionShowingState:I

    if-eq v7, v3, :cond_15

    iput v3, v2, Lcom/android/server/wm/Task;->mCaptionShowingState:I

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v2

    const v3, 0x20003c00

    and-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v3

    const v7, 0xa00003

    and-int/2addr v3, v7

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    const/4 v9, 0x5

    if-eqz v8, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_16

    if-ne v7, v9, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    const v10, 0x7fffffff

    invoke-virtual {v1, v8, v10}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    :cond_16
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    const-string/jumbo v10, "WindowOrganizerController"

    if-eqz v8, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->isFullscreenTransparentInDesktop()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v8

    if-eqz v8, :cond_17

    if-ne v7, v4, :cond_17

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isActivityStackTransparent:Z

    if-nez v8, :cond_17

    const-string/jumbo v0, "transparent is changed by trampoline, windowingMode will not applied in dw"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_17
    const/4 v8, 0x4

    move-object/from16 v11, p2

    invoke-virtual {v11, v8}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitionFlags(I)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v12

    if-nez v12, :cond_19

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "applyChanges: skip applying config changes, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_19
    const/4 v12, -0x1

    if-eqz v2, :cond_21

    if-le v7, v12, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    if-eq v7, v13, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v13, v14, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    move/from16 v16, v4

    goto/16 :goto_a

    :cond_1a
    new-instance v13, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1c

    :cond_1b
    iget-object v15, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15, v14}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_1c
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v13, v14, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v14, 0x6

    if-ne v2, v14, :cond_1f

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v14, v13, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v14, :cond_1e

    iget v14, v13, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v14, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    move/from16 v16, v4

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ne v4, v8, :cond_1d

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v4, v8, :cond_1d

    iget v4, v14, Landroid/graphics/Rect;->left:I

    iget v8, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v8

    iput v4, v2, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    iget v8, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v8

    iput v4, v2, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    goto :goto_9

    :cond_1d
    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    goto :goto_9

    :cond_1e
    move/from16 v16, v4

    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    goto :goto_9

    :cond_1f
    move/from16 v16, v4

    :goto_9
    invoke-virtual {v1, v13}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_a
    if-eqz v3, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x3

    goto :goto_b

    :cond_20
    move/from16 v2, v16

    goto :goto_b

    :cond_21
    move/from16 v16, v4

    move v2, v5

    :goto_b
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_22

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v3

    if-eqz v3, :cond_22

    or-int/lit8 v2, v2, 0x2

    :cond_22
    if-le v7, v12, :cond_2b

    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {v7}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_24

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_c

    :cond_23
    const-string v0, "Dropping unsupported request to set multi-window windowing mode during locked task mode."

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_24
    :goto_c
    if-ne v7, v6, :cond_25

    goto/16 :goto_10

    :cond_25
    if-ne v7, v9, :cond_26

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_26

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    move/from16 v4, v16

    goto :goto_e

    :cond_26
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$Change;->skipLayoutTask()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_27
    move v4, v5

    :goto_e
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_29

    if-ne v7, v9, :cond_28

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v5

    if-nez v5, :cond_28

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "applyChanges: freeform but no bounds. calculate here the bounds. container="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " parent="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    :cond_28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    goto :goto_f

    :cond_29
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    :goto_f
    if-eqz v4, :cond_2a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v3, v0, :cond_2b

    or-int/lit8 v0, v2, 0x2

    return v0

    :cond_2b
    :goto_10
    return v2
.end method

.method public final applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Z)I
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v11

    const-string/jumbo v13, "WindowOrganizerController"

    const/16 v0, 0x11

    const-string v6, "Attempt to operate on unknown or detached container: "

    const/16 v18, 0x1

    const/4 v7, 0x0

    if-eq v11, v0, :cond_77

    const/16 v0, 0x16

    if-eq v11, v0, :cond_75

    const-string v0, "Attempt to remove invalid task: "

    const/16 v3, 0x64

    if-eq v11, v3, :cond_8

    const/16 v4, 0x18

    if-eq v11, v4, :cond_69

    const/16 v4, 0x19

    if-eq v11, v4, :cond_64

    const v16, 0x7fffffff

    const/high16 v17, -0x80000000

    const-string v4, "Cannot set non-task as launch root: "

    const-string v5, " while in lock task mode"

    const-string/jumbo v8, "Skip applying hierarchy operation "

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_0
    :goto_0
    move-object/from16 v29, v6

    move v14, v7

    move/from16 v12, v18

    const/4 v7, 0x0

    const/16 v28, 0x2

    goto/16 :goto_40

    :pswitch_0
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v0, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    const/4 v0, 0x2

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    or-int v0, p2, v0

    move v3, v0

    move-object/from16 v29, v6

    move v14, v7

    move/from16 v12, v18

    const/4 v7, 0x0

    const/16 v28, 0x2

    :goto_4
    move-object/from16 v0, p6

    goto/16 :goto_41

    :pswitch_1
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    const-string/jumbo v4, "finish-activity-op"

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    :goto_5
    or-int/lit8 v3, p2, 0x2

    invoke-virtual {v0, v4, v7}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    move-object/from16 v0, p6

    :goto_6
    move-object/from16 v29, v6

    move v14, v7

    move/from16 v12, v18

    const/4 v7, 0x0

    const/16 v28, 0x2

    goto/16 :goto_41

    :cond_8
    :pswitch_2
    move-object/from16 v29, v6

    const/4 v7, 0x0

    const/16 v28, 0x2

    goto/16 :goto_3b

    :pswitch_3
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "Can\'t resolve pending intent"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v8, 0x20

    :try_start_0
    const-string/jumbo v5, "startExistingRecents"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityStartController;->startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v3, :cond_b

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "1005"

    const-string/jumbo v3, "Tap \'Recent\' button"

    invoke-static {v0, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_b
    :goto_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_a

    :goto_9
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_d
    :goto_a
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v3, :cond_f

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    :cond_f
    invoke-virtual {v3, v7}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    :cond_10
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v3

    :goto_c
    move-object v3, v0

    goto :goto_d

    :cond_11
    const/4 v4, 0x0

    goto :goto_c

    :goto_d
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    move-object v3, v0

    move-object v0, v5

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v3, p2, 0x2

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p6

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_10

    :cond_12
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v8

    if-eqz v5, :cond_1a

    iget-boolean v4, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_19

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v4

    if-nez v4, :cond_14

    if-eqz v8, :cond_13

    goto :goto_e

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_e
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v8, :cond_15

    const/4 v5, 0x0

    :cond_15
    if-eqz v5, :cond_18

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_17

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_f

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set non-adjacent root as launch adjacent flag root tr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set not mCreatedByOrganizer as launch adjacent flag root tr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_f
    iput-object v5, v3, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    goto/16 :goto_0

    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set non-organized task as adjacent flag root: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt to set launch adjacent to a detached container: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p6

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v4, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v5, "launchTask HierarchyOp"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android:transaction.hop.taskId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v8, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-static {v4, v8, v3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(IILandroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v3

    or-int/lit8 v4, p2, 0x2

    new-instance v8, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1, v0, v5, v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move v3, v4

    goto/16 :goto_6

    :pswitch_6
    move-object/from16 v0, p6

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainers()[Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    array-length v5, v3

    move v8, v7

    :goto_11
    if-ge v8, v5, :cond_21

    aget-object v9, v3, v8

    invoke-static {v9}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v16

    if-nez v16, :cond_1d

    :cond_1c
    const/16 v28, 0x2

    goto :goto_12

    :cond_1d
    const/16 v28, 0x2

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v15, :cond_20

    iget-boolean v9, v15, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v9, :cond_1f

    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAdjacentRootsHierarchyOp: called with same root twice="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAdjacentRootsHierarchyOp: Not called with Task. wc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    move v3, v7

    goto :goto_14

    :cond_21
    const/16 v28, 0x2

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    new-instance v5, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    invoke-direct {v5, v4}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    iget-object v3, v3, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragments:Lcom/android/server/wm/TaskFragment$AdjacentSet;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_13

    :cond_22
    invoke-static {v5}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    move/from16 v3, v28

    :goto_14
    or-int v3, p2, v3

    move-object/from16 v29, v6

    move v14, v7

    move/from16 v12, v18

    const/4 v7, 0x0

    goto/16 :goto_41

    :pswitch_7
    move-object/from16 v0, p6

    const/16 v28, 0x2

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_17

    :cond_23
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_29

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_24
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v4

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v9, :cond_28

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v9

    if-eqz v9, :cond_25

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    new-instance v9, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v5, v9, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    :goto_15
    iput-object v8, v9, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    iput-object v4, v9, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_16
    move-object/from16 v29, v6

    move v14, v7

    move/from16 v12, v18

    const/4 v7, 0x0

    goto/16 :goto_40

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set not mCreatedByOrganizer as launch root tr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set a task without display area as launch root: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt to set launch root to a detached container: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :pswitch_8
    move-object/from16 v0, p6

    const/16 v28, 0x2

    iget-object v15, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    goto :goto_18

    :cond_2c
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    goto :goto_19

    :cond_2d
    const/4 v4, 0x0

    :goto_19
    if-nez v3, :cond_2f

    if-eqz v4, :cond_2e

    goto :goto_1a

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_1a
    if-nez v3, :cond_30

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    goto :goto_1b

    :cond_30
    if-nez v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    :cond_31
    :goto_1b
    if-ne v3, v4, :cond_32

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reparentChildrenTasksHierarchyOp parent not changing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    move-object/from16 v29, v6

    goto/16 :goto_24

    :cond_32
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    const-string v8, " hop="

    if-nez v5, :cond_33

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reparentChildrenTasksHierarchyOp currentParent detached="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_33
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reparentChildrenTasksHierarchyOp newParent detached="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_34
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reparentChildrenTasksHierarchyOp newParent in PIP="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_35
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v5

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v19

    if-eqz v19, :cond_36

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v19

    goto :goto_1d

    :cond_36
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v19

    :goto_1d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "reparentChildrenTasksHierarchyOp currentParent="

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " newParent="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;

    move v7, v5

    move-object v5, v2

    move-object v2, v3

    move v3, v7

    move/from16 v7, p5

    move-object/from16 v29, v6

    move/from16 v12, v18

    const/4 v14, 0x0

    move-object v6, v4

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;)V

    move-object v3, v2

    move-object v2, v5

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v7, v0, :cond_40

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    if-ltz v9, :cond_37

    invoke-virtual {v1, v9, v5}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_37
    if-eqz v15, :cond_38

    invoke-virtual {v15, v5, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_38
    instance-of v12, v6, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v12, :cond_3b

    if-nez v3, :cond_39

    move-object v3, v6

    check-cast v3, Lcom/android/server/wm/TaskDisplayArea;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v14}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v3

    :cond_39
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_3a

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v19

    if-eqz v19, :cond_3a

    if-eq v12, v3, :cond_3a

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v19

    if-eqz v19, :cond_3a

    move-object v14, v6

    check-cast v14, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v14, v14, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    add-int/2addr v12, v7

    const/16 v18, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v5, v6, v12}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_1f

    :cond_3a
    move-object v12, v6

    check-cast v12, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v14

    invoke-virtual {v5, v12, v14}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :goto_1f
    move/from16 p5, v0

    goto :goto_22

    :cond_3b
    move-object v12, v6

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v14

    if-eqz v14, :cond_3c

    move/from16 v14, v16

    :goto_20
    move/from16 p5, v0

    goto :goto_21

    :cond_3c
    move/from16 v14, v17

    goto :goto_20

    :goto_21
    const-string/jumbo v0, "processChildrenTaskReparentHierarchyOp"

    move-object/from16 p7, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v14, v12, v0, v3}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p9, :cond_3d

    move-object/from16 v3, p7

    move-object v4, v5

    goto :goto_22

    :cond_3d
    move-object/from16 v3, p7

    :goto_22
    if-eqz v4, :cond_3f

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    goto :goto_23

    :cond_3e
    const/4 v5, 0x0

    :goto_23
    const/high16 v12, 0x800000

    and-int/2addr v5, v12

    if-ne v5, v12, :cond_3f

    iget-object v5, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget v12, v4, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v5, v12, :cond_3f

    iget-object v5, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v14, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p5

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1e

    :cond_40
    if-eqz v15, :cond_41

    const/4 v14, 0x0

    invoke-virtual {v15, v6, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_41
    move/from16 v7, v28

    :goto_24
    or-int v0, p2, v7

    move v3, v0

    const/4 v7, 0x0

    :goto_25
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_9
    move/from16 v7, p5

    move-object/from16 v29, v6

    const/16 v28, 0x2

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_43

    :cond_42
    const/4 v7, 0x0

    goto/16 :goto_38

    :cond_43
    if-eqz v7, :cond_44

    if-nez v11, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    const/4 v7, 0x0

    :goto_27
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_40

    :cond_44
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v7}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_26

    :cond_45
    if-ltz v9, :cond_46

    invoke-virtual {v1, v9, v0}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_46
    iget-object v3, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    const-string v4, "Can\'t resolve parent window from token"

    if-eqz v3, :cond_49

    const/4 v14, 0x0

    invoke-virtual {v3, v0, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v3, v5, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_47
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_48

    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_48
    iget-object v5, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_49
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_4a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Container is no longer attached: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_34

    :cond_4a
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_4b

    goto :goto_29

    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reparenting leaf Tasks is not supported now. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    :goto_29
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_4d

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    goto :goto_2a

    :cond_4d
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    :goto_2a
    if-nez v3, :cond_4e

    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_4e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eq v4, v3, :cond_57

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-nez v5, :cond_4f

    goto :goto_2b

    :cond_4f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v5, v4, :cond_50

    if-nez v4, :cond_50

    const-string/jumbo v4, "When moving to default display, run wakeup."

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v5, "move to default display"

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    :cond_50
    :goto_2b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :goto_2c
    const/4 v7, 0x0

    goto/16 :goto_33

    :cond_51
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    const-string v5, " task="

    if-eqz v4, :cond_52

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t support moving a task to another PIP window... newParent="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_52
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_53

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_2d

    :cond_53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_54
    :goto_2d
    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    if-eqz v4, :cond_55

    move/from16 v4, v16

    goto :goto_2e

    :cond_55
    move/from16 v4, v17

    :goto_2e
    const-string/jumbo v5, "sanitizeAndApplyHierarchyOp"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    goto/16 :goto_2c

    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only reparent task to another task or taskDisplayArea, but not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    instance-of v4, v3, Lcom/android/server/wm/TaskDisplayArea;

    if-nez v4, :cond_58

    goto :goto_2f

    :cond_58
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :goto_2f
    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    if-eqz v4, :cond_59

    move/from16 v4, v16

    :goto_30
    const/4 v7, 0x0

    goto :goto_31

    :cond_59
    move/from16 v4, v17

    goto :goto_30

    :goto_31
    invoke-virtual {v0, v4, v3, v7}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto/16 :goto_33

    :cond_5a
    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5, v5}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v5, :cond_5c

    move/from16 v5, v16

    goto :goto_32

    :cond_5c
    move/from16 v5, v17

    :goto_32
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    if-eqz v4, :cond_5e

    if-eqz v3, :cond_5e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_5e

    iget-object v4, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_5d

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_33

    :cond_5d
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    :cond_5e
    :goto_33
    move/from16 v6, v28

    :goto_34
    or-int v0, p2, v6

    :goto_35
    move v3, v0

    goto/16 :goto_25

    :cond_5f
    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_63

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_62

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_60

    const/4 v0, 0x0

    goto :goto_37

    :cond_60
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    if-eqz v4, :cond_61

    move/from16 v4, v16

    goto :goto_36

    :cond_61
    move/from16 v4, v17

    :goto_36
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    move-result v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    move/from16 v0, v28

    :goto_37
    or-int v0, p2, v0

    goto :goto_35

    :cond_62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DisplayArea only supports reordering"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid container in hierarchy op"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempt to operate on detached container: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_64
    move-object/from16 v29, v6

    const/4 v7, 0x0

    const/16 v28, 0x2

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAppCompatOptions()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "android:transaction.reachability_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAppCompatOptions()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android:transaction.reachability_y"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-nez v4, :cond_65

    goto/16 :goto_27

    :cond_65
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-object v6, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    const/4 v14, 0x0

    if-eqz v6, :cond_66

    invoke-virtual {v6, v4, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_66
    if-eqz v5, :cond_68

    invoke-virtual {v5, v14}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_68

    iget-object v5, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v5, :cond_67

    invoke-virtual {v5, v4, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_67
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleDoubleTap(II)V

    :cond_68
    or-int/lit8 v0, p2, 0x1

    goto/16 :goto_35

    :cond_69
    move-object/from16 v29, v6

    const/4 v7, 0x0

    const/16 v28, 0x2

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v4, :cond_6b

    :cond_6a
    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "applyHierarchyOp: remove desktop home, "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_39

    :cond_6c
    move/from16 v3, p2

    goto :goto_3a

    :cond_6d
    :goto_39
    or-int/lit8 v3, p2, 0x2

    :goto_3a
    iget-object v4, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    const-string/jumbo v4, "remove-root-task-through-hierarchyOp"

    const/4 v12, 0x1

    invoke-virtual {v0, v4, v12}, Lcom/android/server/wm/TaskFragment;->remove(Ljava/lang/String;Z)V

    move-object/from16 v0, p6

    const/4 v14, 0x0

    goto/16 :goto_41

    :cond_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :goto_3b
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_6f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_70

    :cond_6f
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto :goto_3f

    :cond_70
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_3c

    :cond_71
    move/from16 v0, p2

    goto :goto_3d

    :cond_72
    :goto_3c
    or-int/lit8 v0, p2, 0x2

    :goto_3d
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v4

    if-eqz v4, :cond_74

    if-ne v11, v3, :cond_73

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v24, 0x0

    const/16 v25, 0x3e8

    const-string/jumbo v23, "close-task-through-hierarchyOp"

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v21, 0x0

    move/from16 v22, v21

    move-object/from16 v19, v3

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v27}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    move/from16 v14, v21

    const/4 v12, 0x1

    goto :goto_3e

    :cond_73
    const/4 v14, 0x0

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v21, 0x0

    const/16 v22, 0x3e8

    const-string/jumbo v20, "remove-task-through-hierarchyOp"

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v18, 0x1

    move/from16 v19, v18

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    move/from16 v12, v18

    goto :goto_3e

    :cond_74
    move-object/from16 v3, v17

    const/4 v12, 0x1

    const/4 v14, 0x0

    iget-object v4, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    :goto_3e
    move v3, v0

    goto/16 :goto_4

    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    move/from16 v3, p2

    goto/16 :goto_4

    :cond_75
    move-object/from16 v29, v6

    move v14, v7

    move/from16 v12, v18

    const/4 v7, 0x0

    const/16 v28, 0x2

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getKeyguardState()Landroid/window/KeyguardState;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/window/KeyguardState;->getKeyguardShowing()Z

    move-result v3

    invoke-virtual {v0}, Landroid/window/KeyguardState;->getAodShowing()Z

    move-result v0

    iget-object v4, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setLockScreenShownLocked(ZZ)V

    :cond_76
    or-int/lit8 v0, p2, 0x2

    goto :goto_3e

    :cond_77
    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v29, v6

    move v14, v7

    move-object v2, v10

    move/from16 v12, v18

    const/4 v7, 0x0

    const/16 v28, 0x2

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I

    move-result v3

    move-object v1, v0

    move-object v0, v4

    or-int v2, p2, v3

    move v3, v2

    :goto_41
    packed-switch v11, :pswitch_data_2

    :pswitch_a
    goto/16 :goto_52

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_42

    :cond_78
    iget-object v1, v10, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_79

    invoke-virtual {v1, v0, v14}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setSafeRegionBounds(Landroid/graphics/Rect;)V

    or-int/lit8 v0, v3, 0x1

    return v0

    :cond_7a
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_c
    move-object/from16 v2, v29

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_43

    :cond_7b
    const/4 v14, 0x0

    :goto_43
    if-eqz v14, :cond_7d

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_7c

    goto :goto_44

    :cond_7c
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isLaunchAdjacentDisabled()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    return v3

    :cond_7d
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_d
    move-object/from16 v2, v29

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getExcludeInsetsTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setExcludeInsetsTypes(I)V

    return v3

    :pswitch_e
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez v1, :cond_80

    :cond_7f
    move v7, v14

    goto :goto_46

    :cond_80
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7f

    array-length v1, v0

    sub-int/2addr v1, v12

    move/from16 v18, v14

    :goto_45
    if-ltz v1, :cond_82

    aget-object v2, v0, v1

    iget-boolean v4, v2, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_81

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-static {v2, v12, v14}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    move/from16 v18, v12

    :cond_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    :cond_82
    move/from16 v7, v18

    :goto_46
    if-eqz v7, :cond_a4

    or-int/lit8 v0, v3, 0x2

    return v0

    :pswitch_f
    move-object/from16 v2, v29

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_47

    :cond_83
    const/4 v14, 0x0

    :goto_47
    if-eqz v14, :cond_85

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_48

    :cond_84
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isTrimmableFromRecents()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    return v3

    :cond_85
    :goto_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_86

    goto/16 :goto_52

    :cond_86
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    :cond_87
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    const-string/jumbo v5, "moveActivityToPinnedRootTask"

    const/4 v6, 0x0

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    move-object/from16 p4, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move/from16 p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTaskInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;Z)V

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    if-eqz v1, :cond_88

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "auto-pip"

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    move/from16 p2, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    :cond_88
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    or-int/lit8 v0, v3, 0x2

    return v0

    :pswitch_11
    move-object/from16 v2, v29

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_49

    :cond_89
    const/4 v14, 0x0

    :goto_49
    if-eqz v14, :cond_8d

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_4a

    :cond_8a
    iget-boolean v0, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_8c

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparentLeafTaskIfRelaunch()Z

    move-result v0

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_a4

    iput-boolean v0, v14, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    return v3

    :cond_8b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set reparent leaf task flag on non-root task : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set reparent leaf task flag on non-organized task : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_12
    move-object/from16 v2, v29

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_8e

    goto :goto_4b

    :cond_8e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_8f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    if-nez v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set always-on-top on non-task or non-display area: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8f
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    or-int/lit8 v0, v3, 0x2

    return v0

    :cond_90
    :goto_4b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v1, :cond_91

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    or-int/lit8 v0, v3, 0x2

    return v0

    :cond_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to remove local insets source provider from unknown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_92
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameOwner()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->removeLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    return v3

    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to add local insets source provider on unknown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_93
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameOwner()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->addLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    return v3

    :pswitch_15
    iget v0, v10, Lcom/android/server/wm/ActionChain;->mType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_94

    const/4 v0, 0x1

    move v7, v0

    :cond_94
    if-nez v7, :cond_95

    goto/16 :goto_52

    :cond_95
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    if-nez v0, :cond_96

    aget-boolean v0, v2, v12

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x5e54de061248c20eL

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_96
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_97

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_4c

    :cond_97
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    :goto_4c
    if-nez v4, :cond_98

    aget-boolean v0, v2, v12

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x73c470f49422ca46L    # -9.622843145230481E-250

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_98
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v12

    :goto_4d
    if-ltz v5, :cond_9d

    iget-object v6, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition;

    iget-object v7, v6, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v7, :cond_9a

    :cond_99
    const/4 v7, 0x0

    goto :goto_4f

    :cond_9a
    move v7, v14

    :goto_4e
    iget-object v8, v6, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_99

    iget-object v8, v6, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_9b

    iget-object v8, v6, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    goto :goto_4f

    :cond_9b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :goto_4f
    if-eqz v7, :cond_9c

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_50

    :cond_9c
    add-int/lit8 v5, v5, -0x1

    goto :goto_4d

    :cond_9d
    const/4 v5, 0x0

    :goto_50
    if-nez v5, :cond_9e

    aget-boolean v0, v2, v12

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x20a126f5f6ce34bbL

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_9e
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Transition;

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Task;

    aget-boolean v1, v2, v12

    if-eqz v1, :cond_9f

    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v1, v1

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v6, 0x68a14bc89a8e3720L    # 1.0100749890343758E196

    invoke-static {v5, v6, v7, v12, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9f
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_a3

    if-ne v0, v2, :cond_a0

    goto :goto_51

    :cond_a0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eq v1, v4, :cond_a1

    goto :goto_51

    :cond_a1
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gt v4, v0, :cond_a2

    add-int/lit8 v0, v0, -0x1

    :cond_a2
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0, v2, v14}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_a3
    :goto_51
    or-int/lit8 v0, v3, 0x2

    return v0

    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v7

    iget v8, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v0, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    move/from16 p1, v0

    move-object/from16 p6, v1

    move-object/from16 p0, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p7, v7

    move/from16 p2, v8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;->startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_a4

    or-int/lit8 v0, v3, 0x2

    return v0

    :cond_a4
    :goto_52
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_11
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 11

    if-eqz p1, :cond_5

    const-string/jumbo v0, "applySyncTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v5, :cond_0

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p2, v5, v4}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    const/4 v4, -0x1

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v8, v6, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v6, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    const-string/jumbo v9, "Organizer"

    invoke-direct {v7, v6, p0, v8, v9}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iget v8, v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wm/TransitionController;->startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-wide/16 v8, 0x1388

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "queueSyncSet, caller="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    const-string v0, "BLASTSyncEngine"

    invoke-static {p1, p0, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    new-instance p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mStartSync:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    iput-object v6, p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mApplySync:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    iget-object p1, v4, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Null transaction passed to applySyncTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    const/4 v8, 0x0

    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TaskFragmentOperation must be non-null"

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_0
    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_1

    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-interface/range {p6 .. p6}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only a system organizer can perform privileged operations. opType="

    invoke-static {v4, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_1
    move-object/from16 v7, p5

    move v5, v4

    move-object v4, v3

    move-object/from16 v3, p6

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v5, v7, v3}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_f

    :cond_3
    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0, v2, v5, v7, v3}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v4

    move-object v5, v4

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v4

    const/4 v9, 0x0

    iget v10, v6, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v11, v6, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    const v12, 0x7fffffff

    const-string/jumbo v13, "WindowOrganizerController"

    const/4 v14, 0x1

    const/4 v15, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_f

    :pswitch_0
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/wm/TaskFragment;->mCanAffectSystemUiFlags:Z

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return v8

    :pswitch_1
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/wm/TaskFragment;->mMoveToBottomIfClearWhenLaunch:Z

    return v8

    :pswitch_2
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, v2, :cond_48

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    return v15

    :pswitch_3
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBottomChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, v2, :cond_48

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    return v15

    :pswitch_4
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v0

    iget-boolean v1, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v1, :cond_5

    goto/16 :goto_f

    :cond_5
    iput-boolean v0, v2, Lcom/android/server/wm/TaskFragment;->mPinned:Z

    return v8

    :pswitch_5
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_f

    :cond_6
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getSurfaceTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v10, v11}, Landroid/view/SurfaceControl$Transaction;->sanitize(II)V

    :cond_7
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v5, :cond_9

    iget-object v6, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eq v6, v2, :cond_8

    goto :goto_1

    :cond_8
    iput-boolean v4, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoostedRequested:Z

    if-eqz v3, :cond_9

    iget-object v2, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/Task;)V

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;->run()V

    return v8

    :cond_a
    iget v0, v1, Lcom/android/server/wm/Transition;->mState:I

    if-eqz v0, :cond_c

    if-ne v0, v14, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t register listeners if the transition isn\'t collecting. state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v8

    :pswitch_6
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v0

    iput v0, v2, Lcom/android/server/wm/TaskFragment;->mEmbeddedDimArea:I

    return v8

    :pswitch_7
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_f

    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez v1, :cond_f

    goto/16 :goto_f

    :cond_f
    iget-object v2, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v9, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    return v8

    :pswitch_8
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_f

    :cond_10
    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    :cond_11
    if-eqz v9, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v1, :cond_12

    iput-object v2, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    goto :goto_3

    :cond_12
    new-instance v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-direct {v1, v0, v2, v8}, Lcom/android/server/wm/Task$DecorSurfaceContainer;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V

    iput-object v1, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    :goto_3
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez v0, :cond_13

    goto/16 :goto_f

    :cond_13
    iget-object v0, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return v8

    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v1, :cond_15

    iput-object v2, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    return v8

    :cond_15
    new-instance v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-direct {v1, v0, v2, v14}, Lcom/android/server/wm/Task$DecorSurfaceContainer;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V

    iput-object v1, v0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    return v8

    :pswitch_9
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v0

    iget-boolean v1, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v1, :cond_16

    goto/16 :goto_f

    :cond_16
    iput-boolean v0, v2, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    return v8

    :pswitch_a
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_48

    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_48

    if-eq v1, v2, :cond_48

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    return v15

    :pswitch_b
    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v1

    if-nez v1, :cond_17

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TaskFragmentAnimationParams must be non-null"

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    move-object v3, v2

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_17
    move-object v3, v2

    iput-object v1, v3, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    return v8

    :pswitch_c
    move-object v3, v2

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/TaskFragment;

    :cond_18
    iput-object v9, v3, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    return v8

    :pswitch_d
    move-object v3, v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-ne v1, v3, :cond_19

    const-string/jumbo v0, "The requested TaskFragment already has the focus."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_19
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    const-string/jumbo v0, "The Task of the requested TaskFragment doesn\'t have focus."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "There is no resumed activity in the requested TaskFragment."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    return v8

    :pswitch_e
    move-object v3, v2

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_f

    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_4

    :cond_1d
    move-object v0, v9

    :goto_4
    if-eq v0, v3, :cond_1e

    if-eqz v0, :cond_1f

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    move v8, v14

    :cond_1f
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    if-eqz v8, :cond_3a

    invoke-virtual {v0, v9}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    return v15

    :pswitch_f
    move-object v3, v2

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    if-nez v1, :cond_20

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SecondaryFragmentToken must be set for setAdjacentTaskFragments."

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_20
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    filled-new-array {v3, v1}, [Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v4}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v0}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    goto :goto_5

    :cond_21
    move v15, v8

    :goto_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_22

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v9, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v9, v0}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    :cond_23
    if-eqz v9, :cond_24

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v14

    goto :goto_6

    :cond_24
    move v0, v8

    :goto_6
    iget-boolean v2, v3, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    const-string/jumbo v4, "Set delaying last activity removal on a non-embedded TF."

    const-string v5, "ActivityTaskManager"

    if-nez v2, :cond_25

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iput-boolean v0, v3, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    if-eqz v9, :cond_26

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result v0

    if-eqz v0, :cond_26

    move v8, v14

    :cond_26
    iget-boolean v0, v1, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_27

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iput-boolean v8, v1, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return v15

    :pswitch_10
    move-object v3, v2

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_2a

    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p6, :cond_29

    if-nez v2, :cond_28

    goto :goto_7

    :cond_28
    iget-object v5, v5, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface/range {p6 .. p6}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz v5, :cond_29

    iget-object v5, v5, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    check-cast v5, Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    move-object v5, v2

    goto :goto_8

    :cond_29
    :goto_7
    move-object v5, v9

    :cond_2a
    :goto_8
    if-nez v5, :cond_2b

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not allowed to operate with invalid activity."

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_2b
    iget v0, v3, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v0, "The task fragment is not allowed to embed the given activity."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v0, v2, :cond_2d

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v0, "The reparented activity is not in the same Task as the target TaskFragment."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_2d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_2f

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const-string/jumbo v4, "Skip reparent activity to TaskFragment "

    if-nez v2, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v2, " is current parent is null"

    invoke-static {v0, v1, v2, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne v3, v2, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v2, " is already in the same TaskFragment"

    invoke-static {v0, v1, v2, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2f
    iget-object v2, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v2, :cond_31

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_30
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_31
    if-eqz v0, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v5, v9}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;)V

    :cond_32
    invoke-virtual {v5, v3, v12}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return v15

    :pswitch_11
    move-object v3, v2

    move v9, v4

    move-object v0, v5

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(IILandroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v4

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;

    move-object/from16 v1, p0

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V

    move-object/from16 v16, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    move-object/from16 v3, v16

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-nez v4, :cond_3a

    const/16 v4, -0x60

    if-eq v2, v4, :cond_35

    const/16 v4, -0x5e

    if-eq v2, v4, :cond_34

    const/16 v4, -0x5c

    if-eq v2, v4, :cond_33

    const/16 v4, -0x5b

    if-eq v2, v4, :cond_33

    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Start activity failed with error code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when starting "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    :goto_9
    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object v5, v4

    move v4, v9

    goto :goto_a

    :cond_33
    new-instance v4, Landroid/content/ActivityNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No Activity found to handle "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_34
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Permission denied and not allowed to start activity "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_35
    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activity could not be started for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with error code : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :pswitch_12
    move-object v3, v2

    if-eqz p3, :cond_36

    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v3, v2, v8}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v1, "Skip removing TaskFragment due in lock task mode."

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_36
    move-object v2, v0

    iget-object v0, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v1

    if-nez v1, :cond_37

    move v1, v14

    goto :goto_b

    :cond_37
    move v1, v8

    :goto_b
    if-eqz v0, :cond_39

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_38
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_39
    iget-object v0, v2, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    iget-object v2, v3, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "deleteTaskFragment"

    invoke-virtual {v3, v0, v14}, Lcom/android/server/wm/TaskFragment;->remove(Ljava/lang/String;Z)V

    if-eqz v1, :cond_3a

    goto/16 :goto_f

    :cond_3a
    return v15

    :pswitch_13
    move-object v3, v2

    move-object v2, v0

    move-object v0, v5

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    if-nez v0, :cond_3b

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "TaskFragmentCreationParams must be non-null"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p6

    move-object v0, v2

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_3b
    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "TaskFragment token must be unique"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, v4

    const/4 v4, 0x0

    move-object v0, v2

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_3c
    move-object v2, v1

    move-object v1, v4

    if-eqz v3, :cond_4a

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v4, :cond_3d

    goto/16 :goto_11

    :cond_3d
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_3e

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_3e
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v5, v4, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    if-ne v5, v6, :cond_49

    iget v5, v4, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v5, v11, :cond_3f

    goto/16 :goto_10

    :cond_3f
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_40

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Not allowed to create TaskFragment in PIP Task"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_40
    move-object/from16 v1, p0

    new-instance v5, Lcom/android/server/wm/TaskFragment;

    iget-object v6, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v5, v6, v7, v14, v14}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getAllowTransitionWhenEmpty()Z

    move-result v6

    iget-boolean v7, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v7, :cond_41

    goto :goto_c

    :cond_41
    iput-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mAllowTransitionWhenEmpty:Z

    :goto_c
    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    iget-object v9, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v10

    iput-object v10, v5, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    iput v7, v5, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    iput-object v9, v5, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v6}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getOverrideOrientation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getConfigurationChangeMask()I

    move-result v6

    iget-object v7, v5, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget-object v9, v5, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v9}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v7

    if-eqz v7, :cond_42

    iput v6, v5, Lcom/android/server/wm/TaskFragment;->mConfigurationChangeMaskForOrganizer:I

    :cond_42
    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_43

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v9, v1, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskFragment;

    iget-object v9, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v7, :cond_44

    :goto_d
    add-int/lit8 v12, v6, 0x1

    goto :goto_e

    :cond_43
    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_44

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v9, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v7, :cond_44

    goto :goto_d

    :cond_44
    :goto_e
    invoke-virtual {v4, v5, v12}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget v7, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x791c

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_46

    if-eqz v2, :cond_45

    iget v6, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v6, v5}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_45
    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_46
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v6, :cond_47

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    :cond_47
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_48

    invoke-virtual {v2, v5}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_48
    :goto_f
    return v8

    :cond_49
    :goto_10
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_4a
    :goto_11
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final applyTaskFragmentTransactionLocked(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .locals 14

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "Permission Denial: applyTaskFragmentTransaction() from pid="

    const-string v5, ", uid="

    const-string/jumbo v6, "WindowOrganizerController"

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    if-nez v7, :cond_0

    const-string v3, "Attempt to operate on task fragment that no longer exists"

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v8, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v8, :cond_5

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v9}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v8

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v9

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v3

    iget-object v10, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v10

    if-eqz v10, :cond_1

    and-int/lit8 v10, v8, -0x4a

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    and-int/lit16 v11, v10, 0x100

    if-eqz v11, :cond_2

    const/high16 v11, 0x20000000

    and-int/2addr v11, v9

    if-eqz v11, :cond_2

    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_2

    and-int/lit16 v10, v10, -0x101

    const v11, -0x20000001

    and-int/2addr v11, v9

    and-int/lit8 v12, v3, -0x2

    goto :goto_2

    :cond_2
    move v12, v3

    move v11, v9

    :goto_2
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v13, :cond_3

    const/high16 v13, 0x800000

    and-int/2addr v13, v12

    if-eqz v13, :cond_3

    const v13, -0x800001

    and-int/2addr v12, v13

    :cond_3
    if-nez v10, :cond_4

    if-nez v11, :cond_4

    if-nez v12, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trying to apply changes of changeMask="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configSetMask="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " windowSetMask="

    const-string v2, " to TaskFragment="

    invoke-static {v9, v3, v1, v2, p0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TaskFragmentOrganizer="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_3
    if-ltz v3, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v9

    const/16 v10, 0xe

    if-eq v9, v10, :cond_8

    const/16 v10, 0x11

    if-ne v9, v10, :cond_7

    invoke-virtual {v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {p0, v9, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    invoke-virtual {v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v9

    invoke-virtual {v9}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_9
    if-eqz p4, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Only a system organizer is allowed to use remote transition!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v4}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    if-nez p3, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    iget-object v6, v0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v6, v6, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v6, :cond_d

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v7, 0x3

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, 0x54cde495c22f3cd2L    # 3.269164467809003E100

    invoke-static {v6, v10, v11, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_e
    :try_start_2
    new-instance v3, Lcom/android/server/wm/Transition;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    move/from16 v6, p2

    invoke-direct {v3, v6, v5, v0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    const-string v11, " is not collecting"

    const-string v12, " state: "

    const-string/jumbo v13, "Too late, transition : "

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v14, 0x1

    aget-boolean v2, v2, v14

    if-eqz v2, :cond_0

    int-to-long v2, v4

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v7, 0x7fae65e581513769L    # 1.0673112428514985E307

    invoke-static {v6, v7, v8, v14, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v14, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    iget-object v2, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    const/4 v15, 0x4

    const/4 v3, 0x0

    const-string/jumbo v6, "WindowOrganizerController"

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v5, Lcom/android/server/wm/ActionChain;->mType:I

    if-ne v2, v15, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget-object v8, v2, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget v9, v8, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    add-int/2addr v9, v14

    iput v9, v8, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    iget v8, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v2, v8, v3}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    move/from16 v16, v14

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Transition is not collecting when applyTransaction. transition="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " state="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget v8, v8, Lcom/android/server/wm/Transition;->mState:I

    invoke-static {v2, v8, v6}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-object v7, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    :cond_3
    :goto_0
    move/from16 v16, v3

    :goto_1
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v8, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_5

    :try_start_1
    invoke-virtual {v8, v2}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_6

    or-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    move v3, v14

    goto/16 :goto_28

    :cond_5
    move v8, v3

    :cond_6
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_7

    :try_start_3
    iget-object v10, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    move/from16 v17, v15

    move-object/from16 v15, p4

    invoke-virtual {v10, v0, v15}, Lcom/android/server/wm/MultiInstanceController;->adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    iget-object v10, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/MultiInstanceController;->adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)V

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    const-string/jumbo v7, "start_intents"

    invoke-virtual {v10, v3, v7}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_7
    move/from16 v17, v15

    move-object/from16 v15, p4

    :cond_8
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v7, :cond_9

    :try_start_5
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isStartTasksType()Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_a

    :cond_9
    :try_start_6
    iget-object v7, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/AppPairController;->handleAutoPipIfNeededLocked(Landroid/window/WindowContainerTransaction;)V

    :cond_a
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_c

    :try_start_7
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->changeTransitionRequested()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getChangeTransitionRequest()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleChangeTransitionRequest: "

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/window/WindowContainerTransaction;->changeTransitRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "ChangeTransitionController"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v9, v14, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ChangeTransitionController;->handleRequestFullscreenToSplitScreen(Z)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x3

    if-ne v9, v3, :cond_c

    invoke-virtual {v7, v14}, Lcom/android/server/wm/ChangeTransitionController;->handleRequestFullscreenToSplitScreen(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_c
    :goto_6
    :try_start_8
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_d

    :try_start_9
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->displayChangeTransitionRequested()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getDisplayIdForChangeTransition()I

    move-result v7

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getDisplayChangeTransitionReason()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v9, v10}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_d
    :try_start_a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_e

    :try_start_b
    iget-object v3, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getAdditionalFlags()I

    move-result v7

    iget v9, v3, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    or-int/2addr v7, v9

    iput v7, v3, Lcom/android/server/wm/Transition;->mAdditionalFlags:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :try_start_c
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getChangeList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v10, :cond_f

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v22, :cond_10

    :try_start_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v22
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-lez v22, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v24, v8

    goto :goto_d

    :cond_10
    :goto_8
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_11

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    check-cast v14, Landroid/window/WindowContainerTransaction$ContainerChange;

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$1;

    invoke-direct {v0, v14}, Lcom/android/server/wm/WindowOrganizerController$1;-><init>(Landroid/window/WindowContainerTransaction$ContainerChange;)V

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_9
    move-object v2, v6

    const/4 v3, 0x1

    goto/16 :goto_28

    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v14}, Landroid/window/WindowContainerTransaction$Change;->getConfigAtTransitionEnd()Z

    move-result v14

    if-nez v14, :cond_13

    :cond_12
    :goto_b
    move-object/from16 v0, p1

    :goto_c
    const/4 v14, 0x1

    goto :goto_7

    :cond_13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_b

    :cond_14
    iget-object v14, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v3

    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;

    move/from16 v24, v8

    const/4 v8, 0x0

    invoke-direct {v3, v8, v14}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    move-object/from16 v0, p1

    move-object/from16 v3, v23

    move/from16 v8, v24

    goto :goto_c

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    :goto_e
    move/from16 v8, v24

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v10, :cond_23

    :try_start_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/IBinder;

    invoke-static {v14}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    if-eqz v14, :cond_16

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v23, :cond_17

    :cond_16
    move-object/from16 v23, v0

    const/4 v4, 0x0

    goto/16 :goto_18

    :cond_17
    if-nez v3, :cond_18

    :try_start_10
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {v23 .. v23}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v23

    const/high16 v24, 0x20000000

    and-int v23, v23, v24

    if-eqz v23, :cond_18

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v23, v0

    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v3, 0x1

    goto :goto_10

    :cond_18
    move-object/from16 v23, v0

    :goto_10
    if-ltz v4, :cond_19

    invoke-virtual {v1, v4, v14}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_19
    :try_start_11
    invoke-virtual {v5, v14}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1a

    :try_start_12
    iget-object v0, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_1a

    move/from16 v24, v3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_11

    :cond_1a
    move/from16 v24, v3

    :goto_11
    :try_start_13
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v0, :cond_1e

    :try_start_14
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, v9, :cond_1d

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/window/WindowContainerTransaction$HierarchyOp;

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v0

    move/from16 v27, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual/range {v25 .. v25}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_13
    move/from16 v3, v27

    goto :goto_14

    :cond_1c
    invoke-virtual/range {v25 .. v25}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    const/16 v22, 0x1

    xor-int/lit8 v0, v0, 0x1

    move v3, v0

    :goto_14
    add-int/lit8 v0, v26, 0x1

    goto :goto_12

    :cond_1d
    move/from16 v27, v3

    goto :goto_15

    :cond_1e
    const/16 v27, 0x0

    :goto_15
    if-eqz v27, :cond_1f

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_1f
    if-eqz v27, :cond_20

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v3, "force-stop-on-removing-pip"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_17

    :catchall_2
    move-exception v0

    :goto_16
    move-object/from16 v5, p3

    goto/16 :goto_9

    :cond_20
    const/4 v4, 0x0

    :goto_17
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v14, v0, v3}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v0

    or-int/2addr v8, v0

    if-eqz v27, :cond_21

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    :cond_21
    and-int/lit8 v3, v8, 0x2

    if-nez v3, :cond_22

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_22
    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v0, v23

    move/from16 v3, v24

    goto/16 :goto_f

    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to operate on detached container: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v0, v23

    goto/16 :goto_f

    :cond_23
    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$HierarchyOp;

    if-nez v3, :cond_25

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_24

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1a

    :cond_25
    const/4 v10, 0x2

    goto :goto_19

    :cond_26
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStagePositionChanged()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v0, :cond_27

    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/4 v14, 0x0

    :try_start_17
    iput-boolean v14, v0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    goto :goto_1b

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_16

    :cond_27
    const/4 v14, 0x0

    :goto_1b
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    const-string/jumbo v5, "wct"

    if-nez v3, :cond_2a

    :try_start_1a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-nez v3, :cond_2a

    move v3, v14

    move v10, v3

    :goto_1c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v14

    move-object/from16 v19, v2

    const/4 v2, 0x7

    if-ne v14, v2, :cond_28

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    or-int/2addr v2, v10

    move v10, v2

    :cond_28
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v19

    const/4 v14, 0x0

    goto :goto_1c

    :cond_29
    move-object/from16 v19, v2

    if-lez v10, :cond_2b

    const/4 v3, 0x3

    if-ge v10, v3, :cond_2b

    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2a
    move-object/from16 v19, v2

    :cond_2b
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTaskAndIntentType()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksFromRecentType()Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "split(edge_all_apps)"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1e

    :cond_2d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_2e

    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTaskAndIntentType()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    const/4 v14, 0x0

    goto :goto_1f

    :cond_2f
    const/4 v14, 0x1

    :goto_1f
    if-lez v9, :cond_31

    :try_start_1b
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v2

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v9, :cond_30

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    move v10, v3

    move v3, v8

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v8

    move/from16 v20, v9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v9

    move/from16 v23, v10

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isDismissSplit()Z

    move-result v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-object/from16 v28, v6

    move-object/from16 v18, v7

    move-object v7, v15

    move v6, v2

    move-object v2, v4

    move-object v15, v5

    move/from16 v4, p2

    move-object/from16 v5, p3

    :try_start_1c
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Z)I

    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    or-int v8, v3, v2

    add-int/lit8 v3, v23, 0x1

    move v2, v6

    move-object v5, v15

    move-object/from16 v7, v18

    move/from16 v9, v20

    move-object/from16 v6, v28

    move-object/from16 v15, p4

    goto :goto_20

    :catchall_4
    move-exception v0

    :goto_21
    move v3, v14

    :goto_22
    move-object/from16 v2, v28

    goto/16 :goto_28

    :catchall_5
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v28, v6

    goto :goto_21

    :cond_30
    move v3, v8

    :cond_31
    move-object v15, v5

    move-object/from16 v28, v6

    move-object/from16 v5, p3

    :try_start_1d
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    if-nez v2, :cond_32

    :try_start_1e
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-ne v2, v0, :cond_32

    invoke-virtual {v1, v15}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :cond_32
    :try_start_1f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    if-eqz v0, :cond_33

    :try_start_20
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getAdditionalFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_33

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getAdditionalFlags()I

    move-result v2

    iget v3, v0, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    :cond_33
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-nez v14, :cond_34

    move v3, v14

    goto :goto_23

    :cond_34
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    const/4 v3, 0x0

    :goto_23
    :try_start_21
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move v14, v3

    goto :goto_26

    :catchall_6
    move-exception v0

    goto :goto_22

    :cond_35
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_37

    :try_start_22
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_37

    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    if-eqz v4, :cond_36

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_25

    :cond_36
    const/4 v6, 0x0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_25
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v19, v2

    goto :goto_24

    :cond_37
    :goto_26
    if-eqz v8, :cond_38

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :cond_38
    if-eqz v16, :cond_3a

    iget-object v0, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget v3, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    const/16 v22, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->applyReady()V

    goto :goto_27

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget v2, v2, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v28

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_27
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppPairController;->mShouldAutoPipByAppPair:Z

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-eqz v14, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    :cond_3b
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v8

    :catchall_7
    move-exception v0

    move-object/from16 v2, v28

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v5, p3

    goto/16 :goto_9

    :goto_28
    if-eqz v16, :cond_3d

    iget-object v4, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v2, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget-object v4, v2, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget v5, v4, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    const/16 v22, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->applyReady()V

    goto :goto_29

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget v6, v6, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget v5, v5, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_29
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    const/4 v14, 0x0

    iput-boolean v14, v4, Lcom/android/server/wm/AppPairController;->mShouldAutoPipByAppPair:Z

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v14, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-eqz v3, :cond_3e

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    :cond_3e
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I
    .locals 0

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "WindowOrganizerController"

    const-string p2, "Failed to execute deferred applyTransaction"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result p0

    return p0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string/jumbo v0, "applyTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, p1, v5, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Null transaction passed to applyTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .locals 10

    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid token in task fragment or displayArea transaction"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p1

    new-array p3, v1, [I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    aput p0, p3, v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    aget p0, p3, v2

    or-int/2addr p0, v3

    aput p0, p3, v2

    :cond_2
    new-instance p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    aget p0, p3, v2

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    const-string v0, "ActivityTaskManager"

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setMainWindowSizeChangeTransaction: t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p1, v4, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    new-instance p3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    const/4 v4, 0x3

    invoke-direct {p3, v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p1, p3, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p3

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    or-int/lit8 p3, p3, 0x2

    :cond_5
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    move-result v4

    iget-boolean v5, p1, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    if-ne v5, v4, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v4, p1, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    or-int/lit8 p3, p3, 0x2

    :cond_7
    :goto_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getDragResizing()Z

    move-result v4

    iget-boolean v5, p1, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v5, v4, :cond_9

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Drag resize isn\'t allowed for root task id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4, v5, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mDragResizing:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v0

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v4, v3, :cond_d

    if-eq v0, v3, :cond_b

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/android/server/wm/WindowOrganizerController;->shouldApplyLifecycleEffectOnPipChange()Z

    move-result v4

    if-eqz v4, :cond_d

    or-int/lit8 p3, p3, 0x2

    goto :goto_4

    :cond_b
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Task and activity windowing modes match, so remove any timeout abort PiP callbacks scheduled if needed; task_win_mode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", activity_win_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WindowOrganizerController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v4, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    iget-object v6, v4, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    :cond_d
    :goto_4
    const/4 v4, -0x1

    if-le v0, v4, :cond_e

    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_e
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-boolean v5, v4, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    iput-boolean v1, v4, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, v4, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    iget-object v0, v4, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    :cond_10
    :goto_5
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result p2

    if-ne p2, v3, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    const-string/jumbo v0, "applyTaskChanges"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/wm/WindowOrganizerController;->shouldApplyLifecycleEffectOnPipChange()Z

    move-result p0

    if-eqz p0, :cond_11

    or-int/lit8 p3, p3, 0x2

    :cond_11
    if-nez v0, :cond_12

    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_12
    return p3

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result p1

    if-eqz p1, :cond_14

    return v2

    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    iget-object v0, v7, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_21

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean v1, v7, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getRelativeBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_6

    :cond_15
    new-array v0, v1, [I

    new-array v4, v1, [I

    new-instance v5, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0, v4}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    new-instance v5, Landroid/graphics/Point;

    aget v0, v0, v2

    aget v4, v4, v2

    invoke-direct {v5, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v4, v5, Landroid/graphics/Point;->x:I

    if-lt v0, v4, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, v5, Landroid/graphics/Point;->y:I

    if-ge v0, v4, :cond_16

    goto :goto_7

    :cond_16
    :goto_6
    move-object v4, p0

    goto :goto_8

    :cond_17
    :goto_7
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The requested relative bounds:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not satisfy minimum dimensions:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/16 v8, 0x9

    move-object v4, p0

    move-object v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_8
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v7, p1, p0}, Lcom/android/server/wm/TaskFragment;->translateRelativeBoundsToAbsoluteBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3, p0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v7, p1}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_18
    move-object v4, p0

    :goto_9
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_19

    const/4 p0, 0x4

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result p1

    invoke-virtual {v7, p0, p1}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    move-result p0

    if-eqz p0, :cond_19

    move p0, v3

    goto :goto_a

    :cond_19
    move p0, v2

    :goto_a
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    move-result p1

    iget-boolean p3, v7, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    if-ne p3, p1, :cond_1a

    goto :goto_b

    :cond_1a
    iput-boolean p1, v7, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    goto :goto_c

    :cond_1b
    :goto_b
    move v3, p0

    :goto_c
    invoke-virtual {v4, v7, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    or-int/2addr p0, v3

    iget-object p1, v4, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    iget-object p2, v4, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    iget-object p3, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p3, :cond_1d

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    move-result p3

    if-nez p3, :cond_1c

    goto :goto_d

    :cond_1c
    iget-object p3, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p3, v0, :cond_1f

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p2, p1, :cond_1d

    goto :goto_e

    :cond_1d
    :goto_d
    move v1, v2

    goto :goto_e

    :cond_1e
    iget-object p1, v7, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v1, p1

    :cond_1f
    :goto_e
    if-eqz v1, :cond_20

    iget-object p1, v4, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_20
    iput-boolean v2, v7, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    return p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The TaskFragment is not embedded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    move-object v4, p0

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    return p0
.end method

.method public final enforceTaskFragmentOrganized(Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragment;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {p0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission Denial: applyTaskFragmentTransaction() from pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to modify TaskFragment not belonging to the TaskFragmentOrganizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final finishAllTransitions(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransaction;)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "finishAllTransitions()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getTransferTransitionTokens()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getMergedTransitionTokens()Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v3

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {p0, v8, v3}, Lcom/android/server/wm/WindowOrganizerController;->finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge v6, p1, :cond_3

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v6, v6, 0x1

    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/WindowOrganizerController;->finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    return-void
.end method

.method public final finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    const-string/jumbo v0, "finishTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-object p1, v5, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    const/4 p1, -0x1

    invoke-virtual {p0, p2, p1, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-object p1, v2, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    const/4 p1, -0x1

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    return-void
.end method

.method public final getApplyToken()Landroid/os/IBinder;
    .locals 0

    const-string/jumbo p0, "getApplyToken()"

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    const-string/jumbo v0, "getDisplayAreaOrganizerController()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object p0
.end method

.method public final getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-object p0
.end method

.method public final getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .locals 1

    const-string/jumbo v0, "getTaskOrganizerController()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object p0
.end method

.method public final getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    return-object p0
.end method

.method public final isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result p3

    :cond_1
    if-eqz p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t support the operation since in lock task mode violation.  Task: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " Parent : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p3

    :cond_3
    :goto_0
    return v0
.end method

.method public final onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "WindowOrganizerController"

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x5aed84692c233a99L    # 1.0230191066375382E130

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    :try_start_0
    invoke-interface {v0, p2, p1}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to notify transaction ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WindowOrganizerController"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 6

    const-string/jumbo v0, "registerTransitionPlayer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .locals 12

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p3, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move/from16 v11, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Not allowed to operate with invalid organizer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    return-void

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget p2, p1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v0, 0xe

    if-ne p2, v0, :cond_8

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_8

    array-length p2, p0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_5
    if-ltz p2, :cond_8

    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    return-void
.end method

.method public setSyncReady(I)V
    .locals 5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x603e95f9b0c32d8L

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    return-void
.end method

.method public final startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;

    move-result-object p0

    return-object p0
.end method

.method public startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v2, v0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    const-string/jumbo v3, "Organizer"

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iget v2, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-wide/16 v3, 0x1388

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    return v2
.end method

.method public final startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;
    .locals 11

    const-string/jumbo v0, "startTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v3

    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-nez v3, :cond_1

    const-string/jumbo p1, "WindowOrganizerController"

    const-string/jumbo p2, "Using shell transitions API for legacy transitions."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p1

    invoke-virtual {p0, p3, v0, p1, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p3, :cond_2

    move-object v4, p3

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v4, p2

    :goto_0
    const/4 p2, 0x0

    if-nez v3, :cond_6

    if-ltz p1, :cond_5

    if-eqz p3, :cond_4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->avoidReady()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    const/4 p3, 0x1

    move v7, p3

    goto :goto_1

    :cond_4
    move v7, p2

    :goto_1
    new-instance v3, Lcom/android/server/wm/Transition;

    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v3, p1, p2, p3, v0}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    new-instance v6, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string/jumbo p1, "start WCT applied"

    invoke-direct {v6, p1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    iget-object p1, v3, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p1, v6}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition;->calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;Z)V

    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    iget-object p0, v3, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_5
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create transition with no type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object v2, p0

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result p0

    if-nez p0, :cond_7

    iget-boolean p0, v3, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    if-nez p0, :cond_7

    const-string/jumbo p0, "WindowOrganizerController"

    const-string/jumbo p1, "Trying to start a transition that isn\'t collecting. This probably means Shell took too long to respond to a request. WM State may be incorrect now, please file a bug"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    iget-object p1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    iput-object v1, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v4, v0, p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    iget-object p0, v3, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    monitor-exit v10

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    new-instance v1, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string/jumbo p0, "start WCT applied"

    invoke-direct {v1, p0}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    iget-object p0, v3, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    :cond_8
    move-object v6, v1

    iget-object p0, v3, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v4, p0, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->shouldApplyOnDisplayThread()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->start()V

    invoke-virtual {v2, v4, v0, p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_a
    :goto_3
    iget-object p0, v3, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    monitor-exit v10

    goto :goto_2

    :goto_4
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;

    return-void
.end method

.method public final unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 3

    const-string/jumbo v0, "unregisterTransitionPlayer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v4, p3

    move-object v3, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-ne p2, v2, :cond_2

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not allowed to apply operation on PIP TaskFragment"

    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v5, p3

    move-object v4, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v0

    :cond_3
    return v2

    :goto_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p0, "Not allowed to apply operation on invalid fragment tokens opType="

    invoke-static {v6, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v0
.end method

.method public final waitAsyncStart(Ljava/util/function/IntSupplier;)I
    .locals 3

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    :goto_0
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_0
    :goto_1
    const/4 p1, 0x0

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
