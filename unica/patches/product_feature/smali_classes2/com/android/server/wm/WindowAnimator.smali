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
    .registers 6

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
    .registers 20

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v2, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    if-nez v0, :cond_15

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_15
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

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x4a6312243002c0e8L  # -1.9330192995483828E-50

    invoke-static {v0, v10, v11, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_33
    :try_start_33
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v10

    move v11, v9

    :goto_3d
    if-ge v11, v10, :cond_54

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_4b} :catch_4e

    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    :catch_4e
    move-exception v0

    move/from16 p1, v7

    move v3, v9

    goto/16 :goto_dc

    :cond_54
    move v11, v9

    move v12, v11

    :goto_56
    if-ge v11, v10, :cond_c7

    :try_start_58
    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v14

    if-eqz v14, :cond_94

    iget v14, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_68} :catch_90

    move/from16 p1, v7

    const-wide/16 v7, 0x800

    :try_start_6c
    invoke-virtual {v15, v7, v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v16

    if-eqz v16, :cond_75

    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_75
    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v14, :cond_96

    iget-object v15, v14, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v15, v7, v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_8a
    invoke-virtual {v14}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    goto :goto_96

    :goto_8e
    move v3, v12

    goto :goto_dc

    :catch_90
    move-exception v0

    move/from16 p1, v7

    goto :goto_8e

    :cond_94
    move/from16 p1, v7

    :cond_96
    :goto_96
    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v13, v7, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v7
    :try_end_9c
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_9c} :catch_b6

    if-eqz v7, :cond_ac

    :try_start_9e
    iget-boolean v7, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-nez v7, :cond_aa

    iput-boolean v3, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    invoke-virtual {v13, v3}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_a7} :catch_a8

    goto :goto_aa

    :catch_a8
    move-exception v0

    goto :goto_dc

    :cond_aa
    :goto_aa
    move v12, v3

    goto :goto_b8

    :cond_ac
    :try_start_ac
    iget-boolean v7, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-eqz v7, :cond_b8

    iput-boolean v9, v13, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    invoke-virtual {v13, v9}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V

    goto :goto_b8

    :catch_b6
    move-exception v0

    goto :goto_8e

    :cond_b8
    :goto_b8
    iget-object v7, v1, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p1

    const/4 v8, 0x0

    goto :goto_56

    :cond_c7
    move/from16 p1, v7

    iget-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_d4

    iput-boolean v9, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_d4
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_db
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_db} :catch_b6

    goto :goto_e6

    :goto_dc
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v7, "Unhandled exception in Window Manager"

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v12, v3

    :cond_e6
    :goto_e6
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges()Z

    move-result v0

    if-eqz v0, :cond_f1

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_f1
    const-string/jumbo v0, "animating"

    const-wide/16 v2, 0x20

    if-eqz v12, :cond_ff

    iget-boolean v5, v1, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v5, :cond_ff

    invoke-static {v2, v3, v0, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_ff
    if-nez v12, :cond_10d

    iget-boolean v5, v1, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz v5, :cond_10d

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    invoke-static {v2, v3, v0, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_10d
    iput-boolean v12, v1, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v1, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance v8, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1, v0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7, v8}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    :cond_12a
    const-string/jumbo v0, "applyTransaction"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iput v9, v1, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracingLegacy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-boolean v0, v6, p1

    if-eqz v0, :cond_14e

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x376c11a3a0d0c7a2L  # -4.340608548080452E41

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_14e
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    return-void
.end method
