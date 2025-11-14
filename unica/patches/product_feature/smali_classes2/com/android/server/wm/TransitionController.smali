.class public final Lcom/android/server/wm/TransitionController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SHELL_TRANSITIONS_ROTATION:Z

.field public static final SYNC_METHOD:I


# instance fields
.field public final mAnimatingExitWindows:Ljava/util/ArrayList;

.field public mAnimatingState:Z

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBuildingFinishLayers:Z

.field public final mCleanUpRunnableList:Ljava/util/ArrayList;

.field public mCollectingTransition:Lcom/android/server/wm/Transition;

.field public mFinishingTransition:Lcom/android/server/wm/Transition;

.field public mIsWaitingForDisplayEnabled:Z

.field public final mLatestOnTopTasksReported:Landroid/util/SparseArray;

.field public final mLegacyListeners:Ljava/util/ArrayList;

.field public final mLoggerHandler:Landroid/os/Handler;

.field public mNavigationBarAttachedToApp:Z

.field public final mPlayingTransitions:Ljava/util/ArrayList;

.field public final mQueuedTransitions:Ljava/util/ArrayList;

.field public final mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

.field public final mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

.field public mSnapshotController:Lcom/android/server/wm/SnapshotController;

.field public final mStateValidators:Ljava/util/ArrayList;

.field public mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mTrackCount:I

.field public final mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

.field public final mTransitionPlayers:Ljava/util/ArrayList;

.field public mTransitionTracer:Lcom/android/server/wm/PerfettoTransitionTracer;

.field public final mValidateActivityCompat:Ljava/util/ArrayList;

.field public final mValidateCommitVis:Ljava/util/ArrayList;

.field public final mValidateDisplayVis:Ljava/util/ArrayList;

.field public final mValidateFocusedAppVis:Ljava/util/ArrayList;

.field public final mWaitingTransitions:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    const-string/jumbo v0, "persist.wm.debug.shell_transit_blast"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-direct {v0}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/TransitionController$Lock;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TransitionController$Lock;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance v0, Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController$RemotePlayer;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    return-void
.end method

