.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

.field public mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mPreparedOpenTransition:Lcom/android/server/wm/Transition;

.field public final mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public mRequestedStartingSurfaceId:I

.field public mStartingSurface:Landroid/view/SurfaceControl;


# direct methods
.method public varargs constructor <init>(ILandroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/WindowContainer;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    array-length v3, v2

    new-array v3, v3, [Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    iput-object v3, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_14
    if-ltz v3, :cond_25

    iget-object v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v6, v2, v3

    move/from16 v7, p1

    invoke-static {v6, v4, v7, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->createAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_25
    array-length v2, v2

    const/4 v3, 0x0

    if-le v2, v4, :cond_e5

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v5, v2

    sub-int/2addr v5, v4

    :goto_32
    if-ltz v5, :cond_40

    aget-object v6, v2, v5

    iget-object v6, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_32

    :cond_40
    aget-object v5, v2, v3

    iget-object v6, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v5

    aget-object v7, v2, v3

    iget-object v7, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v8, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string/jumbo v9, "cross-animation-leash"

    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v5, "BackWindowAnimationAdaptorWrapper.getOrCreateAnimationTarget"

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v3

    invoke-virtual {v1, v8, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    array-length v3, v2

    sub-int/2addr v3, v4

    :goto_84
    if-ltz v3, :cond_b6

    aget-object v4, v2, v3

    iget-object v5, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v1, v6, v9, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_b3

    iget-object v6, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_b3
    add-int/lit8 v3, v3, -0x1

    goto :goto_84

    :cond_b6
    new-instance v5, Landroid/view/RemoteAnimationTarget;

    iget v6, v7, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget v1, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    iget-boolean v9, v7, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iget-object v10, v7, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iget v12, v7, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    new-instance v13, Landroid/graphics/Point;

    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v7, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, v7, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    const/16 v19, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v15, v14

    move v7, v1

    move-object/from16 v16, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    invoke-direct/range {v5 .. v21}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_eb

    :cond_e5
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v1, v1, v3

    iget-object v5, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    :goto_eb
    iput-object v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final cleanUpWindowlessSurface(Z)V
    .registers 7

    iget v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_51

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v3, 0x1

    xor-int/2addr p1, v3

    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_3d

    if-nez v0, :cond_22

    goto :goto_3d

    :cond_22
    new-instance v4, Landroid/window/StartingWindowRemovalInfo;

    invoke-direct {v4}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    iput v0, v4, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    iput-boolean v3, v4, Landroid/window/StartingWindowRemovalInfo;->windowlessSurface:Z

    iput-boolean p1, v4, Landroid/window/StartingWindowRemovalInfo;->removeImmediately:Z

    const/4 p1, 0x3

    iput p1, v4, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    :try_start_30
    invoke-interface {v2, v4}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3d

    :catch_34
    move-exception p1

    const-string/jumbo v0, "TaskOrganizerController"

    const-string v2, "Exception sending removeWindowlessStartingSurface "

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    :goto_3d
    iput v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    :cond_51
    :goto_51
    return-void
.end method
