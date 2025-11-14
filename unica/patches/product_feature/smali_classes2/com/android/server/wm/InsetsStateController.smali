.class public final Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mChangedCoverScreenCompatMode:Z

.field public final mControlTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsStateController$1;

.field public mForcedConsumingTypes:I

.field public final mIdControlTargetMap:Landroid/util/SparseArray;

.field public final mIdFakeControlTargetMap:Landroid/util/SparseArray;

.field public final mLastState:Landroid/view/InsetsState;

.field public final mPendingTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mState:Landroid/view/InsetsState;

.field public final mSurfaceTransactionIds:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsStateController$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsStateController;->mChangedCoverScreenCompatMode:Z

    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final collectPolicyControlledTypes(ILjava/util/ArrayList;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v2, v1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-nez v3, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    :goto_0
    if-eqz v3, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/InsetsStateController;->collectPolicyControlledTypes(ILjava/util/ArrayList;)V

    :cond_2
    if-eqz v5, :cond_4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/InsetsStateController;->collectPolicyControlledTypes(ILjava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    move v3, v4

    move v5, v3

    :cond_4
    :goto_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    const/4 v7, 0x0

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v7

    goto :goto_4

    :cond_6
    iget-object v6, v0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_8

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    goto :goto_3

    :cond_8
    :goto_2
    if-nez v6, :cond_9

    move-object v0, v7

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v2, v6

    :cond_b
    :goto_4
    if-nez v2, :cond_c

    return-object v7

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Landroid/view/InsetsSourceControl;

    :goto_5
    if-ge v4, v0, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    if-eqz v3, :cond_d

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    if-ne v8, v9, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    if-ne v8, v9, :cond_e

    :goto_6
    new-instance v10, Landroid/view/InsetsSourceControl;

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getId()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v12

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    sget-object v16, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v17}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;Z)V

    aput-object v10, v6, v4

    goto :goto_7

    :cond_e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v7

    aput-object v7, v6, v4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    return-object v6
.end method

.method public final getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .locals 2

    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object p0
.end method

.method public final getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v0

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    :goto_0
    iget v0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(I)Z

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final notifyInsetsChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    sget-object v3, Lcom/android/server/wm/DisplayContent;->COPY_SOURCE_VISIBILITY:Lcom/android/server/wm/DisplayContent$1;

    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz p0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-interface {v2, p0}, Landroid/view/IDisplayWindowInsetsController;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo v2, "WindowManager"

    const-string v3, "Failed to deliver inset state change"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {p0, v3}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v4, 0x800

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->notifyImeWindowVisibilityChanged(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final notifyPendingInsetsControlChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/SparseLongArray;->append(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v3, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V

    iget-object p0, v2, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, v2, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    iput-boolean p0, v2, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object p0, v2, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final notifySurfaceTransactionReady(Lcom/android/server/wm/InsetsSourceProvider;JZ)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    iget-object p1, p1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    iget-object p1, p1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public final onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    iget-object v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    iget-object v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    :goto_0
    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz p3, :cond_4

    iget-object v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    iput-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFakeControlTarget: fakeControl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fakeTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InsetsSourceProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    iget-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object p3, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance p3, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public final onPostLayout()V
    .locals 5

    const-wide/16 v0, 0x20

    const-string v2, "ISC.onPostLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsStateController;->mChangedCoverScreenCompatMode:Z

    if-eqz v2, :cond_3

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/InsetsStateController;->mChangedCoverScreenCompatMode:Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v4, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v5, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    if-eqz v6, :cond_1

    move-object v5, p3

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v4, :cond_2

    goto :goto_3

    :cond_2
    move v4, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x31

    invoke-interface {v4, p3, v5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_7
    return-void
.end method

.method public final removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    iget-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    iget-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final updateAboveInsetsState(Z)V
    .locals 4

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