.method public static getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget v3, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v3, v1, :cond_4

    iget p1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    move p1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne p0, v1, :cond_6

    if-eqz p1, :cond_5

    iget p0, p1, Lcom/android/server/wm/Transition;->mFlags:I

    const/high16 p1, 0x80000

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method public static setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-le p1, p0, :cond_1

    move v2, v3

    :cond_1
    if-ne v4, v2, :cond_3

    if-ne v1, v0, :cond_2

    if-eq p1, p0, :cond_3

    :cond_2
    new-instance p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final canStartCollectingNow(Lcom/android/server/wm/Transition;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {v0, p1}, Lcom/android/server/wm/TransitionController;->getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-static {v2, p1}, Lcom/android/server/wm/TransitionController;->getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    return v3
.end method

.method public final collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final collectForDisplayAreaChange(Lcom/android/server/wm/DisplayArea;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;-><init>(ILcom/android/server/wm/Transition;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final continueTransitionReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "No collecting transition to defer readiness for."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createAndStartCollecting()Lcom/android/server/wm/Transition;
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    invoke-static {v0, v5, v6, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    const-string/jumbo p0, "TransitionController"

    const-string/jumbo v0, "Ongoing Sync outside of transition."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0
.end method

.method public final createTransition(II)Lcom/android/server/wm/Transition;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 p2, 0x1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v1, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v2, -0x33c205f93dbc2d2L

    invoke-static {p2, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Trying to directly start transition collection while  collection is already ongoing. Use {@link #startCollectOrQueue} if possible."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Shell Transitions not enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deferTransitionReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "No collecting transition to defer readiness for."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finishTransition(Lcom/android/server/wm/ActionChain;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/wm/ActionChain;->mType:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v6, "Can\'t finish on a non-finishing transition "

    if-eqz v2, :cond_93

    iget-object v2, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget-object v7, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    iget-object v8, v2, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V

    iget-object v7, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    iget-object v7, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Trying to finish a non-playing transition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TransitionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v10, 0x3

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, 0x5106b6fb6c9b33d0L    # 2.154652573572484E82

    filled-new-array {v7, v11}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v13, v14, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    aget-boolean v7, v9, v5

    if-eqz v7, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, -0x53aef9017752c0a9L    # -3.188656315350661E-95

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v12, v13, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v7, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v7

    if-nez v7, :cond_4

    iput v4, v0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Z)V

    const-wide/16 v11, 0x20

    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v2, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-eqz v7, :cond_5

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const-string/jumbo v13, "Transition"

    invoke-static {v11, v12, v13, v7}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_5
    iget v7, v1, Lcom/android/server/wm/ActionChain;->mType:I

    if-ne v7, v3, :cond_92

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    iget-object v1, v2, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-wide v6, v1, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    iget-object v6, v2, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v6, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v7, v6, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/PerfettoTransitionTracer;

    invoke-virtual {v7}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo v13, "logFinishedTransition"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v7, v7, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v13, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v2}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v13}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :goto_2
    iget-object v7, v2, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_7
    iget-object v7, v2, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_8
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v7, v2, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v2, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v7, v2, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_9
    iget v11, v2, Lcom/android/server/wm/Transition;->mState:I

    if-lt v11, v8, :cond_91

    iput-object v2, v6, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    iget-object v11, v2, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    move v11, v4

    :goto_3
    iget-object v12, v2, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    iget-object v12, v2, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    new-instance v13, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;

    invoke-direct {v13, v2, v12}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    move/from16 v16, v3

    move v11, v4

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_4
    iget-object v3, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_35

    iget-object v3, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_2f

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v3, :cond_b

    move-object/from16 v20, v9

    move/from16 v21, v11

    move v9, v12

    goto/16 :goto_1b

    :cond_b
    iget-object v10, v2, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v2, v7}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v17

    if-eqz v17, :cond_c

    :goto_5
    move v10, v5

    goto :goto_6

    :cond_c
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v17, :cond_e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_5

    :cond_d
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v8, :cond_e

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_5

    :cond_e
    :goto_6
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v8, :cond_10

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v8, Landroid/view/DisplayInfo;->state:I

    if-ne v8, v5, :cond_f

    goto :goto_7

    :cond_f
    move v8, v4

    goto :goto_8

    :cond_10
    :goto_7
    move v8, v5

    :goto_8
    if-eqz v10, :cond_12

    if-eqz v8, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v20, v9

    move/from16 v21, v11

    move v9, v12

    goto/16 :goto_18

    :cond_12
    :goto_9
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_11

    iget-boolean v8, v2, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    if-eqz v8, :cond_13

    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v8, :cond_13

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_13

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v8

    if-nez v8, :cond_14

    :cond_13
    move-object/from16 v20, v9

    move/from16 v21, v11

    goto/16 :goto_12

    :cond_14
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v8

    if-eqz v8, :cond_15

    move v8, v5

    goto :goto_a

    :cond_15
    move v8, v4

    :goto_a
    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v18, :cond_16

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v18

    if-eqz v18, :cond_16

    if-nez v8, :cond_16

    move-object/from16 v20, v9

    move/from16 v21, v11

    move v9, v4

    goto/16 :goto_13

    :cond_16
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    iget-object v4, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v4, :cond_18

    :cond_17
    const/4 v5, 0x0

    goto :goto_d

    :cond_18
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_b
    if-ltz v4, :cond_17

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    move/from16 v20, v4

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eq v4, v8, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_1a

    :goto_c
    add-int/lit8 v4, v20, -0x1

    const/4 v5, 0x1

    goto :goto_b

    :cond_1a
    :goto_d
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    goto :goto_e

    :cond_1c
    const/4 v4, 0x1

    goto :goto_f

    :goto_e
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :goto_f
    const-string/jumbo v5, "enterPictureInPictureMode"

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v4, v8}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v5

    if-nez v5, :cond_1d

    move-object/from16 v20, v9

    move/from16 v21, v11

    move v9, v8

    goto/16 :goto_13

    :cond_1d
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    move-object/from16 v20, v9

    iget-object v9, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v21, v11

    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v9, v7, v11, v8, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    move-result v9

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    if-ne v5, v4, :cond_21

    const/4 v5, 0x2

    if-ne v8, v5, :cond_21

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v5, :cond_21

    iget-object v5, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_21

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iput-boolean v4, v5, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    goto :goto_13

    :cond_1e
    move-object/from16 v20, v9

    move/from16 v21, v11

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v4, 0x1

    goto :goto_11

    :cond_20
    :goto_10
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :goto_11
    :try_start_1
    iget-object v8, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v4, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    const-string/jumbo v8, "finishTransition"

    iget-object v9, v4, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v8, v9, v11}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v11, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    :goto_12
    const/4 v9, 0x0

    goto :goto_13

    :catchall_0
    move-exception v0

    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    throw v0

    :cond_21
    :goto_13
    if-nez v9, :cond_28

    const/16 v19, 0x1

    aget-boolean v4, v20, v19

    if-eqz v4, :cond_22

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x4111a0226d5ec4eaL    # -1.4483678189373217E-5

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x0

    invoke-static {v5, v8, v9, v11, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_22
    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v5, :cond_24

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-nez v5, :cond_24

    iget-wide v8, v1, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    iget-object v5, v4, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v11, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v5, v5, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v5, Lcom/android/server/wm/TaskSnapshotCache;

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v14}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide v22

    goto :goto_14

    :cond_23
    const-wide/16 v22, -0x1

    :goto_14
    cmp-long v5, v22, v8

    if-gez v5, :cond_26

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v8, v6, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v8, v8, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v5, v6, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v5, v5, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/TaskSnapshotController;->removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V

    :cond_24
    :goto_15
    move v9, v12

    const/4 v4, 0x1

    :goto_16
    const/4 v8, 0x0

    goto :goto_17

    :cond_25
    iget-object v4, v4, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    goto :goto_15

    :cond_26
    const/4 v4, 0x1

    aget-boolean v5, v20, v4

    if-eqz v5, :cond_27

    iget v5, v3, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v8, v5

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    move v9, v12

    const-wide v11, 0x1938043d5ead3377L

    invoke-static {v5, v11, v12, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_16

    :cond_27
    move v9, v12

    goto :goto_16

    :goto_17
    invoke-virtual {v7, v8, v8, v4}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    const/4 v14, 0x1

    goto :goto_18

    :cond_28
    move v9, v12

    const/4 v13, 0x1

    :goto_18
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_2a

    iget v4, v4, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v4, :cond_29

    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_29
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v8, 0x0

    iput v8, v4, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_2a
    iget-object v4, v2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v4, :cond_2b

    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eq v4, v10, :cond_2b

    iput-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    goto :goto_19

    :cond_2b
    iget-object v4, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v4, :cond_2e

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v5, "transitionFinished"

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_2c
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, v7, :cond_2d

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    :cond_2d
    const/4 v12, 0x1

    goto :goto_1a

    :cond_2e
    :goto_19
    move v12, v9

    :goto_1a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v4, :cond_34

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    if-eqz v4, :cond_34

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v3}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;-><init>(ILcom/android/server/wm/Task;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    :cond_2f
    move-object/from16 v20, v9

    move/from16 v21, v11

    move v9, v12

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_30

    move v12, v9

    const/4 v15, 0x1

    goto :goto_1c

    :cond_30
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v4

    if-eqz v4, :cond_31

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/wm/TransientLaunchOverlayToken;->setVisibility(Z)V

    :cond_31
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v3}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;-><init>(ILcom/android/server/wm/Task;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v4, :cond_33

    if-eqz v3, :cond_33

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    if-eqz v4, :cond_33

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;

    const/4 v7, 0x2

    invoke-direct {v5, v7, v3}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;-><init>(ILcom/android/server/wm/Task;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    :goto_1b
    move v12, v9

    :cond_34
    :goto_1c
    add-int/lit8 v11, v21, 0x1

    move-object/from16 v9, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x3

    goto/16 :goto_4

    :cond_35
    move-object/from16 v20, v9

    move v9, v12

    iget-object v1, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_1d
    if-ltz v1, :cond_44

    iget-object v3, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-boolean v4, v3, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-nez v4, :cond_36

    goto/16 :goto_26

    :cond_36
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v4, v4, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_38

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_1e

    :cond_37
    const/4 v5, 0x0

    goto :goto_1f

    :cond_38
    :goto_1e
    const/4 v5, 0x1

    :goto_1f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_3a

    iget-object v7, v2, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    goto :goto_20

    :cond_39
    const/4 v7, 0x0

    goto :goto_21

    :cond_3a
    :goto_20
    const/4 v7, 0x1

    :goto_21
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v8, :cond_3f

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v8

    if-eqz v8, :cond_3b

    :goto_22
    const/4 v4, 0x1

    goto :goto_23

    :cond_3b
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v8, :cond_3c

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v8

    if-eqz v8, :cond_3c

    goto :goto_22

    :cond_3c
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v8, :cond_3d

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Transition;->shouldShowWallpaperForSplitTransition(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_3d

    const-string/jumbo v4, "Transition"

    const-string/jumbo v8, "canBeVisibleWallpaperOnFinishTransition: visible, reason=split_transit"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_3d
    if-eqz v4, :cond_3e

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_3e

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_22

    :cond_3e
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->shouldWallpaperBeVisible()Z

    move-result v4

    :goto_23
    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_25

    :cond_3f
    if-nez v5, :cond_40

    if-nez v7, :cond_42

    :cond_40
    const/16 v19, 0x1

    aget-boolean v4, v20, v19

    if-eqz v4, :cond_41

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x2914a3da1ae6ce20L    # -5.140481217967095E110

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v7, v10, v11, v8, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_24

    :cond_41
    const/4 v8, 0x0

    :goto_24
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_42
    :goto_25
    if-eqz v5, :cond_43

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_43
    :goto_26
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1d

    :cond_44
    if-eqz v14, :cond_46

    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v4, 0x1

    if-eqz v1, :cond_45

    iput-boolean v4, v1, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    :cond_45
    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_27
    if-ltz v1, :cond_46

    iget-object v3, v6, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iput-boolean v4, v3, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x1

    goto :goto_27

    :cond_46
    if-eqz v9, :cond_48

    if-eqz v13, :cond_47

    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_47
    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    :cond_48
    iget-object v1, v2, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    goto/16 :goto_2c

    :cond_49
    move v4, v3

    const/4 v1, 0x0

    :goto_28
    iget-object v5, v2, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v7, v2, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    if-ge v1, v5, :cond_4e

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v8, :cond_4a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    goto :goto_2b

    :cond_4a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v10

    if-eqz v10, :cond_4c

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->isIgnoring(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_4b

    goto :goto_29

    :cond_4b
    new-instance v7, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v10}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_2a

    :cond_4c
    :goto_29
    if-gez v4, :cond_4d

    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v10, "ConfigAtTransitEnd"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v12, v7, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v7, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    invoke-direct {v11, v7, v4, v12, v10}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    const-wide/16 v12, 0x1388

    const/4 v4, 0x1

    invoke-virtual {v7, v11, v12, v13, v4}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    iget v10, v11, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v7, v10, v4}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    move v4, v10

    :cond_4d
    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :goto_2a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-static {v7, v5, v8}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_4e
    if-ltz v4, :cond_4f

    const/4 v10, 0x1

    invoke-virtual {v7, v4, v10}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    :cond_4f
    :goto_2c
    const/4 v1, 0x0

    :goto_2d
    iget-object v4, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_59

    iget-object v4, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_50

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-static {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_50

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    move-result v7

    if-eqz v7, :cond_50

    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct {v4, v7, v2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/Transition;)V

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_50
    if-nez v4, :cond_51

    const/4 v7, 0x2

    goto :goto_33

    :cond_51
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_53

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_2e

    :cond_52
    const/4 v7, 0x2

    goto :goto_32

    :cond_53
    :goto_2e
    const/16 v5, 0x100

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v5

    if-nez v5, :cond_57

    const/4 v5, 0x0

    :goto_2f
    iget-object v8, v6, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_57

    iget-object v8, v6, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v10

    iget v11, v8, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    if-eq v11, v3, :cond_55

    if-ne v11, v10, :cond_54

    goto :goto_30

    :cond_54
    const/4 v10, 0x0

    goto :goto_31

    :cond_55
    :goto_30
    const/4 v10, 0x1

    :goto_31
    if-eqz v10, :cond_56

    iget-object v10, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_57
    :goto_32
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    if-eqz v5, :cond_58

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_58

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eq v5, v4, :cond_58

    iput-boolean v8, v4, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    :cond_58
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2d

    :cond_59
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_34
    iget-object v5, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_5c

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_5b

    iget-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v7, :cond_5b

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-nez v7, :cond_5a

    goto :goto_35

    :cond_5a
    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecordInputSink;->applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v4, 0x1

    :cond_5b
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_5c
    iget-object v1, v2, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_5d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_5d
    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    iget-object v4, v2, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    iget v4, v2, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-eq v4, v3, :cond_5e

    iget-object v5, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_5e
    iget-object v4, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    :goto_36
    if-ltz v4, :cond_60

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_5f

    iput-boolean v10, v5, Lcom/android/server/wm/TaskFragment;->mCanAffectSystemUiFlags:Z

    :cond_5f
    add-int/lit8 v4, v4, -0x1

    const/4 v10, 0x1

    goto :goto_36

    :cond_60
    const/4 v4, 0x0

    :goto_37
    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_73

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v7

    if-eqz v7, :cond_62

    iget-object v8, v2, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_62

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v8, :cond_61

    :try_start_2
    iget v8, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    iput v8, v7, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    invoke-virtual {v7}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput v3, v7, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    goto :goto_38

    :catchall_1
    move-exception v0

    iput v3, v7, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    throw v0

    :cond_61
    invoke-virtual {v7}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V

    :cond_62
    :goto_38
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_63

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_63

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v7, :cond_63

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    :cond_63
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_65

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v7, :cond_65

    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v7

    if-nez v7, :cond_65

    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/TransitionController;->isPlayingTarget(Lcom/android/server/wm/WindowToken;)Z

    move-result v7

    if-nez v7, :cond_65

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v7}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v7

    if-nez v7, :cond_65

    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz v7, :cond_64

    iget-object v7, v7, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    :cond_64
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :cond_65
    if-eqz v15, :cond_68

    iget-object v7, v2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v7, :cond_68

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v8

    iget v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq v7, v8, :cond_68

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v7, :cond_68

    iget-object v8, v7, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-nez v8, :cond_66

    goto :goto_39

    :cond_66
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CAMERA_POLICY:Z

    if-eqz v8, :cond_67

    goto :goto_39

    :cond_67
    const v8, 0x10404a9

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(I)V

    :cond_68
    :goto_39
    iget-object v7, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v7, :cond_72

    const/4 v7, 0x0

    :goto_3a
    iget-object v8, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_6d

    iget-object v8, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-ne v8, v5, :cond_6c

    if-eqz v9, :cond_6b

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6b

    if-eqz v7, :cond_6b

    iget-object v10, v5, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v10, v10, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v6, v5, v10}, Lcom/android/server/wm/TransitionController;->hasCollectingRotationChange(Lcom/android/server/wm/DisplayContent;I)Z

    move-result v10

    if-nez v10, :cond_69

    goto :goto_3b

    :cond_69
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v8

    if-eqz v8, :cond_6b

    iget-object v10, v8, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v10, :cond_6b

    iget-boolean v11, v8, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v11, :cond_6b

    iget-object v11, v8, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v7, v11, :cond_6a

    goto :goto_3b

    :cond_6a
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v8, v8, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v7, :cond_6b

    if-eqz v8, :cond_6b

    invoke-interface {v8}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eqz v10, :cond_6b

    invoke-interface {v8}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-nez v8, :cond_6b

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_6b
    :goto_3b
    iget-object v7, v2, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    goto :goto_3c

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :cond_6d
    const/4 v7, 0x0

    :goto_3c
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v8, :cond_6e

    iget-object v10, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_6e

    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v11, :cond_6e

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v10

    if-eqz v10, :cond_6e

    const/4 v10, 0x1

    goto :goto_3d

    :cond_6e
    const/4 v10, 0x0

    :goto_3d
    if-nez v9, :cond_6f

    if-eqz v8, :cond_70

    if-nez v10, :cond_6f

    goto :goto_3e

    :cond_6f
    const/4 v11, 0x0

    goto :goto_3f

    :cond_70
    :goto_3e
    iget v8, v2, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    iget v10, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v8, v10, :cond_6f

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v8

    iget v10, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(IZ)V

    :goto_3f
    if-nez v9, :cond_71

    if-eqz v7, :cond_71

    filled-new-array {v11}, [I

    move-result-object v8

    new-instance v10, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v8}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityRecord;[I)V

    const/4 v8, 0x1

    invoke-virtual {v7, v10, v8}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_71
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    if-eqz v7, :cond_72

    iget-boolean v7, v5, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_72

    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v5}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    :cond_72
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->handleCompleteDeferredRemoval()Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_37

    :cond_73
    iget v4, v2, Lcom/android/server/wm/Transition;->mFlags:I

    const v5, 0xb900

    and-int/2addr v4, v5

    if-eqz v4, :cond_74

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v5}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v4, :cond_77

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_75

    iget-object v4, v6, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    const/4 v4, 0x0

    :goto_40
    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_77

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    iget-object v7, v6, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    goto :goto_41

    :cond_76
    iget-object v7, v6, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_77
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_82

    iget-object v4, v2, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onTransitionFinished: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ChangeTransitionController"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v5, :cond_7e

    const-string/jumbo v5, "restoreLastParentBeforePip: r="

    iget-object v8, v4, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    if-eqz v8, :cond_7e

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_7e

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v9

    if-nez v9, :cond_78

    goto/16 :goto_46

    :cond_78
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_79

    iget-object v10, v12, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    goto :goto_42

    :cond_79
    const/4 v10, 0x0

    :goto_42
    if-eqz v10, :cond_7e

    if-eqz v9, :cond_7e

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v11

    if-eqz v11, :cond_7e

    iget-object v11, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v10, v11, :cond_7a

    goto/16 :goto_46

    :cond_7a
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_7d

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    move-result v9

    if-nez v9, :cond_7b

    goto :goto_45

    :cond_7b
    iget-object v9, v4, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", lastParent="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string/jumbo v13, "restoreLastParentBeforePip"

    if-eq v5, v11, :cond_7c

    const v5, 0x7fffffff

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v10, v5, v11, v13, v14}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    goto :goto_43

    :catchall_2
    move-exception v0

    const/4 v11, 0x0

    goto :goto_44

    :cond_7c
    :goto_43
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    invoke-virtual {v12, v10, v5, v13}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    goto :goto_46

    :goto_44
    iput-boolean v11, v8, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_7d
    :goto_45
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "restoreLastParentBeforePip: invalid stage, "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "r="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_46
    iget v5, v4, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    const/4 v10, 0x1

    if-eq v5, v10, :cond_81

    iget v8, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ne v8, v5, :cond_81

    const-string v5, "ChangeTransitionController"

    const-string/jumbo v8, "resumeRotation by ai key"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_80

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v8, v5, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v8, :cond_7f

    goto :goto_47

    :cond_7f
    const/16 v19, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v5, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-nez v8, :cond_80

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_80
    :goto_47
    iput v3, v4, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    :cond_81
    iget v3, v2, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    const/16 v19, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_82

    const-string/jumbo v3, "onTransitionFinished: now update rotation"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v4, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    :cond_82
    iget-object v3, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v3, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move/from16 v3, v16

    iput v3, v2, Lcom/android/server/wm/Transition;->mState:I

    if-eqz v15, :cond_83

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v3

    if-nez v3, :cond_83

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    goto :goto_48

    :cond_83
    const/4 v8, 0x0

    :goto_48
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BackNavigationController;->onTransitionFinish(Lcom/android/server/wm/Transition;)V

    const/4 v10, 0x0

    iput-object v10, v6, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    iget-object v1, v6, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v3, v2, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/wm/Transition;->mType:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/SnapshotController;->onTransitionFinish(ILjava/util/ArrayList;)V

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_49
    if-ltz v1, :cond_87

    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v4, :cond_84

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_84

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v4

    if-nez v4, :cond_84

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    :cond_84
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v4, :cond_85

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v3, :cond_86

    :cond_85
    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto :goto_49

    :cond_87
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    monitor-enter v1

    :try_start_5
    iget v3, v1, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    if-lez v3, :cond_88

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4a

    :catchall_3
    move-exception v0

    goto/16 :goto_4e

    :cond_88
    :goto_4a
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-nez v1, :cond_90

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->validateStates()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_8e

    iget v1, v2, Lcom/android/server/wm/Transition;->mState:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_89

    const/4 v4, 0x1

    goto :goto_4b

    :cond_89
    move v4, v8

    :goto_4b
    if-eqz v4, :cond_8a

    :goto_4c
    const/4 v4, 0x1

    goto :goto_4d

    :cond_8a
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_8b

    goto :goto_4c

    :cond_8b
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges()Z

    move-result v1

    if-eqz v1, :cond_8c

    goto :goto_4c

    :cond_8c
    move v4, v8

    :goto_4d
    if-eqz v4, :cond_8e

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_8d

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_8d
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_8e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v1, :cond_8f

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    const/16 v16, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8f

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_8f

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->scheduleUpdateOomAdj()V

    :cond_8f
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    :cond_90
    return-void

    :goto_4e
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t finish a non-playing transition "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_92
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flushRunningTransitions()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->abort()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$RemotePlayer;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    monitor-enter v1

    :try_start_0
    iget v2, v1, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    if-lez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getCollectingTransition()Lcom/android/server/wm/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Collecting Transition (#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v1, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not collecting. state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v1, v1, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TransitionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    return-object p0
.end method

.method public final getCollectingTransitionId()I
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "There is no collecting transition"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCollectingTransitionType()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/wm/Transition;->mType:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTransitionPlayer()Landroid/window/ITransitionPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    return-object p0
.end method

.method public final getWindowingModeAtStart(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    return p0
.end method

.method public final hasCollectingRotationChange(Lcom/android/server/wm/DisplayContent;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq p0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v0, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final inTransition()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final inTransition(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final inTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isCollecting()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCollecting(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final isInKeyguardTransition()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    const v0, 0xb900

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPlayingTarget(Lcom/android/server/wm/WindowToken;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isShellTransitionsEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isTransientHide(Lcom/android/server/wm/Task;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method public final moveToCollecting(Lcom/android/server/wm/Transition;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1388

    :goto_0
    iget v2, p1, Lcom/android/server/wm/Transition;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/wm/Transition;->mState:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Transition-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v4}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iget-object v6, p1, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v8, v6, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v6, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    invoke-direct {v7, v6, p1, v8, v3}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    invoke-virtual {v6, v7, v0, v1, v4}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    iget v0, v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    iput v0, p1, Lcom/android/server/wm/Transition;->mSyncId:I

    sget v1, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    iget v0, p1, Lcom/android/server/wm/Transition;->mSyncId:I

    iget-object p1, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput v0, p1, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/TransitionController$Logger;->mCollectTimeNs:J

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v5

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x59d847994a9f3e82L    # 6.420091692138887E124

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v5

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x1de7036ff85639deL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to re-use a transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Simultaneous transition collection not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/TransitionController$QueuedTransition;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 p2, 0x1

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x4c762d3db2dfc06dL    # -2.0087331146961005E-60

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    aget-boolean v0, v1, v2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x3f17c8741fc1c04dL    # -49596.37112343255

    const/4 v4, 0x4

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->flushRunningTransitions()V

    goto :goto_0

    :cond_1
    aget-boolean v0, v1, v2

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x3afc20681e8ccaa3L    # -3.003185000262496E24

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;-><init>(Lcom/android/server/wm/TransitionController;Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "requestCloseTransitionIfNeeded: skip, force hidden, t="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    aget-boolean v2, v4, v6

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v7, -0x3ac8823a709dc01dL    # -2.8399234001968437E25

    invoke-static {v4, v7, v8, v6, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v5, v1, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    iget-object v2, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v1, Lcom/android/server/wm/Transition;->mState:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    iget-object v7, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_3
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v9, 0x67418596fdc530edL    # 2.4396463801731246E189

    invoke-static {v8, v9, v10, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    aget-boolean v3, v4, v6

    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v8, 0x37971f38593a3bd5L    # 6.635675241800035E-41

    invoke-static {v4, v8, v9, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    move-object v10, v4

    goto :goto_2

    :cond_6
    move-object v10, v3

    :goto_2
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v8, v9, :cond_7

    new-instance v8, Landroid/window/TransitionRequestInfo$PipChange;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-direct {v8, v5, v4}, Landroid/window/TransitionRequestInfo$PipChange;-><init>(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_3

    :cond_7
    new-instance v8, Landroid/window/TransitionRequestInfo$PipChange;

    invoke-direct {v8, v4}, Landroid/window/TransitionRequestInfo$PipChange;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_3
    iput-object v3, v1, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    move-object v11, v8

    goto :goto_4

    :cond_8
    move-object v11, v3

    :goto_4
    new-instance v8, Landroid/window/TransitionRequestInfo;

    iget v9, v1, Lcom/android/server/wm/Transition;->mType:I

    iget v14, v1, Lcom/android/server/wm/Transition;->mFlags:I

    iget v15, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v15}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    iput-object v8, v7, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    iget-object v3, v1, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    invoke-interface {v0, v3, v8}, Landroid/window/ITransitionPlayer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    if-eqz p3, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-virtual {v3, v0, v6, v6}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    :cond_9
    iput-object v2, v1, Lcom/android/server/wm/Transition;->mTriggerTask:Lcom/android/server/wm/Task;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_5
    const-string/jumbo v2, "TransitionController"

    const-string v3, "Error requesting transition"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->start()V

    return-object v1

    :cond_a
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    :cond_b
    return-object v1
.end method

.method public final requestTransitionIfNeeded(IILcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    const p1, 0xb900

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v1

    :goto_1
    invoke-virtual {p0, p1, p3, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public final setHideWhileTwoHandDragging(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setHideWhileTwoHandDragging: wc="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setSyncEngine(Lcom/android/server/wm/BLASTSyncEngine;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    invoke-interface {p2, v1}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return-void

    :cond_2
    const-string/jumbo v0, "TransitionController"

    const-string/jumbo v1, "Ongoing Sync outside of transition."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    invoke-interface {p2, v1}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return-void
.end method

.method public final startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    new-instance v2, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V

    invoke-direct {v0, p1, v2}, Lcom/android/server/wm/TransitionController$QueuedTransition;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 p2, 0x1

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, -0x260c18a64943c1eaL    # -2.105194890288045E125

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final tryStartCollectFromQueue()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    invoke-static {v2, v5, v6, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-wide/16 v4, 0x1388

    iget-object v6, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-virtual {v2, v6, v4, v5, v1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_7

    iget v1, v1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_7

    iget-object p0, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    invoke-interface {p0, v3}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v2}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v3, 0x0

    if-gez v0, :cond_2

    const/4 p0, 0x3

    aget-boolean p0, v2, p0

    if-eqz p0, :cond_8

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x2d00a38953023dcfL    # 6.381366704917865E-92

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    const/16 v6, 0x14

    if-eqz v4, :cond_4

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v7, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v0, 0x333c4f1d2b4f3463L    # 6.88154613984404E-62

    invoke-static {v2, v0, v1, v6, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    aget-boolean v1, v2, v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v7, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v0, -0x27f7beac5544cef7L    # -1.1946285839395035E116

    invoke-static {v2, v0, v1, v6, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object p1, v5, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, v5, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, v5, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, v5, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    iput-object p1, v5, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    :cond_7
    :goto_4
    if-nez v4, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->flushRunningTransitions()V

    return-void
.end method

.method public final updateAnimatingState()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/Transition;->mState:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string/jumbo v3, "Transition"

    const-wide/16 v4, 0x20

    const v6, 0x41bfaf1

    iget-object v7, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_6

    iget-boolean v8, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    if-nez v8, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_5

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v8, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v1}, Lcom/android/server/wm/Transition;->shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    goto :goto_4

    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_3
    if-ltz v8, :cond_4

    iget-object v9, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/Transition;->shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    iput-boolean v2, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    const-string/jumbo p0, "animating"

    invoke-static {v4, v5, v3, p0, v6}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_5
    if-ltz v0, :cond_7

    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    iput-boolean v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    invoke-static {v4, v5, v3, v6}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_8
    return-void
.end method

.method public final updateRunningRemoteAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    iget-object v1, v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->addAnimatingReason(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$RemotePlayer;->clear()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final useShellTransitionsRotation()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final validateStates()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string/jumbo v3, "TransitionController"

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Uncommitted visibility change: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v5, v2, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DisplayArea became visible outside of a transition: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_c

    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No collecting transition available to wait for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "TransitionController"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/wm/Transition$ReadyTracker;->NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;

    iput-object p0, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void
.end method
