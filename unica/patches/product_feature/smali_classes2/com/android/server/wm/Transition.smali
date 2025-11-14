.class public Lcom/android/server/wm/Transition;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public mAdditionalFlags:I

.field public mAnimationTrack:I

.field public mCanPipOnFinish:Z

.field public final mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

.field public final mChanges:Landroid/util/ArrayMap;

.field public mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field public mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field public mConfigAtEndActivities:Ljava/util/ArrayList;

.field public mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

.field public final mController:Lcom/android/server/wm/TransitionController;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFlags:I

.field public mForcePlaying:Z

.field public mIsPlayerEnabled:Z

.field public mIsSeamlessRotation:Z

.field public final mLogger:Lcom/android/server/wm/TransitionController$Logger;

.field public mMergeAsNoAnimation:Z

.field public mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

.field public mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

.field public final mOnTopTasksAtReady:Ljava/util/ArrayList;

.field public final mOnTopTasksStart:Ljava/util/ArrayList;

.field public mOverrideBackgroundColor:I

.field public mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field public mParallelCollectType:I

.field public final mParticipants:Landroid/util/ArraySet;

.field public mPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPriorVisibilityMightBeDirty:Z

.field public final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field public final mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

.field public mRecentsDisplayId:I

.field public mRemoteTransition:Landroid/window/RemoteTransition;

.field public mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mState:I

.field public mStatusBarTransitionDelay:J

.field public final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mSyncId:I

.field public final mTargetDisplays:Ljava/util/ArrayList;

.field public mTargets:Ljava/util/ArrayList;

.field public final mToken:Lcom/android/server/wm/Transition$Token;

.field mTransactionCompletedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mTransientHideTasks:Ljava/util/ArrayList;

.field public mTransientLaunches:Landroid/util/ArrayMap;

.field public mTransitionEndedListeners:Ljava/util/ArrayList;

.field public mTriggerTask:Lcom/android/server/wm/Task;

.field public final mType:I

