.class public final Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

.field public final mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

.field public mAnimationFrameCallbackScheduled:Z

.field public mChoreographer:Landroid/view/Choreographer;

.field public mCurrentTime:J

.field public final mExecutor:Landroid/os/HandlerExecutor;

.field public mInitialized:Z

.field public mLastRootAnimating:Z

.field public mNotifyWhenNoAnimation:Z

.field public mPendingState:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance p1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final animate(J)V
    .locals 17

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v2, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    iget-object v4, v1, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide/32 v6, 0xf4240

    div-long v6, p1, v6

    iput-wide v6, v1, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v7, 0x2

    aget-boolean v0, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x4a6312243002c0e8L    # -1.9330192995483828E-50

    invoke-static {v0, v10, v11, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v10

    move v11, v9

    :goto_0
    if-ge v11, v10, :cond_3

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 p1, v7

    move v3, v9

    goto/16 :goto_6

    :cond_3
    move v11, v9

    move v12, v11

    :goto_1
    if-ge v11, v10, :cond_b

    :try_start_1
    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v14

    if-eqz v14, :cond_6

    iget v14, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 p1, v7

    const-wide/16 v7, 0x800

    :try_start_2
    invoke-virtual {v15, v7, v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_4
    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v14, :cond_7

    iget-object v15, v14, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v15, v7, v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_5
    invoke-virtual {v14}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    goto :goto_3

    :goto_2
    move v3, v12

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 p1, v7

    goto :goto_2

    :cond_6
    move/from16 p1, v7

    :cond_7
    :goto_3
    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v13, v7, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v7, :cond_9

    :try_start_3
    iget-boolean v7, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-nez v7, :cond_8

    iput-boolean v3, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    invoke-virtual {v13, v3}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_4
    move v12, v3

    goto :goto_5

    :cond_9
    :try_start_4
    iget-boolean v7, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-eqz v7, :cond_a

    iput-boolean v9, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    invoke-virtual {v13, v9}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_a
    :goto_5
    iget-object v7, v1, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p1

    const/4 v8, 0x0

    goto :goto_1

    :cond_b
    move/from16 p1, v7

    iget-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_c

    iput-boolean v9, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_c
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :goto_6
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v7, "Unhandled exception in Window Manager"

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v12, v3

    :cond_d
    :goto_7
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_e
    const-string/jumbo v0, "animating"

    const-wide/16 v2, 0x20

    if-eqz v12, :cond_f

    iget-boolean v5, v1, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v5, :cond_f

    invoke-static {v2, v3, v0, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_f
    if-nez v12, :cond_10

    iget-boolean v5, v1, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz v5, :cond_10

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    invoke-static {v2, v3, v0, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_10
    iput-boolean v12, v1, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v1, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance v8, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1, v0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7, v8}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    :cond_11
    const-string/jumbo v0, "applyTransaction"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iput v9, v1, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracingLegacy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-boolean v0, v6, p1

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x376c11a3a0d0c7a2L    # -4.340608548080452E41

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_12
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    return-void
.end method
