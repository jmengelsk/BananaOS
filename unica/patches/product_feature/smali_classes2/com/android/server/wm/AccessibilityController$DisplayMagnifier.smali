.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field public final mCircularPath:Landroid/graphics/Path;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

.field public mIsFullscreenMagnificationActivated:Z

.field public final mMagnificationRegion:Landroid/graphics/Region;

.field public final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mOldMagnificationRegion:Landroid/graphics/Region;

.field public final mScreenSize:Landroid/graphics/Point;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTempLayer:I

.field public final mTempMatrix:Landroid/graphics/Matrix;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRegion1:Landroid/graphics/Region;

.field public final mTempRegion2:Landroid/graphics/Region;

.field public final mTempRegion3:Landroid/graphics/Region;

.field public final mTempRegion4:Landroid/graphics/Region;

.field public final mTempWindowStates:Landroid/util/SparseArray;

.field public final mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mIsFullscreenMagnificationActivated:Z

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempWindowStates:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    new-instance v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    new-instance v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;)V

    iput-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v1

    if-eqz v1, :cond_ba

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCircularPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Point;->set(II)V

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_bd

    :cond_ba
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCircularPath:Landroid/graphics/Path;

    :goto_bd
    const-wide/16 v0, 0x800

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->toString()Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    return-void
.end method


# virtual methods
.method public final isFullscreenMagnificationActivated()Z
    .registers 4

    const-wide/16 v0, 0x800

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_d
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mIsFullscreenMagnificationActivated:Z

    return p0
.end method

.method public final notifyImeWindowVisibilityChanged(Z)V
    .registers 5

    const-wide/16 v0, 0x800

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final recomputeBounds()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCircularPath:Landroid/graphics/Path;

    if-eqz v3, :cond_33

    invoke-virtual {v1, v3, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    :cond_33
    iget-object v10, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    invoke-virtual {v10, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v11, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempWindowStates:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    iput v9, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    new-instance v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v11}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/util/SparseArray;)V

    invoke-virtual {v2, v3, v9}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_66

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :goto_64
    move-object v2, v3

    goto :goto_68

    :cond_66
    const/4 v3, 0x0

    goto :goto_64

    :goto_68
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    move v13, v3

    :goto_6f
    if-ltz v13, :cond_191

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7eb

    if-eq v5, v8, :cond_90

    const/16 v8, 0x7f7

    if-ne v5, v8, :cond_84

    goto :goto_90

    :cond_84
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x200000

    and-int/2addr v5, v4

    if-nez v5, :cond_90

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_94

    :cond_90
    :goto_90
    move/from16 v16, v9

    goto/16 :goto_18b

    :cond_94
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempMatrix:Landroid/graphics/Matrix;

    sget-object v5, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    iget-object v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v14, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    iget-object v15, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v15, v15, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move/from16 v16, v9

    iget v9, v15, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    iget v15, v15, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    invoke-virtual {v8, v9, v15}, Landroid/graphics/Region;->translate(II)V

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    aget v4, v5, v16

    invoke-virtual {v8, v4}, Landroid/graphics/Region;->scale(F)V

    const/4 v4, 0x2

    aget v4, v5, v4

    float-to-int v4, v4

    const/4 v9, 0x5

    aget v5, v5, v9

    float-to-int v5, v5

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Region;->translate(II)V

    invoke-virtual {v14, v8}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v10, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v14, v4, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v4

    if-eqz v4, :cond_eb

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v1, v9}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_f1

    :cond_eb
    invoke-virtual {v10, v14, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v14, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_f1
    if-eqz v2, :cond_fc

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-virtual {v2, v14, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_fc
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7e3

    if-eq v9, v14, :cond_109

    move/from16 v4, v16

    goto :goto_110

    :cond_109
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v4}, Landroid/graphics/Region;->isEmpty()Z

    move-result v4

    :goto_110
    if-eqz v4, :cond_127

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    if-eqz v4, :cond_11f

    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_121

    :cond_11f
    sget-object v4, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_121
    invoke-virtual {v10, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_127
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v4

    if-eqz v4, :cond_162

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_137

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    goto :goto_15c

    :cond_137
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    sget-object v14, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v4, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object v3, v4

    :goto_15c
    invoke-virtual {v10, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v3, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_162
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-virtual {v3, v10, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    invoke-virtual {v3}, Landroid/graphics/Region;->isRect()Z

    move-result v4

    if-eqz v4, :cond_18b

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, v6, :cond_18b

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v3, v7, :cond_18b

    goto :goto_191

    :cond_18b
    :goto_18b
    add-int/lit8 v13, v13, -0x1

    move/from16 v9, v16

    goto/16 :goto_6f

    :cond_191
    :goto_191
    if-eqz v2, :cond_19f

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v10, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_19f
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c8

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-static {v2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    invoke-virtual {v0, v12, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1c8
    return-void
.end method