.field public final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    new-instance v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-direct {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    new-instance v2, Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    new-instance v3, Lcom/android/server/wm/TransitionController$Logger;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    iput v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    iput v2, p0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance p1, Lcom/android/server/wm/Transition$Token;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Transition$Token;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    iput-wide p1, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz p1, :cond_9d

    iget-object p1, p3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    :cond_9d
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz p1, :cond_b8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Transition is created, t="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", caller="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    const-string/jumbo p2, "WindowManager"

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b8
    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_37

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_37

    :cond_13
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_2e

    :cond_1e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    move-result v2

    if-eqz v2, :cond_31

    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public static assignLayers(Lcom/android/server/wm/DisplayArea;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    return-void

    :catchall_e
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    throw p1
.end method

.method public static calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_36

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_2a

    :cond_18
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v2

    if-eqz v2, :cond_2d

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    goto :goto_37

    :cond_36
    move-object v1, v3

    :goto_37
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_77

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    if-eqz v2, :cond_5b

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    iget v6, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    iget v6, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v7, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v2, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    goto :goto_5c

    :cond_5b
    move-object v5, v3

    :goto_5c
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    if-eqz v2, :cond_78

    if-nez v5, :cond_6d

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    :cond_6d
    iget v1, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v6, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v2, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {v5, v0, v1, v6, v2}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    goto :goto_78

    :cond_77
    move-object v5, v3

    :cond_78
    :goto_78
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_83

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_84

    :cond_83
    move-object p1, v3

    :goto_84
    if-eqz p1, :cond_88

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_88
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz p1, :cond_8f

    if-eqz p2, :cond_8f

    goto :goto_90

    :cond_8f
    move-object p2, v3

    :goto_90
    if-eqz p2, :cond_ab

    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_ab

    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz p1, :cond_ab

    if-eqz v5, :cond_a1

    invoke-virtual {v5, p2}, Landroid/window/TransitionInfo$AnimationOptions;->addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V

    return-object v5

    :cond_a1
    invoke-static {p2}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    return-object p1

    :cond_ab
    return-object v5
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;
    .registers 24

    move-object/from16 v0, p1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_23

    aget-boolean v1, v2, v5

    if-eqz v1, :cond_39

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x357641f0591731bdL  # 3.718078589772125E-51

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, v8, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_39

    :cond_23
    aget-boolean v1, v3, v5

    if-eqz v1, :cond_39

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0xa51bfd09a803dffL

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, v8, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_39
    :goto_39
    new-instance v1, Lcom/android/server/wm/Transition$Targets;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$Targets;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_43
    const-string/jumbo v7, "Transition"

    if-ltz v6, :cond_118

    move-object/from16 v8, p0

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v10

    if-nez v10, :cond_70

    aget-boolean v7, v3, v5

    if-eqz v7, :cond_6c

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x64940b6165c5c105L

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v10, v11, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6c
    :goto_6c
    move/from16 v14, p2

    goto/16 :goto_114

    :cond_70
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eqz v10, :cond_77

    goto :goto_6c

    :cond_77
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v10}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v11

    if-nez v11, :cond_a4

    aget-boolean v7, v3, v5

    if-eqz v7, :cond_6c

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v11, -0x7032121ad5e4ca8aL

    const/16 v9, 0xc

    invoke-static {v10, v11, v12, v9, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_6c

    :cond_a4
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v13, :cond_10f

    if-eqz v12, :cond_da

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_da

    const/4 v13, 0x6

    move/from16 v14, p2

    if-ne v14, v13, :cond_dc

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_dc

    iget-boolean v12, v12, Lcom/android/server/wm/ActivityRecord;->mHiddenWhileEnteringPinnedMode:Z

    if-eqz v12, :cond_dc

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "calculateTargets: Skip to collect entering pip, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    :cond_da
    move/from16 v14, p2

    :cond_dc
    if-eqz v11, :cond_111

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_111

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v12

    if-eqz v12, :cond_111

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_111

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v11}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v11

    if-nez v11, :cond_111

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "skip promote to task fragment. parents has no changes. wc="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    :cond_10f
    move/from16 v14, p2

    :cond_111
    invoke-virtual {v1, v10}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    :goto_114
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_43

    :cond_118
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_130

    iget-object v6, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x100392630555c6f8L

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v9, v10, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_130
    iget-object v6, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    const/4 v8, 0x0

    move-object v9, v8

    :goto_139
    if-ltz v6, :cond_421

    iget-object v11, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v12, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    aget-boolean v13, v3, v5

    if-eqz v13, :cond_15f

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    move v15, v5

    move/from16 p0, v6

    const-wide v5, -0x7bbc591a68b0c5d1L  # -4.033105707718502E-288

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v14, v5, v6, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_162

    :cond_15f
    move v15, v5

    move/from16 p0, v6

    :goto_162
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-ne v5, v9, :cond_183

    aget-boolean v5, v3, v15

    if-eqz v5, :cond_176

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v11, -0x5e9fc77bb376cc2dL  # -6.342837275253804E-148

    invoke-static {v5, v11, v12, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_176
    move/from16 v6, p0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v3, v8

    move/from16 p2, v15

    const/16 v16, -0x1

    goto/16 :goto_416

    :cond_183
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v16

    if-eqz v16, :cond_19d

    if-eqz v14, :cond_19d

    invoke-virtual {v14}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v16

    if-nez v16, :cond_1aa

    :cond_19d
    move/from16 v6, p0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v3, v8

    move/from16 p2, v15

    const/16 v16, -0x1

    goto/16 :goto_3f0

    :cond_1aa
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v16

    if-eqz v16, :cond_1cb

    aget-boolean v6, v3, v15

    if-eqz v6, :cond_1be

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v11, -0x25ad13ad2acccd76L  # -1.280947603135937E127

    invoke-static {v6, v11, v12, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1be
    :goto_1be
    move/from16 v6, p0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v3, v8

    move/from16 p2, v15

    :goto_1c7
    const/16 v16, -0x1

    goto/16 :goto_415

    :cond_1cb
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v16, :cond_1d6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v16

    if-eqz v16, :cond_1d6

    goto :goto_1be

    :cond_1d6
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    move/from16 p2, v15

    if-eqz v16, :cond_1e8

    iget-boolean v15, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    if-eqz v15, :cond_1e8

    move/from16 v6, p0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v3, v8

    goto :goto_1c7

    :cond_1e8
    iget-object v15, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    const/16 v16, -0x1

    if-eqz v15, :cond_240

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-eq v10, v15, :cond_240

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v10, :cond_237

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_237

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v10

    if-eqz v10, :cond_237

    iget-boolean v10, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v10, :cond_237

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    if-eqz v10, :cond_237

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-eqz v10, :cond_237

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "canPromote: allow promotion, target="

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", parent="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_240

    :cond_237
    move/from16 v6, p0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v3, v8

    goto/16 :goto_415

    :cond_240
    :goto_240
    invoke-virtual {v11, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v10

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    :goto_24a
    if-ltz v14, :cond_339

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    if-ne v6, v15, :cond_25d

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object v3, v8

    move-object/from16 v17, v9

    goto/16 :goto_32c

    :cond_25d
    aget-boolean v17, v3, p2

    if-eqz v17, :cond_27a

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const-wide v2, 0x19bfecb549673b62L

    move-object/from16 v20, v6

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v2, v3, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_280

    :cond_27a
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    :goto_280
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v2, :cond_29b

    iget-object v3, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_29e

    iget-object v3, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz v3, :cond_29b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29b

    goto :goto_29e

    :cond_29b
    move-object/from16 v17, v9

    goto :goto_2fa

    :cond_29e
    :goto_29e
    invoke-virtual {v2, v15}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    aget-boolean v3, v19, p2

    if-eqz v3, :cond_2bf

    invoke-static {v2}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    move-object/from16 v17, v9

    const-wide v8, 0x35c169e944f53a58L  # 9.30855293649066E-50

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v8, v9, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_2c1

    :cond_2bf
    move-object/from16 v17, v9

    :goto_2c1
    const/4 v3, 0x2

    const/4 v6, 0x4

    const/4 v8, 0x3

    if-eq v10, v8, :cond_2cc

    if-eq v10, v6, :cond_2ca

    move v9, v10

    goto :goto_2ce

    :cond_2ca
    move v9, v3

    goto :goto_2ce

    :cond_2cc
    move/from16 v9, p2

    :goto_2ce
    if-eq v2, v8, :cond_2d5

    if-eq v2, v6, :cond_2d3

    goto :goto_2d7

    :cond_2d3
    move v2, v3

    goto :goto_2d7

    :cond_2d5
    move/from16 v2, p2

    :goto_2d7
    if-eq v9, v2, :cond_2f8

    aget-boolean v2, v19, p2

    if-eqz v2, :cond_2f3

    invoke-static {v10}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x6a61845989c233aaL  # 2.7460382737481744E204

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v8, v9, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2f3
    move/from16 v6, p0

    const/4 v3, 0x0

    goto/16 :goto_415

    :cond_2f8
    const/4 v3, 0x0

    goto :goto_32c

    :goto_2fa
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_315

    aget-boolean v2, v19, p2

    if-eqz v2, :cond_310

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x5751d4667473cf6dL  # -9.801023515249834E-113

    const/4 v3, 0x0

    invoke-static {v2, v8, v9, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_311

    :cond_310
    const/4 v3, 0x0

    :goto_311
    move/from16 v6, p0

    goto/16 :goto_415

    :cond_315
    const/4 v3, 0x0

    aget-boolean v2, v19, p2

    if-eqz v2, :cond_32c

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x6d9a1d968ce03c38L  # 9.218844765689588E219

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v8, v9, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_32c
    :goto_32c
    add-int/lit8 v14, v14, -0x1

    move-object v8, v3

    move-object/from16 v9, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v6, v20

    goto/16 :goto_24a

    :cond_339
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v3, v8

    move-object/from16 v17, v9

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_35f

    aget-boolean v2, v19, p2

    if-eqz v2, :cond_35c

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x65adad8a553ec094L  # -6.899189364683506E-182

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v8, v9, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_35c
    :goto_35c
    move/from16 v6, p0

    goto :goto_3b1

    :cond_35f
    iget v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_37c

    aget-boolean v2, v19, p2

    if-eqz v2, :cond_35c

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x1eb734bc7e503baaL

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v8, v9, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_35c

    :cond_37c
    aget-boolean v2, v19, p2

    if-eqz v2, :cond_392

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0xd199f8fa39d39c7L

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v8, v9, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_392
    iget-object v2, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    move/from16 v6, p0

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v8, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-nez v8, :cond_3ac

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    :cond_3ac
    iget-object v8, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3b1
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_3da

    aget-boolean v8, v19, p2

    if-eqz v8, :cond_3d5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0xbadc3b08a373fbcL

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v9, v10, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3d5
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    :cond_3da
    iget v5, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3e7

    iget v5, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    goto :goto_3ed

    :cond_3e7
    iget v5, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :goto_3ed
    move-object/from16 v9, v17

    goto :goto_416

    :goto_3f0
    aget-boolean v2, v19, p2

    if-eqz v2, :cond_415

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parent can\'t be target "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0xa86bcf20866cc83L  # -7.586175146368892E257

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, v10, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_415
    :goto_415
    move-object v9, v5

    :goto_416
    add-int/lit8 v6, v6, -0x1

    move/from16 v5, p2

    move-object v8, v3

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_139

    :cond_421
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 p2, v5

    const/16 v16, -0x1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_43e

    iget-object v2, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_43e

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_43e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_456
    if-ltz v5, :cond_466

    iget-object v6, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_456

    :cond_466
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_46c
    if-ltz v5, :cond_519

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v8}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_486

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v9, :cond_490

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->needRemoteWallpaperAnim()Z

    move-result v9

    if-eqz v9, :cond_490

    :cond_486
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v9, :cond_493

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v9

    if-eqz v9, :cond_493

    :cond_490
    move/from16 v9, p2

    goto :goto_494

    :cond_493
    move v9, v4

    :goto_494
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {v8}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    :goto_49b
    if-eqz v8, :cond_515

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v10, :cond_4a7

    goto/16 :goto_515

    :cond_4a7
    invoke-virtual {v10}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v11

    if-nez v11, :cond_4ae

    goto :goto_4d8

    :cond_4ae
    iget-object v11, v8, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v11, :cond_4b3

    goto :goto_4d8

    :cond_4b3
    iget-object v11, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v11, :cond_4bc

    if-nez v9, :cond_4bc

    iput-object v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_515

    :cond_4bc
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4dd

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v11, :cond_4cd

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->needRemoteWallpaperAnim()Z

    move-result v11

    if-eqz v11, :cond_4cd

    goto :goto_4dd

    :cond_4cd
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v11

    if-eqz v11, :cond_4d8

    if-nez v9, :cond_4d8

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d8
    :goto_4d8
    invoke-static {v8}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    goto :goto_49b

    :cond_4dd
    :goto_4dd
    if-eqz v9, :cond_4e2

    iput-object v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_4e5

    :cond_4e2
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4e5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4ec

    goto :goto_515

    :cond_4ec
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    move v6, v4

    :goto_4f7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_515

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    goto :goto_4f7

    :cond_515
    :goto_515
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_46c

    :cond_519
    new-instance v0, Landroid/util/SparseArray;

    iget-object v2, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iget-object v2, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_52c
    if-ltz v2, :cond_545

    iget-object v3, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget v5, v1, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    rem-int/2addr v3, v5

    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_52c

    :cond_545
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v5, v16

    :goto_55f
    if-ltz v3, :cond_595

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_58d

    iget-boolean v9, v8, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    if-eqz v9, :cond_57f

    move/from16 v9, v16

    if-ne v5, v9, :cond_57b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_590

    :cond_57b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_590

    :cond_57f
    move/from16 v9, v16

    if-ne v5, v9, :cond_58d

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    if-nez v8, :cond_58d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_58d
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_590
    add-int/lit8 v3, v3, -0x1

    const/16 v16, -0x1

    goto :goto_55f

    :cond_595
    move/from16 v9, v16

    if-eq v5, v9, :cond_5c7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_59f
    if-ltz v0, :cond_5c7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getCustomListSortedByZ: boost, index="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_59f

    :cond_5c7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_5e2

    aget-boolean v0, v18, p2

    if-eqz v0, :cond_5f8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x740cacc3e941c48aL  # -4.217413419510966E-251

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-object v1

    :cond_5e2
    aget-boolean v0, v19, p2

    if-eqz v0, :cond_5f8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x7f8e28b736a5c6c8L  # -1.587897648457723E-306

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5f8
    return-object v1
.end method

.method public static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Landroid/window/TransitionInfo;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Landroid/window/TransitionInfo;

    move/from16 v4, p1

    invoke-direct {v3, v0, v4}, Landroid/window/TransitionInfo;-><init>(II)V

    invoke-static {v3, v1, v2}, Lcom/android/server/wm/Transition;->calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_96c

    :cond_18
    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_25

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    goto :goto_26

    :cond_25
    move-object v4, v5

    :goto_26
    if-eqz v4, :cond_2b

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    goto :goto_2c

    :cond_2b
    move-object v4, v5

    :goto_2c
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v7, :cond_35

    invoke-static {v0, v1, v4}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v7

    goto :goto_39

    :cond_35
    invoke-static {v0, v1, v5}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v7

    :goto_39
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_43
    if-ge v11, v9, :cond_96c

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v13, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    new-instance v14, Landroid/window/TransitionInfo$Change;

    iget-object v15, v13, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v15, :cond_58

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v15

    goto :goto_59

    :cond_58
    move-object v15, v5

    :goto_59
    invoke-static {v13, v2}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-direct {v14, v15, v5}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v5, :cond_6b

    iget-boolean v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    if-eqz v5, :cond_6b

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setResumedAffordance(Z)V

    :cond_6b
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v5, :cond_78

    iget-boolean v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    if-eqz v5, :cond_78

    iget-boolean v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    invoke-virtual {v14, v5}, Landroid/window/TransitionInfo$Change;->setAffordanceTargetFreeformTask(Z)V

    :cond_78
    iget-object v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v5, :cond_85

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    :cond_85
    iget-object v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v5, :cond_9e

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v5, :cond_9e

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v15, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v5, v15, :cond_9e

    iget-object v5, v15, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/window/TransitionInfo$Change;->setLastParent(Landroid/window/WindowContainerToken;)V

    :cond_9e
    invoke-virtual {v12, v13}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v15, 0x6

    const/4 v10, 0x3

    if-eqz v5, :cond_d5

    iget-object v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v16

    if-eqz v16, :cond_bd

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-nez v5, :cond_ba

    goto :goto_bd

    :cond_ba
    iget-boolean v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    goto :goto_be

    :cond_bd
    :goto_bd
    const/4 v5, 0x0

    :goto_be
    if-eqz v5, :cond_d5

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-eq v5, v6, :cond_d5

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-eq v5, v10, :cond_d5

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-eq v5, v15, :cond_d5

    invoke-virtual {v14, v15}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    :cond_d5
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    iput v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    iget-object v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    iget-boolean v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v5, :cond_ed

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v5

    if-eqz v5, :cond_eb

    goto :goto_ed

    :cond_eb
    const/4 v5, 0x0

    goto :goto_ee

    :cond_ed
    :goto_ed
    move v5, v6

    :goto_ee
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    if-nez v15, :cond_fa

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v15

    :goto_f8
    xor-int/2addr v15, v6

    goto :goto_117

    :cond_fa
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    move-result v17

    if-eqz v17, :cond_102

    move v15, v6

    goto :goto_117

    :cond_102
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v17

    if-nez v17, :cond_10d

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v15

    goto :goto_f8

    :cond_10d
    new-instance v10, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v10, v6}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v15, v10}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v15

    :goto_117
    if-eqz v15, :cond_11b

    or-int/lit8 v5, v5, 0x4

    :cond_11b
    iget-object v6, v13, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v10, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean v15, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v1, 0x2

    if-nez v15, :cond_12a

    :cond_128
    :goto_128
    const/4 v6, 0x0

    goto :goto_155

    :cond_12a
    iget v10, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    const/4 v15, 0x1

    if-ne v10, v15, :cond_135

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_128

    :cond_135
    iget-object v10, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget v10, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    if-ne v10, v1, :cond_142

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_142

    goto :goto_128

    :cond_142
    iget-object v10, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    const/4 v15, 0x1

    invoke-virtual {v10, v13, v15}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v10

    if-nez v10, :cond_154

    iget-object v6, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    const/4 v10, 0x0

    invoke-virtual {v6, v13, v10}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v6

    if-eqz v6, :cond_128

    :cond_154
    const/4 v6, 0x1

    :goto_155
    const/high16 v10, 0x20000

    if-eqz v6, :cond_15a

    or-int/2addr v5, v10

    :cond_15a
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_163

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    :cond_163
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    const-string/jumbo v15, "Transition"

    move/from16 v19, v10

    if-eqz v6, :cond_1cb

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1c5

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v10, :cond_181

    invoke-virtual {v10}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v10

    if-eqz v10, :cond_181

    or-int/lit16 v5, v5, 0x800

    :cond_181
    iget-boolean v10, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_19b

    const/16 v10, 0x100

    move/from16 v20, v5

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v10}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v10

    if-nez v10, :cond_19d

    const-string/jumbo v5, "Unexpected launch-task-behind operation in shell transition"

    invoke-static {v15, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x80000

    or-int v5, v20, v5

    goto :goto_19f

    :cond_19b
    move/from16 v20, v5

    :cond_19d
    move/from16 v5, v20

    :goto_19f
    iget v10, v1, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    move-object/from16 v20, v1

    const v1, 0x48000

    and-int/2addr v10, v1

    if-ne v10, v1, :cond_1ab

    or-int/2addr v1, v5

    move v5, v1

    :cond_1ab
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v1, :cond_1c5

    and-int/lit8 v1, v5, 0x4

    if-nez v1, :cond_1c5

    invoke-static/range {v20 .. v20}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    invoke-virtual {v12, v13}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_1c3

    const/4 v10, 0x3

    if-ne v1, v10, :cond_1c5

    :cond_1c3
    or-int/lit8 v5, v5, 0x4

    :cond_1c5
    iget-object v1, v6, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_1cb

    or-int/lit8 v5, v5, 0x10

    :cond_1cb
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1f2

    const/high16 v20, 0x400000

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    move/from16 v21, v5

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v5, :cond_1df

    or-int/lit8 v5, v21, 0x10

    move/from16 v21, v5

    :cond_1df
    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int v5, v21, v5

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v21

    if-eqz v21, :cond_1eb

    or-int v5, v5, v20

    :cond_1eb
    sget-boolean v21, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v21, :cond_1f7

    or-int/lit8 v5, v5, 0x40

    goto :goto_1f7

    :cond_1f2
    move/from16 v21, v5

    const/high16 v20, 0x400000

    const/4 v10, 0x0

    :cond_1f7
    :goto_1f7
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v21

    if-eqz v21, :cond_203

    if-nez v6, :cond_203

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    :cond_203
    if-eqz v10, :cond_2de

    const/high16 v21, 0x10000

    new-instance v6, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;

    move-object/from16 v22, v7

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v10, v6}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_217

    or-int/lit16 v5, v5, 0x200

    :cond_217
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v10, v6}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eqz v6, :cond_226

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_227

    :cond_226
    const/4 v6, 0x0

    :goto_227
    if-eqz v6, :cond_293

    if-eq v6, v1, :cond_233

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v7, :cond_236

    iget-object v7, v7, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v7, :cond_236

    :cond_233
    move/from16 v23, v9

    goto :goto_248

    :cond_236
    if-eqz v1, :cond_24b

    iget-object v7, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move/from16 v23, v9

    iget-object v9, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ge v7, v9, :cond_24d

    :goto_248
    or-int/lit16 v5, v5, 0x4000

    goto :goto_295

    :cond_24b
    move/from16 v23, v9

    :cond_24d
    if-eqz v1, :cond_295

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_295

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_295

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    if-ne v7, v9, :cond_27c

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ge v7, v1, :cond_295

    goto :goto_248

    :cond_27c
    iget-object v7, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v7, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ge v1, v6, :cond_295

    goto :goto_248

    :cond_293
    move/from16 v23, v9

    :cond_295
    :goto_295
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v7, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-boolean v10, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v10, :cond_2ba

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v6, v10, :cond_2b8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v1, v7, :cond_2b8

    goto :goto_2ba

    :cond_2b8
    const/4 v7, 0x0

    goto :goto_2bb

    :cond_2ba
    :goto_2ba
    const/4 v7, 0x1

    :goto_2bb
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-eqz v10, :cond_2d0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v6, v10, :cond_2ce

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v1, v6, :cond_2ce

    goto :goto_2d0

    :cond_2ce
    const/4 v1, 0x0

    goto :goto_2d1

    :cond_2d0
    :goto_2d0
    const/4 v1, 0x1

    :goto_2d1
    if-eqz v7, :cond_2d7

    if-eqz v1, :cond_2d7

    const/4 v1, 0x1

    goto :goto_2d8

    :cond_2d7
    const/4 v1, 0x0

    :goto_2d8
    if-eqz v1, :cond_323

    or-int/lit16 v1, v5, 0x400

    move v5, v1

    goto :goto_323

    :cond_2de
    move-object/from16 v22, v7

    move/from16 v23, v9

    const/high16 v21, 0x10000

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2f7

    or-int/lit8 v6, v5, 0x20

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v1

    if-eqz v1, :cond_2f5

    or-int/lit16 v5, v5, 0xa0

    goto :goto_323

    :cond_2f5
    move v5, v6

    goto :goto_323

    :cond_2f7
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v1

    if-eqz v1, :cond_2ff

    const/4 v1, 0x1

    goto :goto_300

    :cond_2ff
    const/4 v1, 0x0

    :goto_300
    if-eqz v1, :cond_305

    or-int/lit8 v5, v5, 0x2

    goto :goto_323

    :cond_305
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v1

    const/16 v6, 0x7db

    if-ne v1, v6, :cond_30f

    const/4 v1, 0x1

    goto :goto_310

    :cond_30f
    const/4 v1, 0x0

    :goto_310
    if-eqz v1, :cond_315

    or-int/lit16 v5, v5, 0x100

    goto :goto_323

    :cond_315
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v1

    const/16 v6, 0x7d0

    if-lt v1, v6, :cond_323

    const/16 v6, 0xbb7

    if-gt v1, v6, :cond_323

    or-int v5, v5, v21

    :cond_323
    :goto_323
    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v6, v1, 0x8

    const/high16 v7, 0x40000

    if-eqz v6, :cond_330

    and-int/lit8 v6, v1, 0x10

    if-nez v6, :cond_330

    or-int/2addr v5, v7

    :cond_330
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_337

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    :cond_337
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_33d

    or-int v5, v5, v20

    :cond_33d
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->allowEdgeExtension()Z

    move-result v1

    if-nez v1, :cond_346

    const/high16 v1, 0x8000000

    or-int/2addr v5, v1

    :cond_346
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_35a

    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int v6, v1, v21

    if-eqz v6, :cond_353

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    :cond_353
    and-int v1, v1, v19

    if-eqz v1, :cond_35a

    const/high16 v1, 0x40000000  # 2.0f

    or-int/2addr v5, v1

    :cond_35a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v1, :cond_36c

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v1

    if-eqz v1, :cond_366

    const/4 v1, 0x1

    goto :goto_367

    :cond_366
    const/4 v1, 0x0

    :goto_367
    if-eqz v1, :cond_36c

    const/high16 v1, 0x10000000

    or-int/2addr v5, v1

    :cond_36c
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-eqz v1, :cond_37d

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    if-eqz v1, :cond_37d

    const/high16 v1, -0x80000000

    or-int/2addr v5, v1

    :cond_37d
    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_385

    const/high16 v1, 0x4000000

    or-int/2addr v5, v1

    :cond_385
    invoke-virtual {v14, v5}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    iput v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    invoke-static {v13}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    invoke-virtual {v14, v1, v5}, Landroid/window/TransitionInfo$Change;->setDisplayId(II)V

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v10, 0x3

    if-eq v1, v10, :cond_3a6

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_3c9

    goto :goto_3a7

    :cond_3a6
    const/4 v10, 0x1

    :goto_3a7
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v10

    :goto_3ac
    if-ltz v1, :cond_3c9

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_3c6

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    const v5, 0x8000

    or-int/2addr v1, v5

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    goto :goto_3c9

    :cond_3c6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3ac

    :cond_3c9
    :goto_3c9
    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-nez v5, :cond_3ec

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_3e5

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v10, 0x3

    if-eq v5, v10, :cond_3e5

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3ec

    :cond_3e5
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3ec
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_3fc

    iget-boolean v7, v6, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v7, :cond_3fc

    const/4 v7, 0x1

    goto :goto_3fd

    :cond_3fc
    const/4 v7, 0x0

    :goto_3fd
    if-eqz v6, :cond_402

    iget-object v9, v6, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    goto :goto_403

    :cond_402
    const/4 v9, 0x0

    :goto_403
    invoke-virtual {v14, v9}, Landroid/window/TransitionInfo$Change;->setTaskFragmentToken(Landroid/os/IBinder;)V

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v5, :cond_588

    new-instance v10, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v10}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v5, v10, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    move/from16 v21, v7

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_423

    :cond_421
    :goto_421
    const/4 v10, -0x1

    goto :goto_46e

    :cond_423
    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_42a

    goto :goto_421

    :cond_42a
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_431

    iget v10, v10, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    goto :goto_432

    :cond_431
    const/4 v10, -0x1

    :goto_432
    if-ltz v10, :cond_435

    goto :goto_46e

    :cond_435
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    move-object/from16 v24, v7

    const/4 v7, 0x3

    if-eq v10, v7, :cond_43f

    goto :goto_46e

    :cond_43f
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v7, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v1, v7, :cond_421

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v7

    if-nez v7, :cond_44e

    goto :goto_421

    :cond_44e
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v7, :cond_45b

    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v7, v7, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-nez v7, :cond_45b

    goto :goto_421

    :cond_45b
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v7, :cond_46a

    iget-object v7, v5, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_46a

    goto :goto_421

    :cond_46a
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :goto_46e
    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4dc

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v7

    if-eqz v7, :cond_487

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v7

    invoke-virtual {v14, v7}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    :cond_487
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_48e

    goto :goto_4dc

    :cond_48e
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v7

    if-nez v7, :cond_4a1

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_4a1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_4a1

    goto :goto_4dc

    :cond_4a1
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v10

    if-eq v7, v10, :cond_4b7

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    goto :goto_4dc

    :cond_4b7
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_4dc

    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v10

    if-eqz v10, :cond_4c6

    goto :goto_4dc

    :cond_4c6
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_4cf

    goto :goto_4dc

    :cond_4cf
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    if-eq v7, v1, :cond_4dc

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    :cond_4dc
    :goto_4dc
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_4ed

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_4ed
    if-eqz v1, :cond_4f5

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_4f6

    :cond_4f5
    const/4 v1, 0x0

    :goto_4f6
    if-nez v1, :cond_4fe

    move-object/from16 v24, v8

    move/from16 v25, v11

    const/4 v7, 0x0

    goto :goto_55d

    :cond_4fe
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v24, v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    move-result v8

    move/from16 v25, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v8, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52b

    invoke-static {v7, v8}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_53d

    :cond_52b
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "loadInsetsForRecentTransition: full letterbox inset="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v10, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v7}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_55d
    if-eqz v7, :cond_562

    invoke-virtual {v14, v7}, Landroid/window/TransitionInfo$Change;->setInsetsForRecentsTransition(Landroid/graphics/Rect;)V

    :cond_562
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_59a

    iget-boolean v1, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_59a

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_59a

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_59a

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_59a

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    goto :goto_59a

    :cond_588
    move/from16 v21, v7

    move-object/from16 v24, v8

    move/from16 v25, v11

    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/16 v18, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_59a

    const/4 v10, 0x3

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    :cond_59a
    :goto_59a
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v15

    invoke-virtual {v14, v10, v11}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v14, v10, v11}, Landroid/window/TransitionInfo$Change;->setEndParentSize(II)V

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    if-eqz v9, :cond_63b

    iget-object v11, v9, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v11, v11, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v11, :cond_63b

    invoke-virtual {v14, v8}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v11

    if-eqz v11, :cond_5e7

    iget-object v11, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v11}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v11

    if-nez v11, :cond_5e7

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    :cond_5e7
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_624

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v1

    if-nez v1, :cond_624

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-ne v11, v15, :cond_609

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-eq v1, v8, :cond_624

    :cond_609
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_61d

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_61d

    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-nez v8, :cond_61d

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_624

    :cond_61d
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    :cond_624
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_67f

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_62f

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_630

    :cond_62f
    const/4 v1, -0x1

    :goto_630
    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setTaskIdForActivity(I)V

    invoke-virtual {v9}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setHasFixedRotationTransform(Z)V

    goto :goto_67f

    :cond_63b
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v11

    if-eqz v11, :cond_643

    const/4 v11, 0x1

    goto :goto_644

    :cond_643
    const/4 v11, 0x0

    :goto_644
    if-eqz v11, :cond_66c

    iget-object v11, v13, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v11, :cond_66c

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v11

    if-eqz v11, :cond_66c

    iget-object v11, v13, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v11}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v11

    if-nez v11, :cond_66c

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    goto :goto_67f

    :cond_66c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_67c

    if-eqz v5, :cond_67c

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isSplitAdjustedMinimalBounds()Z

    move-result v1

    if-eqz v1, :cond_67c

    invoke-virtual {v14, v8}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    goto :goto_67f

    :cond_67c
    invoke-virtual {v14, v7}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    :cond_67f
    :goto_67f
    if-eqz v9, :cond_6b6

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v1, v1, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v1, :cond_6b6

    const/4 v15, 0x1

    if-ne v0, v15, :cond_693

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_693

    const/4 v1, 0x1

    goto :goto_694

    :cond_693
    const/4 v1, 0x0

    :goto_694
    iget-object v8, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_69d

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    goto :goto_69e

    :cond_69d
    const/4 v8, 0x0

    :goto_69e
    if-eqz v8, :cond_6a5

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v8, v8, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    goto :goto_6a6

    :cond_6a5
    const/4 v8, 0x0

    :goto_6a6
    if-nez v1, :cond_6ae

    if-nez v8, :cond_6ae

    const/16 v18, 0x1

    :goto_6ac
    const/4 v15, 0x1

    goto :goto_6b1

    :cond_6ae
    const/16 v18, 0x0

    goto :goto_6ac

    :goto_6b1
    xor-int/lit8 v1, v18, 0x1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setPopOverAnimationNeeded(Z)V

    :cond_6b6
    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    const/4 v8, 0x5

    if-ne v1, v8, :cond_6c6

    if-nez v5, :cond_6c6

    if-eqz v9, :cond_6c6

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_6c6

    invoke-virtual {v14, v7}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    :cond_6c6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION_APP_BACKGROUND_LAYER:Z

    if-eqz v1, :cond_6d1

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->allowAppBackgroundLayerForTransition()Z

    move-result v1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setAllowAppBackgroundLayer(Z)V

    :cond_6d1
    if-nez v9, :cond_6d5

    if-eqz v21, :cond_709

    :cond_6d5
    if-eqz v9, :cond_6dc

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    goto :goto_6e0

    :cond_6dc
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    :goto_6e0
    if-eqz v1, :cond_6f1

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    move-result v7

    if-eqz v7, :cond_6f1

    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    move-result v1

    goto :goto_700

    :cond_6f1
    if-eqz v9, :cond_6f6

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_6fa

    :cond_6f6
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_6fa
    iget-object v1, v1, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    :goto_700
    const/16 v7, 0xff

    invoke-static {v1, v7}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    :cond_709
    if-eqz v9, :cond_710

    if-eqz v22, :cond_710

    move-object/from16 v1, v22

    goto :goto_73e

    :cond_710
    if-eqz v21, :cond_73d

    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    move-result v7

    if-eqz v7, :cond_73d

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->getOpenAnimationResId()I

    move-result v8

    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->getChangeAnimationResId()I

    move-result v11

    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->getCloseAnimationResId()I

    move-result v1

    const/4 v15, 0x0

    invoke-static {v7, v8, v11, v1, v15}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v1, v6}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    goto :goto_73e

    :cond_73d
    const/4 v1, 0x0

    :goto_73e
    if-eqz v1, :cond_743

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    :cond_743
    if-eqz v9, :cond_74a

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setActivityComponent(Landroid/content/ComponentName;)V

    :cond_74a
    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v14, v1, v10}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    iget-object v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_758

    iget v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    invoke-virtual {v14, v1, v6}, Landroid/window/TransitionInfo$Change;->setSnapshot(Landroid/view/SurfaceControl;F)V

    :cond_758
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v6, :cond_767

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setConfiguration(Landroid/content/res/Configuration;)V

    :cond_767
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v6, :cond_790

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_790

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_790

    if-eqz v1, :cond_790

    iget-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_790

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v6, :cond_790

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->state:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_790

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/window/TransitionInfo;->setShouldAnimateDefaultDisplay(Z)V

    :cond_790
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v6, :cond_805

    iget-object v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setChangeLeash(Landroid/view/SurfaceControl;)V

    iget v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setChangeTransitMode(I)V

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setReleaseChangeLeashAllowed(Z)V

    iget-object v6, v13, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_7b2

    goto :goto_805

    :cond_7b2
    iget-object v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_7c7

    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_7c7

    iget v7, v6, Landroid/graphics/Rect;->right:I

    if-gtz v7, :cond_7c7

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    if-lez v7, :cond_7c5

    goto :goto_7c7

    :cond_7c5
    const/4 v7, 0x0

    goto :goto_7c8

    :cond_7c7
    :goto_7c7
    const/4 v7, 0x1

    :goto_7c8
    if-eqz v7, :cond_7cd

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setChangeStartOutsets(Landroid/graphics/Rect;)V

    :cond_7cd
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->hasChangeStartOutsets()Z

    move-result v6

    if-nez v6, :cond_7d9

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->hasChangeEndOutsets()Z

    move-result v6

    if-eqz v6, :cond_805

    :cond_7d9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateChangeOutsetsIfNeeded: s="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getChangeStartOutsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getChangeEndOutsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", wc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChangeTransitionController"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_805
    :goto_805
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v6, :cond_821

    if-eqz v5, :cond_821

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_821

    new-instance v6, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_821

    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setEnteringPinnedMode(Z)V

    :cond_821
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v6, :cond_8aa

    iget-object v6, v13, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    iget-object v6, v6, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v8, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_83b

    :cond_838
    :goto_838
    const/4 v15, 0x0

    goto/16 :goto_8a3

    :cond_83b
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_84e

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-nez v8, :cond_84e

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-nez v8, :cond_84e

    goto :goto_838

    :cond_84e
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v10, 0x6

    if-ne v8, v10, :cond_856

    goto :goto_838

    :cond_856
    if-eqz v4, :cond_86e

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_865

    const/high16 v9, 0x3f800000  # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_865

    goto :goto_838

    :cond_865
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v8}, Lcom/android/internal/policy/TransitionAnimation;->isDefaultPackageAnimRes(I)Z

    move-result v8

    if-nez v8, :cond_86e

    goto :goto_838

    :cond_86e
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v8, :cond_877

    goto :goto_838

    :cond_877
    const/4 v10, 0x1

    if-eq v0, v10, :cond_887

    const/4 v8, 0x2

    if-eq v0, v8, :cond_884

    const/4 v10, 0x3

    if-eq v0, v10, :cond_887

    const/4 v8, 0x4

    if-eq v0, v8, :cond_884

    goto :goto_838

    :cond_884
    if-nez v7, :cond_838

    goto :goto_889

    :cond_887
    if-eqz v7, :cond_838

    :goto_889
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v7

    if-nez v7, :cond_838

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v7

    if-nez v7, :cond_896

    goto :goto_838

    :cond_896
    new-instance v7, Lcom/android/server/wm/DimAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_8a2

    goto :goto_838

    :cond_8a2
    const/4 v15, 0x1

    :goto_8a3
    if-eqz v15, :cond_8aa

    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo$Change;->setTransitionWithDim(Z)V

    goto :goto_8ab

    :cond_8aa
    const/4 v10, 0x1

    :goto_8ab
    iget v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    if-eqz v6, :cond_8b1

    move v15, v10

    goto :goto_8b2

    :cond_8b1
    const/4 v15, 0x0

    :goto_8b2
    if-eqz v15, :cond_8d9

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    iget v7, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    invoke-virtual {v14, v7}, Landroid/window/TransitionInfo$Change;->setForceHidingTransit(I)V

    if-eqz v6, :cond_8d9

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v7

    if-nez v7, :cond_8d9

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v7, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_8d9
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v6, :cond_8e7

    iget v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setMinimizeAnimState(I)V

    iget-object v6, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->setMinimizePoint(Landroid/graphics/PointF;)V

    :cond_8e7
    if-eqz v1, :cond_8f8

    iget-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    if-eqz v6, :cond_8f8

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->setFadeInOutRotationNeeded()V

    const-string/jumbo v6, "transition_info_created"

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v11}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    goto :goto_8f9

    :cond_8f8
    const/4 v11, 0x0

    :goto_8f9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v1, :cond_910

    if-eqz v5, :cond_910

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_910

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v1

    if-eqz v1, :cond_910

    iget v1, v5, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setFreeformStashScale(F)V

    :cond_910
    iget-object v1, v13, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    iget-object v6, v13, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v1, v6}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldSkipAppTransition(I)Z

    move-result v1

    if-eqz v1, :cond_929

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {v3, v1}, Landroid/window/TransitionInfo;->setFlags(I)V

    :cond_929
    if-eqz v5, :cond_95a

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_95a

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_95a

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_95a

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v1

    if-eqz v1, :cond_95a

    iget-boolean v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v1, :cond_95a

    iget v1, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    if-eq v1, v6, :cond_95a

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    :cond_95a
    invoke-virtual {v3, v14}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    add-int/lit8 v1, v25, 0x1

    move v11, v1

    move v6, v10

    move-object/from16 v7, v22

    move/from16 v9, v23

    move-object/from16 v8, v24

    const/4 v5, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_43

    :cond_96c
    :goto_96c
    return-object v3
.end method

.method public static calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1cd

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v1}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_1c9

    :cond_1d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v2

    if-eqz v2, :cond_29

    goto/16 :goto_1c9

    :cond_29
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_31

    goto/16 :goto_1c9

    :cond_31
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v4

    if-ltz v4, :cond_3b

    goto/16 :goto_1c9

    :cond_3b
    invoke-static {v1}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    :goto_49
    const/4 v12, 0x2

    if-ltz v6, :cond_b9

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v14, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v14}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v15

    if-nez v15, :cond_b6

    invoke-static {v14}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v15

    if-ne v15, v4, :cond_b6

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v15, :cond_6b

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v15

    if-eqz v15, :cond_6b

    goto :goto_b6

    :cond_6b
    iget-object v15, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v15, :cond_93

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v16

    if-eqz v16, :cond_93

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v16

    if-eqz v16, :cond_93

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v15, :cond_93

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v11

    if-ne v6, v9, :cond_93

    invoke-virtual {v13, v14}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v9

    if-eq v9, v12, :cond_91

    const/4 v12, 0x4

    if-ne v9, v12, :cond_93

    :cond_91
    move-object v5, v15

    goto :goto_b6

    :cond_93
    :goto_93
    invoke-virtual {v14, v5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-nez v9, :cond_9e

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    goto :goto_93

    :cond_9e
    iget-object v9, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    if-eqz v9, :cond_b6

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v12

    if-nez v12, :cond_a9

    goto :goto_b6

    :cond_a9
    :goto_a9
    if-eq v9, v5, :cond_b6

    invoke-virtual {v9, v5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    if-nez v12, :cond_b6

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    goto :goto_a9

    :cond_b6
    :goto_b6
    add-int/lit8 v6, v6, -0x1

    goto :goto_49

    :cond_b9
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_dd

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Did not find common ancestor! Ancestor= "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "Transition"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    goto :goto_e9

    :cond_dd
    move-object v4, v1

    :goto_de
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eq v6, v5, :cond_e9

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    goto :goto_de

    :cond_e9
    :goto_e9
    if-ne v1, v4, :cond_f9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v1, v12, :cond_f9

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    :cond_f9
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Transition Root: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string/jumbo v6, "Transition.calculateTransitionRoots"

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    invoke-static {v2, v8}, Lcom/android/server/wm/Transition;->assignLayers(Lcom/android/server/wm/DisplayArea;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_18d

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_18d

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_18d

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v9

    if-le v2, v9, :cond_18d

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eqz v9, :cond_18d

    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v9, v13, :cond_18d

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    if-ne v13, v6, :cond_18d

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_165

    goto :goto_18d

    :cond_165
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v11

    const/4 v13, 0x0

    :goto_16b
    if-ltz v6, :cond_188

    invoke-virtual {v9, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result v15

    if-eqz v15, :cond_185

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    if-eqz v15, :cond_185

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-nez v14, :cond_185

    add-int/lit8 v13, v13, 0x1

    :cond_185
    add-int/lit8 v6, v6, -0x1

    goto :goto_16b

    :cond_188
    if-lt v13, v12, :cond_18d

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_18d
    :goto_18d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v2, :cond_1b8

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v4

    move v4, v5

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_1af

    move v6, v2

    move-object v2, v1

    move v1, v3

    move v3, v6

    move v6, v11

    goto :goto_1b4

    :cond_1af
    move v6, v2

    move-object v2, v1

    move v1, v3

    move v3, v6

    const/4 v6, 0x0

    :goto_1b4
    invoke-virtual/range {v0 .. v6}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V

    goto :goto_1c9

    :cond_1b8
    move-object v2, v1

    move v1, v3

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;II)V

    :goto_1c9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    :cond_1cd
    return-void
.end method

.method public static containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_16

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-ne v2, p0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_36

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_26
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_33

    goto :goto_3c

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_36
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    :goto_3c
    const/4 p0, 0x0

    return-object p0

    :cond_3e
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p1, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_4a

    return-object p0

    :cond_4a
    new-instance p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p1, p0}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_57

    return-object p0

    :cond_57
    new-instance p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p1, p0}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    move-object v1, p0

    check-cast v1, Lcom/android/server/wm/Transition$Token;

    iget-object v1, v1, Lcom/android/server/wm/Transition$Token;->mTransition:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid transition token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "Transition"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_4

    :cond_17
    return-object p0
.end method

.method public static getDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public static getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_20

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_22

    :cond_20
    iget-object p1, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    :goto_22
    if-eqz p1, :cond_25

    return-object p1

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :goto_23
    if-eqz v2, :cond_2c

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-object v2

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V
    .registers 11

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_63

    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_58

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_63

    :cond_58
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_63
    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result p0

    if-eqz p0, :cond_7e

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p0

    if-eqz p0, :cond_7e

    const/4 p0, -0x1

    invoke-virtual {v2, v3, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_7e
    return-void
.end method

.method public static sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1c

    :cond_13
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1c

    :try_start_19
    invoke-interface {v0, p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public final abort()V
    .registers 12

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    goto/16 :goto_188

    :cond_8
    const/4 v3, -0x1

    const-string v4, "Aborting Transition: "

    const-string/jumbo v5, "WindowManager"

    if-ne v1, v3, :cond_34

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in STATE_PENDING called from"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    return-void

    :cond_34
    if-eqz v1, :cond_50

    if-ne v1, v0, :cond_39

    goto :goto_50

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Too late to abort. state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    :goto_50
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " called from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_7c
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_97

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x1114a0668f863630L

    invoke-static {v1, v5, v6, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_97
    :goto_97
    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-wide v1, v4, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/PerfettoTransitionTracer;

    invoke-virtual {v2}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v5

    if-nez v5, :cond_ac

    goto :goto_c1

    :cond_ac
    const-string/jumbo v5, "logAbortedTransition"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b4
    iget-object v2, v2, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v5, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, p0}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_189

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :goto_c1
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    iget-object v5, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v2

    sget-object v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    invoke-virtual {v5, v2}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move v6, v5

    :goto_d5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_101

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v8, v5

    :goto_e4
    iget-object v9, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_ff

    iget-object v9, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget v10, v9, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    if-eq v10, v3, :cond_fa

    if-ne v10, v7, :cond_fd

    :cond_fa
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    :cond_fd
    add-int/2addr v8, v0

    goto :goto_e4

    :cond_ff
    add-int/2addr v6, v0

    goto :goto_d5

    :cond_101
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_16f

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const-string v7, "ChangeTransitionController"

    if-eqz v6, :cond_146

    iget-object v6, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_141

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onTransitionAborted: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", changingPipTasks="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iput-boolean v5, v6, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    :cond_141
    iget-object v6, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    :cond_146
    iget v6, v2, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    if-eq v6, v3, :cond_16f

    iget v8, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ne v8, v6, :cond_16f

    const-string/jumbo v6, "resumeRotation by ai key"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_16d

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v6, v5, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v6, :cond_165

    goto :goto_16d

    :cond_165
    sub-int/2addr v6, v0

    iput v6, v5, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-nez v6, :cond_16d

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_16d
    :goto_16d
    iput v3, v2, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    :cond_16f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_188

    iget-object v0, v4, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    if-nez v0, :cond_178

    goto :goto_188

    :cond_178
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v0

    if-eqz v0, :cond_188

    :try_start_17e
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    invoke-interface {v0, p0}, Landroid/window/ITransitionPlayer;->transitionAborted(Landroid/os/IBinder;)V
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_17e .. :try_end_183} :catch_184

    return-void

    :catch_184
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_188
    :goto_188
    return-void

    :catchall_189
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final addFlag(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return-void
.end method

.method public final addToTopChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method

.method public allReady()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result p0

    return p0
.end method

.method public final applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_7a

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_77

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_77

    :cond_28
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->remove()V

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v2, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    move v2, v1

    goto :goto_77

    :cond_54
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget-boolean v5, v5, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    if-nez v5, :cond_61

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_61
    if-nez v4, :cond_64

    goto :goto_77

    :cond_64
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-eqz v4, :cond_77

    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_77
    :goto_77
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_7a
    return v2
.end method

.method public final applyReady()V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    goto :goto_70

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x36b50dd81b48ce0fL  # -1.2018282467695568E45

    const/4 v6, 0x7

    invoke-static {v1, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    move-result v1

    if-eqz v1, :cond_70

    if-eqz v2, :cond_70

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_4b
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_63
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->tryStartCollectFromQueue()V

    :cond_70
    :goto_70
    return-void
.end method

.method public final buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;[Lcom/android/server/wm/DisplayContent;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_c4

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-nez v5, :cond_1e

    goto/16 :goto_c0

    :cond_1e
    invoke-static {v4, v2}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    goto :goto_35

    :cond_2d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    :goto_35
    invoke-virtual {p1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_4d

    move v6, v1

    goto :goto_4e

    :cond_4d
    move v6, v3

    :goto_4e
    if-eqz v5, :cond_58

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_58

    move v7, v1

    goto :goto_59

    :cond_58
    move v7, v3

    :goto_59
    if-eqz v5, :cond_62

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v8

    if-eqz v8, :cond_62

    move v3, v1

    :cond_62
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_69

    if-nez v7, :cond_7c

    :cond_69
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    if-eqz v7, :cond_6f

    if-nez v3, :cond_7c

    :cond_6f
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v3, :cond_76

    if-eqz v6, :cond_76

    goto :goto_7c

    :cond_76
    invoke-virtual {p1, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_7c
    :goto_7c
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v3, :cond_89

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v3

    if-eqz v3, :cond_89

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_89
    if-eqz v6, :cond_95

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-virtual {p1, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_9a

    :cond_95
    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_9a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_c0

    :cond_ae
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v3

    if-eqz v3, :cond_bd

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    if-eqz v3, :cond_bd

    goto :goto_c0

    :cond_bd
    invoke-static {p1, v4, v2}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    :cond_c0
    :goto_c0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_c4
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-eqz p0, :cond_10d

    check-cast p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    move v0, v3

    :goto_cb
    iget-object v4, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_10d

    iget-object v4, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->this$0:Lcom/android/server/wm/Transition;

    iget-object v5, v4, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v6, :cond_104

    iget-object v4, v4, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_104

    invoke-virtual {p1, v4, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_104
    if-nez v5, :cond_107

    goto :goto_10a

    :cond_107
    invoke-virtual {p1, v5, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_10a
    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    :cond_10d
    array-length p0, p3

    sub-int/2addr p0, v1

    :goto_10f
    if-ltz p0, :cond_119

    aget-object v0, p3, p0

    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->assignLayers(Lcom/android/server/wm/DisplayArea;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_10f

    :cond_119
    :goto_119
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p0

    if-ge v3, p0, :cond_12d

    invoke-virtual {p2, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    :cond_12d
    return-void
.end method

.method public final calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    goto :goto_5e

    :cond_1e
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_5e

    :cond_2b
    const-string/jumbo v3, "android.activity.transientLaunch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5b

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x3c17b5315c113ee3L  # 3.213003921393264E-19

    invoke-static {v2, v5, v6, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_5b

    :cond_4b
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5b

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x257a196ac496c4d7L  # -1.1860048369741397E128

    invoke-static {v2, v5, v6, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5b
    :goto_5b
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_61
    return-void
.end method

.method public final cleanUpInternal()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_57

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    :cond_1a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_3d

    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3b
    iput-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    :cond_3d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v3, :cond_49

    iput v0, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    iget-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_49
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/Task;->setBoostTaskLayerForFreeform(ZZ)V

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_60
    return-void
.end method

.method public final cleanUpOnFailure()V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    return-void
.end method

.method public final collect(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 10

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_1a3

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1a2

    :cond_c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_35

    invoke-static {p1}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "don\'t collect wallpaper of other display. caller="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xa

    const-string/jumbo p2, "Transition"

    invoke-static {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_82

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x3fd3e6b4fe643fefL  # 0.31095623820237867

    invoke-static {v6, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_82

    :cond_65
    aget-boolean v0, v1, v2

    if-eqz v0, :cond_82

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x40d82296fef9ccbfL  # -1.8207461154098363E-4

    invoke-static {v5, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_82
    :goto_82
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    :goto_86
    if-eqz v0, :cond_d5

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    new-instance v3, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v3, v0}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v3, v0, Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget-object v4, v3, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    goto :goto_b3

    :cond_ac
    iget-object v3, v3, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b3
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_d0

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0xea0e7710d73332L

    invoke-static {v6, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d0
    invoke-static {v0}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_86

    :cond_d5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    if-nez p2, :cond_e1

    goto/16 :goto_1a2

    :cond_e1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p2

    if-nez p2, :cond_ee

    iget-object p2, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_ee
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object p2

    if-eqz p2, :cond_fe

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz p2, :cond_fe

    goto/16 :goto_1a2

    :cond_fe
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p2, :cond_157

    new-instance p2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {p2, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    iget-object v0, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_119

    goto :goto_12e

    :cond_119
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_12e

    iget v1, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    iput v1, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_12e
    :goto_12e
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    if-eqz v1, :cond_152

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction;->isActivateDeskType()Z

    move-result v1

    if-eqz v1, :cond_152

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_141

    goto :goto_152

    :cond_141
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_152

    iget v0, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_152
    :goto_152
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_157
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    iget-boolean p2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-eqz p2, :cond_1a2

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    if-eqz v1, :cond_175

    goto :goto_176

    :cond_175
    move v2, v3

    :goto_176
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_189

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v2, :cond_186

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_189

    :cond_186
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_189
    :goto_189
    iget-object p2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object p2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_1a2

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz p1, :cond_19d

    iget-object p1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_19d
    iget-object p1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_1a2
    :goto_1a2
    return-void

    :cond_1a3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Transition hasn\'t started collecting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final collectClose(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 7

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    return-void

    :cond_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0xf484ddf43bd3ccbL  # 4.777431964610698E-235

    invoke-static {v4, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    return-void
.end method

.method public collectOrderChanges(Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_120

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_28
    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v0

    :goto_2b
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    if-eq v2, v4, :cond_33

    move v2, v3

    goto :goto_34

    :cond_33
    move v2, v0

    :goto_34
    or-int/2addr v1, v2

    if-nez v1, :cond_3b

    if-nez p1, :cond_3b

    goto/16 :goto_120

    :cond_3b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    :goto_4a
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_120

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    invoke-static {v4, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, v1, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v7, 0x0

    :goto_75
    if-ltz v6, :cond_100

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v9

    if-eq v9, v4, :cond_85

    goto/16 :goto_fc

    :cond_85
    if-nez v5, :cond_db

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v9, :cond_fc

    new-instance v9, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/Transition;)V

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_fc

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fc

    if-eqz v8, :cond_fc

    invoke-virtual {v8, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v9

    if-nez v9, :cond_fc

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-eqz v9, :cond_fc

    invoke-virtual {p0, v8}, Lcom/android/server/wm/Transition;->addToTopChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_fc

    :cond_bd
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v9, :cond_ce

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v9

    if-eqz v9, :cond_ce

    iget v9, p0, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_ce

    goto :goto_fc

    :cond_ce
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v9, :cond_e2

    if-eqz v7, :cond_e2

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-ne v9, v8, :cond_e2

    goto :goto_fc

    :cond_db
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e2

    goto :goto_fc

    :cond_e2
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Transition;->addToTopChange(Lcom/android/server/wm/WindowContainer;)V

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v9, :cond_fc

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_fc

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    if-eqz v9, :cond_fc

    move-object v7, v8

    :cond_fc
    :goto_fc
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_75

    :cond_100
    iget-object v6, v1, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v5, :cond_109

    move-object p1, v5

    goto :goto_10e

    :cond_109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_10e
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    if-eq v5, v2, :cond_11c

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v4, v5, :cond_11c

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Transition;->addToTopChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_11c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4a

    :cond_120
    :goto_120
    return-void
.end method

.method public final collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    goto/16 :goto_77d

    :cond_13
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_77d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_77d

    :cond_1f
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v2, :cond_777

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->state:I

    if-ne v2, v3, :cond_31

    goto/16 :goto_777

    :cond_31
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_45

    iget-object v2, v2, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_45

    goto/16 :goto_77d

    :cond_45
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-nez v2, :cond_50

    new-instance v2, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    invoke-direct {v2, v0}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object v2, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    :cond_50
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v2, :cond_64

    iget-boolean v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v4, :cond_64

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_72

    :cond_64
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_77d

    if-eqz v2, :cond_77d

    iget-boolean v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v4, :cond_776

    iget v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-eqz v4, :cond_776

    :cond_72
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    const/16 v5, 0xe

    const/16 v6, 0x8

    const/4 v7, 0x5

    if-eqz v4, :cond_94

    iget v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v4, v7, :cond_94

    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->DW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v8, :cond_91

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-static {v6, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    goto :goto_94

    :cond_91
    invoke-static {v5, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    :cond_94
    :goto_94
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    check-cast v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    iget-object v8, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->this$0:Lcom/android/server/wm/Transition;

    if-nez v4, :cond_bb

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_77d

    iget-object v4, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v9, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v9, :cond_ba

    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-eqz v4, :cond_ba

    goto :goto_bb

    :cond_ba
    return-void

    :cond_bb
    :goto_bb
    move-object v4, v1

    :goto_bc
    if-eqz v4, :cond_ec

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v9, :cond_dd

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-eqz v9, :cond_dd

    iget-object v9, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    iget-object v9, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-eqz v9, :cond_dd

    goto :goto_e7

    :cond_dd
    iget-object v9, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e7

    goto/16 :goto_77d

    :cond_e7
    :goto_e7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    goto :goto_bc

    :cond_ec
    iget-boolean v4, v8, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    if-eqz v4, :cond_110

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-nez v4, :cond_f8

    const/4 v4, 0x0

    goto :goto_100

    :cond_f8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_100
    if-eqz v4, :cond_110

    if-eq v4, v1, :cond_10a

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_110

    :cond_10a
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_110
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    const/4 v10, 0x0

    if-eqz v4, :cond_142

    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v11, v11, v3

    if-eqz v11, :cond_166

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x5454134e615f3202L  # 1.7152330249604954E98

    filled-new-array {v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v14, v5, v6, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_166

    :cond_142
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_166

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, 0x2577fbd80a463065L  # 3.4600248722999966E-128

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v12, v13, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_166
    :goto_166
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BLACK_SNAPSHOT:Z

    const/16 v6, 0x1e

    const-string/jumbo v11, "Transition.ScreenshotSync"

    const v12, 0x3a83126f  # 0.001f

    const v13, 0x7fffffff

    if-eqz v5, :cond_225

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_225

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v14, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v15, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v15, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v9, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v14, v14

    int-to-float v9, v9

    div-float/2addr v14, v9

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v9, v9

    int-to-float v5, v5

    div-float/2addr v9, v5

    sub-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v12

    if-lez v5, :cond_225

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v4, "BlackSnapshotLayer_WmCore"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto/16 :goto_759

    :cond_225
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-eqz v9, :cond_23f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v9

    if-eqz v9, :cond_23f

    move v9, v3

    goto :goto_240

    :cond_23f
    move v9, v10

    :goto_240
    new-instance v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v14, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v14

    check-cast v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v14, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v14

    check-cast v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v14, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v14

    check-cast v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v14, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v14

    check-cast v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v14

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    const-string v13, ", freezeBounds="

    const-string v12, "ChangeTransitionController"

    if-eqz v15, :cond_3f4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    if-eqz v10, :cond_2ba

    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v10, :cond_2ba

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-direct {v7, v10, v6, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;I)V

    invoke-virtual {v10, v7, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2ad

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v6, v4

    goto :goto_2ae

    :cond_2ad
    const/4 v6, 0x0

    :goto_2ae
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    :goto_2b4
    move/from16 v21, v9

    move/from16 v22, v15

    goto/16 :goto_3e4

    :cond_2ba
    move/from16 v18, v4

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_3e0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v8, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v10, :cond_2dc

    move-object/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v15

    goto/16 :goto_36d

    :cond_2dc
    move-object/from16 v20, v7

    if-eqz v3, :cond_31a

    new-instance v7, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;

    move/from16 v21, v9

    const/4 v9, 0x3

    invoke-direct {v7, v9}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_31c

    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31c

    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v22, v15

    const-string/jumbo v15, "collectExcludeAppWindowFromSnapshot: #"

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exclude="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31e

    :cond_31a
    move/from16 v21, v9

    :cond_31c
    move/from16 v22, v15

    :goto_31e
    iget-boolean v3, v10, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_366

    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean v3, v3, Lcom/android/server/wm/MultiTaskingController;->mIsTaskbarAutoHideStyle:Z

    if-eqz v3, :cond_366

    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    iget-object v3, v3, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_366

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-nez v7, :cond_33b

    goto :goto_366

    :cond_33b
    new-instance v7, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    invoke-direct {v7, v9, v3}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_366

    iget-object v7, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_366

    iget-object v7, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "collectExcludeSystemWindowFromSnapshot: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_366
    :goto_366
    iget-object v3, v6, Lcom/android/server/wm/ChangeTransitionController;->mNeedExcludeLayerFromSnapshot:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_36d

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36d
    :goto_36d
    new-instance v3, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [Landroid/view/SurfaceControl;

    iget-object v3, v8, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v3, v3, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    if-nez v3, :cond_385

    goto :goto_3dd

    :cond_385
    iget-object v3, v3, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v3, :cond_3dd

    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_3a1

    iget v9, v4, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_3a1

    iget v9, v4, Landroid/graphics/Rect;->right:I

    if-gtz v9, :cond_3a1

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    if-lez v9, :cond_3dd

    :cond_3a1
    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v7

    iput v9, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    iput v7, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v9

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "adjustFreezeBoundsIfNeeded: wc="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", outset="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3dd
    :goto_3dd
    move-object/from16 v7, v20

    goto :goto_3e4

    :cond_3e0
    move-object/from16 v20, v7

    goto/16 :goto_2b4

    :goto_3e4
    new-instance v3, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v3, v7, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$CaptureArgs;)V

    invoke-virtual {v3, v6}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v14

    goto :goto_3fa

    :cond_3f4
    move/from16 v18, v4

    move/from16 v21, v9

    move/from16 v22, v15

    :goto_3fa
    invoke-static {v14}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v3

    if-nez v3, :cond_402

    const/4 v4, 0x0

    goto :goto_406

    :cond_402
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    :goto_406
    if-eqz v4, :cond_762

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_762

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    if-gt v6, v7, :cond_417

    goto/16 :goto_762

    :cond_417
    const-string v6, ""

    if-eqz v21, :cond_42a

    if-eqz v18, :cond_421

    const-string/jumbo v7, "_WmCore"

    goto :goto_422

    :cond_421
    move-object v7, v6

    :goto_422
    const-string/jumbo v9, "RotationLayer"

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_439

    :cond_42a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "transition snapshot: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_439
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    iget-object v10, v9, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    iget-boolean v10, v10, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    if-eqz v10, :cond_45b

    iget-object v9, v9, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;

    invoke-direct {v15, v9, v3, v10}, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotFileController;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    :cond_45b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v9, v9, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget v10, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq v10, v9, :cond_4af

    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v4, v9, v10}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F

    move-result v9

    iput v9, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    :cond_4af
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v9, v7, v3}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    invoke-virtual {v9, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v22, :cond_539

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v3, :cond_506

    iget-object v3, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v10, :cond_4db

    iget v10, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-eqz v10, :cond_4db

    iget v10, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_4db

    goto :goto_504

    :cond_4db
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_506

    if-nez v10, :cond_4ea

    goto :goto_506

    :cond_4ea
    iget-object v14, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v14}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v14

    if-eqz v14, :cond_506

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_506

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-ne v10, v11, :cond_506

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_506

    :goto_504
    const/4 v3, 0x0

    goto :goto_536

    :cond_506
    :goto_506
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v3, :cond_521

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_516

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_51a

    :cond_516
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_51a
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_521

    goto :goto_504

    :cond_521
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v3, :cond_532

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_532

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v3

    if-eqz v3, :cond_532

    goto :goto_504

    :cond_532
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v3

    :goto_536
    invoke-virtual {v9, v7, v3}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_539
    const/16 v3, 0x1e

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v3, :cond_713

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v10, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v8, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    if-eqz v10, :cond_713

    if-eqz v11, :cond_713

    if-eqz v2, :cond_713

    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-eqz v10, :cond_713

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    iget-object v14, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v10, :cond_57d

    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v15, 0x5

    if-eq v10, v15, :cond_576

    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitFlags:I

    const/16 v19, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_57f

    goto :goto_578

    :cond_576
    const/16 v19, 0x1

    :goto_578
    iget-object v10, v11, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    :goto_57a
    move/from16 v17, v3

    goto :goto_5ba

    :cond_57d
    const/16 v19, 0x1

    :cond_57f
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v10, :cond_593

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_593

    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    const/4 v15, 0x6

    if-ne v10, v15, :cond_593

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    goto :goto_57a

    :cond_593
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v15, :cond_5b6

    if-eqz v10, :cond_5b6

    iget-object v15, v10, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    move/from16 v17, v3

    iget-object v3, v15, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    if-eqz v3, :cond_5b8

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v18

    if-eqz v18, :cond_5b8

    iget-object v15, v15, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    if-ne v15, v10, :cond_5b8

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    goto :goto_5ba

    :cond_5b6
    move/from16 v17, v3

    :cond_5b8
    iget-object v10, v11, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    :goto_5ba
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "Change Leash: "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v11

    if-ne v10, v11, :cond_5e5

    move/from16 v11, v19

    goto :goto_5e6

    :cond_5e5
    const/4 v11, 0x0

    :goto_5e6
    if-eqz v11, :cond_5ea

    const/4 v15, 0x0

    goto :goto_5ec

    :cond_5ea
    iget v15, v5, Landroid/graphics/Rect;->left:I

    :goto_5ec
    if-eqz v11, :cond_5f2

    const/4 v11, 0x0

    :goto_5ef
    move-object/from16 v18, v4

    goto :goto_5f5

    :cond_5f2
    iget v11, v5, Landroid/graphics/Rect;->top:I

    goto :goto_5ef

    :goto_5f5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    move-object/from16 v20, v14

    if-nez v4, :cond_601

    const/4 v4, 0x0

    const/16 v21, 0x0

    goto :goto_656

    :cond_601
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v21

    if-eqz v21, :cond_61d

    const/16 v21, 0x0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v14, v14, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v14, :cond_61f

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v14, 0x1a

    invoke-static {v14, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    :goto_61b
    int-to-float v4, v4

    goto :goto_656

    :cond_61d
    const/16 v21, 0x0

    :cond_61f
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v14

    if-eqz v14, :cond_634

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    if-eqz v14, :cond_634

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v14, 0xc

    invoke-static {v14, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    goto :goto_61b

    :cond_634
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v14

    if-eqz v14, :cond_654

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->DW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v14, :cond_64d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v14

    if-eqz v14, :cond_64d

    const/16 v14, 0x8

    invoke-static {v14, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    goto :goto_61b

    :cond_64d
    const/16 v14, 0xe

    invoke-static {v14, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    goto :goto_61b

    :cond_654
    move/from16 v4, v21

    :goto_656
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v14

    if-eqz v14, :cond_66a

    iget-object v14, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 p0, v6

    const/16 v6, 0x14

    invoke-static {v6, v14}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    int-to-float v6, v6

    goto :goto_66e

    :cond_66a
    move-object/from16 p0, v6

    move/from16 v6, v21

    :goto_66e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v14

    invoke-virtual {v9, v3, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    int-to-float v14, v15

    int-to-float v11, v11

    invoke-virtual {v9, v3, v14, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-direct {v11, v0, v0, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v3, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    cmpl-float v0, v4, v21

    if-lez v0, :cond_694

    invoke-virtual {v9, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_694
    cmpl-float v0, v6, v21

    if-lez v0, :cond_69b

    invoke-virtual {v9, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_69b
    invoke-virtual {v9, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6ae

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6ae

    iget v0, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v15, 0x5

    if-ne v0, v15, :cond_6ae

    goto :goto_6b0

    :cond_6ae
    const/16 v19, 0x0

    :goto_6b0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v9, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move/from16 v4, v21

    invoke-virtual {v9, v0, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-eqz v19, :cond_6cb

    const v4, 0x3a83126f  # 0.001f

    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_6cb
    iget-object v0, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const v4, 0x7fffffff

    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iput-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createChangeTransitionLeashIfNeeded: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Z="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", anchorLayer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_70a

    const-string v2, ", c=hidden"

    goto :goto_70c

    :cond_70a
    move-object/from16 v2, p0

    :goto_70c
    invoke-static {v0, v2, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_70f
    const v4, 0x7fffffff

    goto :goto_71c

    :cond_713
    move-object/from16 v16, v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 p0, v6

    goto :goto_70f

    :goto_71c
    invoke-virtual {v9, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/HardwareBuffer;->close()V

    if-eqz v17, :cond_758

    iget-object v0, v8, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSnapshotSurfaceCreated: wc="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cropBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", changeInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_758
    move-object v2, v7

    :goto_759
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_762
    :goto_762
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to capture screenshot for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_776
    return-void

    :cond_777
    :goto_777
    iget v1, v0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lcom/android/server/wm/Transition;->mFlags:I

    :cond_77d
    :goto_77d
    return-void
.end method

.method public final didCommitTransientLaunch()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_22
    return v1
.end method

.method public getFinishTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public getStartTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public final hasTransientLaunch()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final invokeTransitionEndedListeners()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public final isCollecting()Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    return v0
.end method

.method public final isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    if-eq p1, v3, :cond_22

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_22
    :goto_22
    return v2

    :cond_23
    return v1
.end method

.method public final isInTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    :goto_0
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransientVisible(Lcom/android/server/wm/Task;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto/16 :goto_a6

    :cond_7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v3, v1

    :goto_e
    if-ltz v2, :cond_a4

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_20

    goto/16 :goto_a0

    :cond_20
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-ne v6, v4, :cond_2e

    goto/16 :goto_a0

    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_34
    if-ltz v6, :cond_a0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-ne v8, v4, :cond_3d

    goto :goto_a0

    :cond_3d
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v9

    if-nez v9, :cond_9d

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v9, v9, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueContainerHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    invoke-virtual {v9, v8, v7}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    if-eqz v6, :cond_9a

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_9a

    if-eqz v5, :cond_9a

    const-string/jumbo v6, "startActivityUnchecked"

    invoke-virtual {v5, v6, v1, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v6

    if-eqz v6, :cond_9a

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v5, :cond_9a

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_9a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "PipTask isTransientVisible: Allow for auto-pip: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Transition"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_9d
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_e

    :cond_a4
    if-ne v3, v0, :cond_a7

    :goto_a6
    return v1

    :cond_a7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public final legacyRestoreNavigationBarFromApp()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    if-nez v1, :cond_7

    goto :goto_30

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    iget v2, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    const-string/jumbo v2, "Transition"

    const-string/jumbo v3, "Restore parent surface of navigation bar by another transition"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :cond_19
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wm/Transition;->sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v2, :cond_31

    :goto_30
    return-void

    :cond_31
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move v5, v1

    :goto_43
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6a

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_67

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v7

    if-nez v7, :cond_62

    goto :goto_67

    :cond_62
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    goto :goto_6a

    :cond_67
    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_6a
    :goto_6a
    if-eqz v1, :cond_98

    new-instance p0, Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-direct {p0, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;)V

    if-nez v1, :cond_80

    invoke-virtual {v2}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->run()V

    goto :goto_a1

    :cond_80
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v3, v1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_95

    iget p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_95

    goto :goto_a1

    :cond_95
    iput-object v2, v1, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;

    goto :goto_a1

    :cond_98
    iget-object p0, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_a1
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public final onReadyTimeout()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " readiness timeout, used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget-boolean v3, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " deferReadyDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " group="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Transition"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-ne p0, v0, :cond_4e

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)Z

    :cond_4e
    return-void
.end method

.method public final onReadyTraceEnd(ILjava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x20

    const-string/jumbo p0, "Transition"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public final onReadyTraceStart(ILjava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x20

    const-string/jumbo p0, "Transition"

    invoke-static {v0, v1, p0, p2, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_6a

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-nez v0, :cond_19

    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    :cond_19
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_6a

    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    iput v1, p1, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_4e

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_6a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x7de1074a75c8c19bL

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_4e
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_6a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x25f1edc4196f3fa3L  # 6.621439290562198E-126

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final onTransactionCommitTimeout()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v0, :cond_6

    goto/16 :goto_84

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_84

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v3

    if-eqz v3, :cond_81

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_81

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v2, v3, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-eqz v2, :cond_2d

    goto :goto_81

    :cond_2d
    iget-object v2, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_34
    if-ltz v2, :cond_81

    iget-object v5, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AsyncRotationController$Operation;

    iput-boolean v1, v5, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    iget v6, v5, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    and-int/2addr v6, v1

    if-eqz v6, :cond_7e

    iget-object v6, v5, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_7e

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_7e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Transaction timeout. Clear transform for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AsyncRotation_WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v5, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_7e
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    :cond_81
    :goto_81
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_84
    :goto_84
    return-void
.end method

.method public final onTransactionCommitted()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/TransitionController$Logger;->mTransactionCommitTimeNs:J

    return-void
.end method

.method public final onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    const-string/jumbo v4, "Transition"

    if-eq v2, v3, :cond_1c

    const-string/jumbo v1, "Unexpected Sync ID "

    const-string v3, ". Expected "

    invoke-static {v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-static {v1, v0, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_1c
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_29
    const/4 v5, 0x0

    if-ltz v2, :cond_6f

    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_6c

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v7, :cond_3f

    goto :goto_6c

    :cond_3f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-virtual {v6, v3, v5, v3}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    move v8, v5

    :goto_50
    if-ltz v7, :cond_62

    iget-object v9, v6, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v9

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_50

    :cond_62
    if-eqz v8, :cond_67

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_67
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    :cond_6f
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->shouldWallpaperBeVisible()Z

    move-result v2

    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_7a
    if-ltz v6, :cond_bb

    iget-object v7, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v7

    if-eqz v7, :cond_b8

    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-nez v8, :cond_97

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_97
    if-eqz v2, :cond_b8

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_b8

    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_a6
    if-ltz v8, :cond_b8

    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_a6

    :cond_b8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    :cond_bb
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v2, :cond_e4

    move v2, v5

    :goto_c1
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_e2

    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    new-instance v8, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v7}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :cond_e2
    iput-object v6, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    :cond_e4
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f5

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    goto :goto_fd

    :cond_f5
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    :goto_fd
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    if-eqz v7, :cond_11f

    iget-object v7, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, v7, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v8

    if-eqz v8, :cond_118

    const-string/jumbo v7, "updateTaskbarTargetIfNeeded: defer to send callbackwhile on transient launch"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    :cond_118
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    :cond_11f
    :goto_11f
    iget v7, v0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v8, -0x1

    const/4 v9, 0x3

    const-string v10, ">"

    if-ne v7, v9, :cond_1cd

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eq v0, v4, :cond_144

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_13b

    iget-object v7, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_161

    :cond_13b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too late for abort."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_144
    iput-object v6, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_158

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition;

    iput-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    :cond_158
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v4, :cond_161

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    :cond_161
    :goto_161
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v4, :cond_184

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v4

    if-nez v4, :cond_184

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_184

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_184

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_184

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    :cond_184
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v3, :cond_1a2

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v3, :cond_1a2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AbortTransition_SyncId<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    :cond_1a2
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-eqz v3, :cond_1be

    :goto_1a6
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_1bc

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a6

    :cond_1bc
    iput-object v6, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    :cond_1be
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    iput v8, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    iput-object v6, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    return-void

    :cond_1cd
    if-eq v7, v3, :cond_1de

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Playing a Transition which hasn\'t started! #"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    const-string v12, " This will likely cause an exception in Shell"

    invoke-static {v11, v12, v4, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1de
    const/4 v7, 0x2

    iput v7, v0, Lcom/android/server/wm/Transition;->mState:I

    iput-object v1, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceControl$Transaction;

    iput-object v11, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v11, :cond_228

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v11, :cond_228

    iget-object v11, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "StartTransaction_SyncId<"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "FinishTransaction_SyncId<"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    :cond_228
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    const-string v11, "ChangeTransitionController"

    if-eqz v10, :cond_291

    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onTransactionReady: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v10, :cond_28f

    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v3

    :goto_250
    if-ltz v12, :cond_28f

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v14, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v15, :cond_28c

    iget v15, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/high16 v16, 0x10000

    and-int v15, v15, v16

    if-eqz v15, :cond_28c

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_28c

    iput-boolean v3, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "applyForceChangeIfNeeded: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28c
    add-int/lit8 v12, v12, -0x1

    goto :goto_250

    :cond_28f
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    :cond_291
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_29d

    iget v2, v0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lcom/android/server/wm/Transition;->mFlags:I

    :cond_29d
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Transition;->collectOrderChanges(Z)V

    iget-boolean v2, v0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    if-eqz v2, :cond_2dc

    move v2, v5

    :goto_2ad
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v2, v10, :cond_2dc

    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v12, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v12, :cond_2ce

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-nez v12, :cond_2ce

    goto :goto_2d9

    :cond_2ce
    iget-boolean v12, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v12, :cond_2d3

    goto :goto_2d9

    :cond_2d3
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v12

    iput-boolean v12, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    :goto_2d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ad

    :cond_2dc
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    iget v12, v0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2, v10, v12}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v10, v10, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v12, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v13, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean v14, v13, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-eqz v14, :cond_301

    iget-object v14, v13, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v14, v14, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    if-ne v14, v0, :cond_301

    invoke-virtual {v13, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_3e5

    :cond_301
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_309

    goto/16 :goto_3e5

    :cond_309
    iget-object v13, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean v13, v13, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez v13, :cond_311

    goto/16 :goto_3e5

    :cond_311
    invoke-virtual {v10}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v13

    if-nez v13, :cond_319

    goto/16 :goto_3e5

    :cond_319
    iget-object v13, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v13}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v13

    if-eqz v13, :cond_32b

    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string/jumbo v10, "targetDetached"

    invoke-virtual {v2, v10}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_32b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v3

    :goto_330
    if-ltz v13, :cond_370

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v14, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-nez v15, :cond_34d

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-nez v15, :cond_34d

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    if-nez v15, :cond_34d

    goto :goto_36c

    :cond_34d
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v15, v14}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v15

    const/4 v8, 0x6

    if-ne v15, v8, :cond_35b

    goto :goto_36c

    :cond_35b
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_367

    iget-object v8, v10, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36c

    :cond_367
    iget-object v8, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_36c
    add-int/lit8 v13, v13, -0x1

    const/4 v8, -0x1

    goto :goto_330

    :cond_370
    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v8, v10, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    move-result v13

    if-eqz v13, :cond_38a

    invoke-virtual {v2, v8, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    move-result v13

    if-nez v13, :cond_388

    invoke-virtual {v2, v8, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    move-result v2

    if-eqz v2, :cond_38a

    :cond_388
    move v2, v3

    goto :goto_38b

    :cond_38a
    move v2, v5

    :goto_38b
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_3b7

    iget-object v8, v10, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v13, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v8, v13, v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v13, -0x59411bcd8bffc571L

    const/16 v8, 0xc0

    invoke-static {v15, v13, v14, v8, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3b7
    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v8, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-eqz v8, :cond_3c5

    const-string v2, "CoreBackPreview"

    const-string v8, "Gesture animation is applied on another transition?"

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e5

    :cond_3c5
    iput-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_3db

    invoke-virtual {v12, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iput-object v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_3db
    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_3e5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v2, :cond_449

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v2, :cond_449

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v8, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v3

    :goto_3fd
    if-ltz v12, :cond_449

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v14, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v14, v7, :cond_40a

    goto :goto_444

    :cond_40a
    iget-object v14, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v15

    if-eqz v15, :cond_413

    goto :goto_444

    :cond_413
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_444

    iget-boolean v15, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v15, :cond_444

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v15

    if-nez v15, :cond_444

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    new-instance v9, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v9, v5, v15}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v9}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-le v5, v3, :cond_444

    new-instance v5, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {v9, v2, v14, v13}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/SnapshotController;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    invoke-virtual {v10, v5, v9}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    :cond_444
    :goto_444
    add-int/lit8 v12, v12, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x3

    goto :goto_3fd

    :cond_449
    iget v2, v0, Lcom/android/server/wm/Transition;->mType:I

    iget v5, v0, Lcom/android/server/wm/Transition;->mFlags:I

    iget-object v8, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v2, v5, v8, v1}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;

    move-result-object v2

    iget v5, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->setDebugId(I)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v5, :cond_463

    iget-boolean v5, v0, Lcom/android/server/wm/Transition;->mMergeAsNoAnimation:Z

    if-eqz v5, :cond_463

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->setMergeAsNoAnimation()V

    :cond_463
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_467
    iget-object v10, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4f9

    iget-object v10, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_479

    goto/16 :goto_4f5

    :cond_479
    iget-object v10, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition;

    iget v12, v10, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v12, v3, :cond_48b

    iget v13, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v13, v3, :cond_48b

    goto/16 :goto_4f5

    :cond_48b
    if-ne v12, v7, :cond_49b

    invoke-virtual {v10}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v12

    if-eqz v12, :cond_49b

    iget v12, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v12, v7, :cond_498

    goto :goto_4d8

    :cond_498
    move-object v12, v10

    move-object v10, v0

    goto :goto_4a6

    :cond_49b
    iget v12, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v12, v7, :cond_4d8

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v12

    if-eqz v12, :cond_4d8

    move-object v12, v0

    :goto_4a6
    const/4 v13, 0x0

    :goto_4a7
    iget-object v14, v10, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_4f5

    iget-object v14, v10, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v14, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-nez v15, :cond_4cc

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v17

    if-nez v17, :cond_4cc

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v14

    if-nez v14, :cond_4cc

    goto :goto_4d8

    :cond_4cc
    if-eqz v15, :cond_4d5

    invoke-virtual {v12, v15}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_4d5

    goto :goto_4d8

    :cond_4d5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4a7

    :cond_4d8
    :goto_4d8
    if-gez v8, :cond_4e5

    iget-object v8, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition;

    iget v8, v8, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    goto :goto_4f5

    :cond_4e5
    iget-object v10, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition;

    iget v10, v10, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    if-eq v8, v10, :cond_4f5

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    move v9, v3

    goto :goto_4fa

    :cond_4f5
    :goto_4f5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_467

    :cond_4f9
    const/4 v9, 0x0

    :goto_4fa
    if-eqz v9, :cond_4fd

    const/4 v8, 0x0

    :cond_4fd
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    if-gez v8, :cond_550

    iget v8, v5, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    if-lez v8, :cond_550

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    const/4 v14, 0x5

    if-eqz v13, :cond_52e

    aget-boolean v13, v12, v3

    if-eqz v13, :cond_550

    iget v13, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v6, v13

    move/from16 v18, v3

    move-object v13, v4

    int-to-long v3, v8

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x5ca0447c86b8c654L

    invoke-static {v15, v6, v7, v14, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_553

    :cond_52e
    move/from16 v18, v3

    move-object v13, v4

    aget-boolean v3, v10, v18

    if-eqz v3, :cond_553

    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v3

    int-to-long v6, v8

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x627f3fcbd5f1cfaeL  # -1.420325404709624E-166

    invoke-static {v15, v6, v7, v14, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_553

    :cond_550
    move/from16 v18, v3

    move-object v13, v4

    :cond_553
    :goto_553
    iput v8, v0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    invoke-virtual {v2, v8}, Landroid/window/TransitionInfo;->setTrack(I)V

    iget v3, v5, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v5, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    if-eqz v9, :cond_5a9

    move/from16 v4, v18

    if-le v3, v4, :cond_5a9

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v3

    const/high16 v5, 0x200000

    or-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo;->setFlags(I)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v3, :cond_590

    aget-boolean v3, v12, v4

    if-eqz v3, :cond_5a9

    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v5, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x7ae0338c9b1732cbL  # 7.528657044491364E283

    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_5a9

    :cond_590
    aget-boolean v3, v10, v4

    if-eqz v3, :cond_5a9

    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v5, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x6633d5a00ae6cf2cL

    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5a9
    :goto_5a9
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne v0, v4, :cond_5cf

    const/4 v15, 0x0

    iput-object v15, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5c5

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition;

    iput-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    :cond_5c5
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v4, :cond_5d7

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    goto :goto_5d7

    :cond_5cf
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b69

    :cond_5d7
    :goto_5d7
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Z)V

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/wm/DisplayContent;

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_5f4
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v5

    if-ge v4, v5, :cond_614

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f4

    :cond_614
    const/4 v4, 0x0

    :goto_615
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_67a

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v6

    if-eqz v6, :cond_645

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v5, :cond_677

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_677

    iget-object v5, v6, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_677

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_677

    :cond_645
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v5

    if-nez v5, :cond_64c

    goto :goto_677

    :cond_64c
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-eqz v6, :cond_670

    iget-object v6, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_677

    iget-object v7, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v5, :cond_677

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_677

    :cond_670
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_677
    :goto_677
    add-int/lit8 v4, v4, 0x1

    goto :goto_615

    :cond_67a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Transition;->overrideAnimationOptionsToInfoIfNecessary(Landroid/window/TransitionInfo;)V

    const/4 v4, 0x0

    :goto_67e
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7cc

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    iget v7, v0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_69a

    move/from16 v20, v4

    const/4 v4, 0x3

    :cond_697
    :goto_697
    const/4 v9, 0x2

    goto/16 :goto_7c1

    :cond_69a
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v8, "recents_animation_input_consumer"

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v7

    if-eqz v7, :cond_707

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_6a8
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_6ee

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    if-nez v15, :cond_6c6

    :goto_6c2
    move/from16 v20, v4

    const/4 v4, 0x3

    goto :goto_6e9

    :cond_6c6
    iget-object v6, v15, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v6}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_6cf

    goto :goto_6c2

    :cond_6cf
    iget v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    move/from16 v20, v4

    const/4 v4, 0x2

    if-eq v15, v4, :cond_6dc

    const/4 v4, 0x3

    if-ne v15, v4, :cond_6da

    goto :goto_6dd

    :cond_6da
    const/4 v15, 0x0

    goto :goto_6de

    :cond_6dc
    const/4 v4, 0x3

    :goto_6dd
    const/4 v15, 0x1

    :goto_6de
    if-eqz v15, :cond_6e4

    if-nez v8, :cond_6e4

    move-object v8, v6

    goto :goto_6e9

    :cond_6e4
    if-nez v15, :cond_6e9

    if-nez v9, :cond_6e9

    move-object v9, v6

    :cond_6e9
    :goto_6e9
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v20

    goto :goto_6a8

    :cond_6ee
    move/from16 v20, v4

    const/4 v4, 0x3

    if-eqz v8, :cond_705

    if-eqz v9, :cond_705

    iget-object v6, v7, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v6, v6, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    :cond_705
    move-object v15, v8

    goto :goto_70b

    :cond_707
    move/from16 v20, v4

    const/4 v4, 0x3

    const/4 v15, 0x0

    :goto_70b
    if-nez v15, :cond_70e

    :goto_70d
    goto :goto_697

    :cond_70e
    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v6, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v7, :cond_697

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_697

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v6

    if-eqz v6, :cond_723

    goto :goto_70d

    :cond_723
    const/4 v6, 0x0

    :goto_724
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_773

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-eqz v8, :cond_76f

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v9, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-ne v8, v9, :cond_76f

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_76f

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_762

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v14, 0x4

    if-eq v8, v14, :cond_762

    goto :goto_770

    :cond_762
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    goto :goto_775

    :cond_76f
    const/4 v9, 0x2

    :goto_770
    add-int/lit8 v6, v6, 0x1

    goto :goto_724

    :cond_773
    const/4 v9, 0x2

    const/4 v15, 0x0

    :goto_775
    if-eqz v15, :cond_7c1

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_77e

    goto :goto_7c1

    :cond_77e
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_7c1

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v7, :cond_789

    goto :goto_7c1

    :cond_789
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    const/4 v14, 0x1

    iput-boolean v14, v8, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7b7

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    const/4 v14, 0x1

    invoke-virtual {v7, v6, v8, v14}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_7b5
    const/4 v6, 0x0

    goto :goto_7be

    :cond_7b7
    const v8, 0x7fffffff

    invoke-virtual {v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7b5

    :goto_7be
    invoke-static {v5, v6}, Lcom/android/server/wm/Transition;->sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V

    :cond_7c1
    :goto_7c1
    iget v5, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7c7

    goto :goto_7cc

    :cond_7c7
    add-int/lit8 v5, v20, 0x1

    move v4, v5

    goto/16 :goto_67e

    :cond_7cc
    :goto_7cc
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v4, :cond_7dc

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v4, :cond_7dc

    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo;->setRemoteTransition(Landroid/window/RemoteTransition;)V

    :cond_7dc
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_7e6
    if-ltz v4, :cond_82b

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_828

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_7fd

    goto :goto_828

    :cond_7fd
    iget-object v6, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    :goto_806
    if-eqz v5, :cond_828

    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_828

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v6

    if-nez v6, :cond_828

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_823

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_823
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    goto :goto_806

    :cond_828
    :goto_828
    add-int/lit8 v4, v4, -0x1

    goto :goto_7e6

    :cond_82b
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v4, :cond_85c

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_839
    if-ltz v4, :cond_85c

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v6

    if-eqz v6, :cond_859

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_850

    goto :goto_859

    :cond_850
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_859
    :goto_859
    add-int/lit8 v4, v4, -0x1

    goto :goto_839

    :cond_85c
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_925

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PERFORMANCE:Z

    if-eqz v4, :cond_925

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    const/4 v14, 0x1

    if-eq v4, v14, :cond_872

    goto/16 :goto_925

    :cond_872
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    if-nez v4, :cond_878

    :cond_876
    const/4 v15, 0x0

    goto :goto_8d1

    :cond_878
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_87d
    :goto_87d
    if-ge v6, v5, :cond_876

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-nez v8, :cond_896

    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    goto :goto_897

    :cond_896
    const/4 v15, 0x0

    :goto_897
    if-eqz v15, :cond_87d

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v7

    if-eqz v7, :cond_87d

    iget-object v7, v15, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_87d

    iget-object v7, v15, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v7, :cond_87d

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eqz v7, :cond_87d

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8b8

    goto :goto_87d

    :cond_8b8
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v15, v7}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Point;->equals(II)Z

    move-result v7

    if-eqz v7, :cond_87d

    iget-object v4, v15, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v15

    :goto_8d1
    if-nez v15, :cond_8d4

    goto :goto_925

    :cond_8d4
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gtz v4, :cond_8f1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scaleUpLeftTaskFragmentsIfNeeded: failed, invalid bounds, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_925

    :cond_8f1
    add-int/lit8 v5, v4, 0x1

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v15, v5, v4}, Landroid/window/TransitionInfo$Change;->setInitialScale(FF)V

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v1, v6, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "scaleUpLeftTaskFragmentsIfNeeded: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", scale=("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",1.0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_925
    :goto_925
    const/4 v4, 0x0

    :goto_926
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_94a

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v6

    if-eqz v6, :cond_947

    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_947

    invoke-virtual {v6, v1}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_947
    add-int/lit8 v4, v4, 0x1

    goto :goto_926

    :cond_94a
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;[Lcom/android/server/wm/DisplayContent;)V

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    iput-object v4, v0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_967
    if-ltz v5, :cond_9b1

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v7

    if-eqz v7, :cond_981

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_981
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v7

    if-eqz v7, :cond_9ae

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v8

    if-eq v7, v8, :cond_9ae

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_9ae

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_9ae
    add-int/lit8 v5, v5, -0x1

    goto :goto_967

    :cond_9b1
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_9b9
    if-ltz v5, :cond_9cd

    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-nez v6, :cond_9c6

    goto :goto_9ca

    :cond_9c6
    const/4 v15, 0x0

    invoke-virtual {v4, v6, v15}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_9ca
    add-int/lit8 v5, v5, -0x1

    goto :goto_9b9

    :cond_9cd
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v4

    if-eqz v4, :cond_ad0

    iget-boolean v4, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-eqz v4, :cond_ad0

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-wide v5, v0, Lcom/android/server/wm/Transition;->mStatusBarTransitionDelay:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_9e5
    iget-object v11, v4, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_a25

    iget-object v11, v4, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    const/4 v14, 0x0

    :goto_9f6
    array-length v15, v3

    if-ge v14, v15, :cond_a1c

    aget-object v15, v3, v14

    iget v15, v15, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v16, v3

    iget v3, v11, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    move-object/from16 v17, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a08

    if-ne v3, v15, :cond_a0b

    :cond_a08
    move-wide/from16 v21, v5

    goto :goto_a0e

    :cond_a0b
    move-wide/from16 v21, v5

    goto :goto_a13

    :goto_a0e
    add-long v4, v7, v21

    invoke-virtual {v11, v4, v5}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(J)V

    :goto_a13
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v21

    goto :goto_9f6

    :cond_a1c
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v21, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_9e5

    :cond_a25
    :try_start_a25
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v3, :cond_a4b

    const/16 v18, 0x1

    aget-boolean v3, v12, v18

    if-eqz v3, :cond_a64

    const-string v3, "    "

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_a3f
    .catch Landroid/os/RemoteException; {:try_start_a25 .. :try_end_a3f} :catch_a49

    const-wide v5, 0x64fec2389243d65L

    const/4 v8, 0x0

    :try_start_a45
    invoke-static {v4, v5, v6, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_a48
    .catch Landroid/os/RemoteException; {:try_start_a45 .. :try_end_a48} :catch_aa4

    goto :goto_a64

    :catch_a49
    const/4 v8, 0x0

    goto :goto_aa4

    :cond_a4b
    const/16 v18, 0x1

    :try_start_a4d
    aget-boolean v3, v10, v18

    if-eqz v3, :cond_a64

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_a5b
    .catch Landroid/os/RemoteException; {:try_start_a4d .. :try_end_a5b} :catch_a49

    const-wide v5, -0x4a41677db194c275L  # -8.177520965211613E-50

    const/4 v8, 0x0

    :try_start_a61
    invoke-static {v4, v5, v6, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_a64
    .catch Landroid/os/RemoteException; {:try_start_a61 .. :try_end_a64} :catch_aa4

    :cond_a64
    :goto_a64
    :try_start_a64
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v2, v3, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    iget-object v5, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v1, :cond_a90

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    :try_end_a89
    .catch Landroid/os/RemoteException; {:try_start_a64 .. :try_end_a89} :catch_a49

    if-eqz v1, :cond_a90

    const/4 v8, 0x0

    :try_start_a8c
    invoke-virtual {v1, v8, v8}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    goto :goto_a91

    :cond_a90
    const/4 v8, 0x0

    :goto_a91
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_aa7

    const-string/jumbo v1, "playing"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v13, v1, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_aa3
    .catch Landroid/os/RemoteException; {:try_start_a8c .. :try_end_aa3} :catch_aa4

    goto :goto_aa7

    :catch_aa4
    :goto_aa4
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    :cond_aa7
    :goto_aa7
    move v5, v8

    :goto_aa8
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_ace

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v4

    if-eqz v4, :cond_acb

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v4, v0, Lcom/android/server/wm/Transition;->mType:I

    iget v6, v0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v3, v1, v4, v6}, Lcom/android/server/wm/AccessibilityController;->onWMTransition(III)V

    :cond_acb
    add-int/lit8 v5, v5, 0x1

    goto :goto_aa8

    :cond_ace
    :goto_ace
    const/4 v15, 0x0

    goto :goto_afa

    :cond_ad0
    iget-boolean v1, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-nez v1, :cond_af6

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    const/4 v14, 0x1

    aget-boolean v1, v10, v14

    if-eqz v1, :cond_af6

    iget v1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x1966d582a0723dcfL

    invoke-static {v1, v4, v5, v14, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_af6
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    goto :goto_ace

    :goto_afa
    iput-object v15, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->reportStartReasonsToLogger()V

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v1, :cond_b0f

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget v3, v0, Lcom/android/server/wm/Transition;->mType:I

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/SnapshotController;->onTransactionReady(ILjava/util/ArrayList;)V

    goto :goto_b30

    :cond_b0f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v1, :cond_b30

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    const/16 v19, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_b30

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->scheduleUpdateOomAdj()V

    :cond_b30
    :goto_b30
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v2, v1, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    if-eqz v2, :cond_b68

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/PerfettoTransitionTracer;

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v3

    if-nez v3, :cond_b4d

    goto :goto_b68

    :cond_b4d
    const-wide/16 v3, 0x20

    const-string/jumbo v5, "logSentTransition"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b55
    iget-object v5, v1, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v6, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;

    invoke-direct {v6, v1, v0, v2}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_b5f
    .catchall {:try_start_b55 .. :try_end_b5f} :catchall_b63

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b68

    :catchall_b63
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_b68
    :goto_b68
    return-void

    :cond_b69
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Trying to move non-collecting transition toplaying "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public overrideAnimationOptionsToInfoIfNecessary(Landroid/window/TransitionInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez v0, :cond_6

    goto/16 :goto_ce

    :cond_6
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_80

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_67

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez v4, :cond_2d

    goto :goto_3d

    :cond_2d
    invoke-virtual {v4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_67

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_67

    :cond_3d
    :goto_3d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_7d

    iget-boolean v4, v3, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v4, :cond_48

    goto :goto_7d

    :cond_48
    iget-object v3, v3, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {v3}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_7d

    :cond_51
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v3

    if-ne v3, v2, :cond_7d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    goto :goto_7d

    :cond_67
    :goto_67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget v4, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    :cond_7d
    :goto_7d
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_8b

    goto :goto_ce

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ce

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    if-eqz v1, :cond_cb

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v2, :cond_b5

    goto :goto_cb

    :cond_b5
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    iget p1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_c4

    const/16 p1, 0x1000

    goto :goto_c6

    :cond_c4
    const/16 p1, 0x2000

    :goto_c6
    or-int/2addr p0, p1

    invoke-virtual {v3, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    return-void

    :cond_cb
    :goto_cb
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    :cond_ce
    :goto_ce
    return-void
.end method

.method public final postCleanupOnFailure()V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "postCleanupOnFailure, transit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    const-string/jumbo v2, "Transition"

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final recordDisplay(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    if-nez v0, :cond_25

    iget-object v0, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    :cond_25
    iget-boolean p0, v1, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    :cond_2d
    iget p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 p1, 0x0

    :goto_30
    iget-object v0, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4d

    iget-object v0, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget v2, v0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_47

    if-ne v2, p0, :cond_4a

    :cond_47
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final reportStartReasonsToLogger()V
    .registers 12

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_49

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_46

    :cond_24
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_30

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    if-nez v4, :cond_30

    move v4, v2

    goto :goto_3f

    :cond_30
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v4, 0x5

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x2

    :goto_3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_49
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_5d
    if-ltz p0, :cond_a7

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_6c

    goto :goto_71

    :cond_6c
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :goto_71
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v5

    if-eqz v5, :cond_a4

    iget-boolean v1, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v1, :cond_7c

    goto :goto_a4

    :cond_7c
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v9, v4, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    sub-long v9, v7, v9

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    long-to-int v1, v9

    iput v1, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    iput-boolean v2, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    iget-boolean v1, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v1, :cond_a4

    const/4 v4, 0x0

    const-string/jumbo v6, "notifyTransitionStarting drawn"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    :cond_a4
    :goto_a4
    add-int/lit8 p0, p0, -0x1

    goto :goto_5d

    :cond_a7
    return-void
.end method

.method public final sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAllReady()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_b

    goto :goto_2a

    :cond_b
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    if-eqz v0, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    const-wide v4, 0x53cf4ee4ec6733bfL  # 5.2245209272189455E95

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_23
    iput-boolean v1, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    iput-boolean v1, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_b

    return-void

    :cond_b
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    if-eqz p2, :cond_12

    const/16 p2, 0x80

    goto :goto_14

    :cond_12
    const/16 p2, 0x100

    :goto_14
    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method

.method public final setDisplayChangeTransitionFlag(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_18

    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/high16 v0, 0x10000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    if-eqz p2, :cond_18

    const/high16 p2, 0x30000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_18
    return-void
.end method

.method public final setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz p1, :cond_10

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    iput-object p4, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public final setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_b

    goto :goto_4a

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    move-object v2, p1

    :goto_11
    if-eqz v2, :cond_47

    instance-of v3, v2, Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_42

    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_47

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v2, -0x4233d85c7c10c150L  # -5.121335342942837E-11

    const/4 p2, 0x3

    invoke-static {v1, v2, v3, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_47

    :cond_42
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_11

    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    :goto_18
    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_2f

    goto :goto_42

    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_18

    :cond_42
    :goto_42
    if-eqz p1, :cond_47

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_48

    :cond_47
    const/4 v0, -0x1

    :goto_48
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6f

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, -0x759ff8203330c0cdL

    const/16 v5, 0x11

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6f
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_82

    :cond_7a
    if-eqz v0, :cond_81

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    if-eqz v1, :cond_a3

    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_93
    if-ltz p1, :cond_a3

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_93

    :cond_a3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p1

    if-eqz p1, :cond_b3

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mCanAffectSystemUiFlags:Z

    :cond_b3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz p1, :cond_d6

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_d6

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_c8
    if-ltz v0, :cond_d6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TransientLaunchOverlayToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransientLaunchOverlayToken;->setVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c8

    :cond_d6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz p1, :cond_102

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_102

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long p0, p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, -0x2910890d9c70c92bL  # -5.9116830112887826E110

    invoke-static {v1, p1, p2, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_102
    return-void
.end method

.method public final shouldApplyOnDisplayThread()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_3f

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_3c

    :cond_1a
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v4, :cond_3c

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq v4, v3, :cond_3c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_3b

    return v1

    :cond_3b
    return v2

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3f
    return v2
.end method

.method public final shouldShowWallpaperForSplitTransition(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3d

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_3d

    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_3d

    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public final shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldWallpaperBeVisible()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_3f

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz v3, :cond_3b

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_3e

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3e
    :goto_3e
    return v1

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public final start()V
    .registers 6

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_79

    const/4 v1, 0x1

    if-lt v0, v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Transition already started id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    const-string/jumbo v1, "Transition"

    invoke-static {v0, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_22
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x592f159642a63392L  # 4.0133745982594973E121

    invoke-static {v4, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_68

    :cond_4d
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x26f8cb1209403231L  # 6.000882256300104E-121

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    return-void

    :cond_79
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t start Transition which isn\'t collecting."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x40

    const-string/jumbo v1, "TransitionRecord{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v1, :cond_6c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " overrideAnimOptions="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    iget v1, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    if-eqz v1, :cond_83

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " overrideBackgroundColor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b5

    const-string v1, " c=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_91
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_b0

    const-string v2, "\n   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ChangeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_b0
    const-string p0, "\n]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_15

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_16

    :goto_15
    return-void

    :cond_16
    iget p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method
