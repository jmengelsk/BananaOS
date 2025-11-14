.class public final Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mAnimatedScale:F

.field public volatile mAnimationCompleted:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mAnimatorSet:Ljava/util/HashMap;

.field public mApplyAlpha:Z

.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingTaskIdToHide:I

.field public mCenterPivotOffsetX:F

.field public mCenterPivotOffsetY:F

.field public mCrossProfileCopyAllowed:Z

.field public final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentAlpha:F

.field public mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mCurrentDisplayX:F

.field public mCurrentDisplayY:F

.field public mData:Landroid/content/ClipData;

.field public mDataDescription:Landroid/content/ClipDescription;

.field public mDeviceId:I

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mDragInProgress:Z

.field public mDragInProgressByRecents:Z

.field public mDragMoved:Z

.field public mDragResult:Z

.field public mDragSplitAppIconHasDrawable:Z

.field public mFlags:I

.field public mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mIsClosing:Z

.field public mIsObjectCapture:Z

.field public mIsUpdatingClipdata:Z

.field public mLocalWin:Landroid/os/IBinder;

.field public mMimeType:I

.field public mNeedAdjustPosition:Z

.field public mNotifiedWindows:Ljava/util/ArrayList;

.field public mObjectCaptureRect:Landroid/graphics/RectF;

.field public mPid:I

.field public mPointerId:I

.field public final mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mRelinquishDragSurfaceToDropTarget:Z

.field public mScaleAnimSource:F

.field public mScaleAnimTarget:F

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSourceUserId:I

.field public mSourceX:F

.field public mSourceY:F

.field public mStartDragAlpha:F

.field public mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mStartDragDisplayX:F

.field public mStartDragDisplayY:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mTargetX:F

.field public mTargetY:F

.field public mThumbOffsetX:F

.field public mThumbOffsetY:F

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public mToken:Landroid/os/IBinder;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mUid:I

.field public mUnhandledDropEvent:Landroid/view/DragEvent;


# direct methods
.method public static -$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static -$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000  # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    iput v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    const v1, 0x3f4ccccd  # 0.8f

    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae  # 0.22f

    const/high16 v4, 0x3e800000  # 0.25f

    invoke-direct {v1, v3, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    iput v2, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .registers 2

    if-nez p0, :cond_3

    goto :goto_1f

    :cond_3
    const-string/jumbo v0, "application/vnd.android.activity"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "application/vnd.android.shortcut"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "application/vnd.android.task"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public static targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    if-nez p0, :cond_3

    goto :goto_e

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final adjustPosition(FI)F
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_1b

    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p1, v0

    if-nez p2, :cond_18

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_1a

    :cond_18
    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    :goto_1a
    add-float/2addr p1, p0

    :cond_1b
    return p1
.end method

.method public final adjustScale(F)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_13

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p1, p0

    :cond_13
    return p1
.end method

.method public final broadcastDragStartedLocked(FF)V
    .registers 7

    const-wide/16 v0, 0x20

    const-string v2, "DragDropController#DRAG_STARTED"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcasting DRAG_STARTED at ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-static {v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final cancelAnimatorAllLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelDragLocked(Z)V
    .registers 16

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    return-void

    :cond_8
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v3, :cond_14b

    if-nez p1, :cond_14b

    iget p1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_16

    goto/16 :goto_14b

    :cond_16
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    goto/16 :goto_148

    :cond_23
    iget p1, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v3, -0x1

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    const-string/jumbo v6, "scale"

    const-string/jumbo v7, "y"

    const-string/jumbo v8, "x"

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eq p1, v3, :cond_77

    new-array p1, v9, [Landroid/animation/PropertyValuesHolder;

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v9, v0, [F

    aput v3, v9, v2

    aput v3, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p1, v2

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v8, v0, [F

    aput v3, v8, v2

    aput v3, v8, v1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p1, v1

    iget v3, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v7, v0, [F

    aput v3, v7, v2

    aput v3, v7, v1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p1, v0

    iget v3, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v10, v0, v1

    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto/16 :goto_127

    :cond_77
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_85

    :cond_84
    const/4 p1, 0x0

    :goto_85
    if-eqz p1, :cond_e1

    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v11, v9, v11

    iget v12, p1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v11, v12

    iget v13, p1, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v11, v13

    mul-float/2addr v9, v12

    add-float/2addr v9, v13

    new-array v12, v0, [F

    aput v11, v12, v2

    aput v9, v12, v1

    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v3, v2

    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v9, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v9, v8, v9

    iget v11, p1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v11

    iget v12, p1, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v12

    mul-float/2addr v8, v11

    add-float/2addr v8, v12

    new-array v11, v0, [F

    aput v9, v11, v2

    aput v8, v11, v1

    invoke-static {v7, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v1

    iget v7, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget p1, p1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v7, p1

    new-array p1, v0, [F

    aput v7, p1, v2

    aput v10, p1, v1

    invoke-static {v6, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v3, v0

    iget p1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v0, v0, [F

    aput p1, v0, v2

    aput v10, v0, v1

    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_127

    :cond_e1
    new-array p1, v9, [Landroid/animation/PropertyValuesHolder;

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v9, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v9, v3, v9

    new-array v11, v0, [F

    aput v9, v11, v2

    aput v3, v11, v1

    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p1, v2

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v8, v3, v8

    new-array v9, v0, [F

    aput v8, v9, v2

    aput v3, v9, v1

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p1, v1

    iget v3, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v7, v0, [F

    aput v3, v7, v2

    aput v10, v7, v1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p1, v0

    iget v3, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v10, v0, v1

    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_127
    new-instance v0, Lcom/android/server/wm/DragState$AnimationListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    const-wide/16 v2, 0xc3

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_148
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    :cond_14b
    :goto_14b
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    return-void
.end method

.method public final closeLocked(Z)V
    .registers 21

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    const/4 v10, 0x1

    const-string/jumbo v11, "WindowManager"

    const/4 v12, 0x0

    if-eqz v1, :cond_28

    if-nez p1, :cond_28

    iput-boolean v10, v0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v1, :cond_28

    const-string/jumbo v1, "Unregistering drag input channel"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-virtual {v1, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    :cond_28
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_df

    const-string v1, "Broadcasting DRAG_ENDED"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v15, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v14

    :goto_3a
    if-ge v2, v1, :cond_d1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v16, v2, 0x1

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v9, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v9, :cond_7d

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    iget v4, v0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v3, v4, :cond_7d

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_66

    iget v7, v2, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr v3, v7

    :cond_66
    iget v7, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v7, v4

    cmpl-float v4, v5, v6

    if-eqz v4, :cond_73

    iget v4, v2, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr v7, v4

    :cond_73
    iget v4, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_7b

    move v6, v10

    goto :goto_80

    :cond_7b
    :goto_7b
    move v6, v14

    goto :goto_80

    :cond_7d
    move v3, v13

    move v7, v3

    goto :goto_7b

    :goto_80
    const/4 v4, 0x0

    const/4 v8, 0x0

    move v5, v1

    const/4 v1, 0x4

    move/from16 v17, v5

    const/4 v5, 0x0

    move-object/from16 v18, v2

    move v2, v3

    move v3, v7

    const/4 v7, 0x1

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v1

    :try_start_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending DRAG_ENDED to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ac} :catch_ad

    goto :goto_bf

    :catch_ad
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to drag-end window "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bf
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_ca

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    :cond_ca
    move/from16 v2, v16

    move/from16 v1, v17

    const/4 v10, 0x1

    goto/16 :goto_3a

    :cond_d1
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v14, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const-wide/16 v1, 0x20

    const-string v3, "DragDropController#DRAG_ENDED"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_df
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v1, :cond_e7

    if-eqz p1, :cond_e7

    goto/16 :goto_1a5

    :cond_e7
    iget-boolean v2, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    if-eqz v2, :cond_ed

    iput-boolean v14, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    :cond_ed
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_fc

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    :cond_fc
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_14a

    if-eqz v1, :cond_10b

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    if-eqz v2, :cond_10b

    iput-boolean v14, v0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    :cond_10b
    iget-boolean v2, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v2, :cond_135

    iget v2, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_116

    goto :goto_135

    :cond_116
    if-eqz v1, :cond_129

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_148

    :cond_129
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_148

    :cond_135
    :goto_135
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, v2, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_148
    iput-object v12, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_14a
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_152

    iget-boolean v2, v0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-eqz v2, :cond_15c

    :cond_152
    if-eqz v1, :cond_162

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_162

    :cond_15c
    const-string/jumbo v1, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v11, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    iput v14, v0, Lcom/android/server/wm/DragState;->mFlags:I

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iput v13, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v13, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    if-eqz v1, :cond_179

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    :cond_179
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v2, v1, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v2, v0, :cond_186

    const-string/jumbo v0, "Unknown drag state is closed"

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a5

    :cond_186
    iput-object v12, v1, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v1, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1a5

    const-string/jumbo v0, "[TWODND] onDragStateClosedLocked"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    iput-boolean v14, v0, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    iput-boolean v14, v0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    iput-object v12, v1, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    iget-boolean v0, v1, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    if-eqz v0, :cond_1a5

    iget-object v0, v1, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a5
    :goto_1a5
    return-void
.end method

.method public final createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/server/wm/DragState$AnimationListener;

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final createCenteredScaleAnimator(FFFJ)Landroid/animation/ValueAnimator;
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, "scale"

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v1, v4

    const-string/jumbo p2, "pivot_offset"

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v4

    aput p3, v0, p1

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p2

    new-array v3, v0, [F

    aput p1, v3, v2

    const/4 p1, 0x1

    aput p2, v3, p1

    const-string/jumbo p2, "x"

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p2

    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p3

    new-array p4, v0, [F

    aput p2, p4, v2

    aput p3, p4, p1

    const-string/jumbo p2, "y"

    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/server/wm/DragState$AnimationListener;

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final createReleaseAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v5, "WindowManager"

    const/4 v6, 0x0

    if-eqz v0, :cond_a3

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_a3

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_a3

    const-string/jumbo v0, "createObjectReleaseAnimationLocked"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v7

    const/high16 v8, 0x3f800000  # 1.0f

    if-ge v7, v2, :cond_3e

    const-string/jumbo v2, "dragSurfaceWidth is wrong!!, width: "

    invoke-static {v7, v2, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto :goto_4d

    :cond_3e
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v2

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v5, v2

    :goto_4d
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v2

    invoke-virtual {p0, v8, v2}, Lcom/android/server/wm/DragState;->createScaleAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/server/wm/DragState$1;

    const/4 v7, 0x2

    invoke-direct {v5, p0, v7}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v7, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v5, v7

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v8, v7

    sub-float/2addr v5, v8

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v8, v5, v7}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_97

    iput-boolean v6, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    :cond_97
    iget-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v2

    :cond_a3
    const-string/jumbo v0, "createReleaseAnimationLocked"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const v2, 0x3e99999a  # 0.3f

    const/4 v5, 0x0

    const-wide/16 v7, 0x96

    invoke-virtual {p0, v2, v5, v7, v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v2

    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/DragState;->createScaleAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/server/wm/DragState$1;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    mul-float v7, v1, v5

    iget v8, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v1, v8

    sub-float/2addr v7, v1

    iget v9, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v5, v9

    mul-float/2addr v9, v8

    sub-float/2addr v5, v9

    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    sub-float/2addr v8, v1

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    sub-float/2addr v1, v9

    sub-float v7, v8, v7

    sub-float v5, v1, v5

    invoke-virtual {p0, v8, v7, v1, v5}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_11d

    iput-boolean v6, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    :cond_11d
    iget-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v2
.end method

.method public final createScaleAnimator(FF)Landroid/animation/ValueAnimator;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, "scale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final endDragLocked(ZZ)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move/from16 v5, p2

    iput-boolean v5, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_12

    return-void

    :cond_12
    if-eqz v1, :cond_18

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v1, :cond_2e

    :cond_18
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_DISABLE_CANCEL_ANIMATION:Z

    if-eqz v1, :cond_23

    iget v1, v0, Lcom/android/server/wm/DragState;->mFlags:I

    const/high16 v5, 0x100000

    and-int/2addr v1, v5

    if-nez v1, :cond_2e

    :cond_23
    iget v1, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_2a

    goto :goto_2e

    :cond_2a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_32

    :cond_2e
    :goto_2e
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    return-void

    :cond_32
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v1, :cond_3a

    iget v5, v0, Lcom/android/server/wm/DragState;->mMimeType:I

    if-eq v5, v3, :cond_42

    :cond_3a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    if-eqz v5, :cond_45

    iget-boolean v5, v0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v5, :cond_45

    :cond_42
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    :cond_45
    if-eqz v1, :cond_54

    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v1

    goto/16 :goto_1bb

    :cond_54
    iget v1, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v5, -0x1

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x3

    const-string/jumbo v10, "scale"

    const-string/jumbo v11, "y"

    const-string/jumbo v12, "x"

    const/4 v13, 0x4

    if-eq v1, v5, :cond_aa

    new-array v1, v13, [Landroid/animation/PropertyValuesHolder;

    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v13, v2, [F

    aput v5, v13, v4

    aput v5, v13, v3

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v1, v4

    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v12, v2, [F

    aput v5, v12, v4

    aput v5, v12, v3

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v1, v3

    iget v5, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v11, v2, [F

    aput v5, v11, v4

    aput v5, v11, v3

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v1, v2

    iget v5, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v2, v2, [F

    aput v5, v2, v4

    const/4 v5, 0x0

    aput v5, v2, v3

    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0xc3

    goto/16 :goto_19c

    :cond_aa
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    if-eqz v1, :cond_120

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    iget v14, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v15, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v14, v15

    move/from16 v16, v3

    iget v3, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v14, v3

    const/high16 p1, 0x40000000  # 2.0f

    iget v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v14, v5

    const-wide/16 v17, 0xc3

    iget v6, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    sub-float/2addr v6, v15

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    new-array v3, v2, [F

    aput v14, v3, v4

    aput v6, v3, v16

    invoke-static {v12, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v13, v4

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v3, v5

    iget v6, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v6

    iget v7, v1, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v3, v7

    iget v12, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    sub-float/2addr v12, v5

    mul-float/2addr v12, v6

    add-float/2addr v12, v7

    new-array v5, v2, [F

    aput v3, v5, v4

    aput v12, v5, v16

    invoke-static {v11, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v13, v16

    iget v3, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v1

    new-array v1, v2, [F

    aput v3, v1, v4

    aput v3, v1, v16

    invoke-static {v10, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v13, v2

    iget v1, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    div-float v3, v1, p1

    new-array v2, v2, [F

    aput v1, v2, v4

    aput v3, v2, v16

    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v13, v9

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_172

    :cond_120
    move/from16 v16, v3

    const/high16 p1, 0x40000000  # 2.0f

    const-wide/16 v17, 0xc3

    new-array v1, v13, [Landroid/animation/PropertyValuesHolder;

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v3, v5

    iget v6, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    sub-float/2addr v6, v5

    new-array v5, v2, [F

    aput v3, v5, v4

    aput v6, v5, v16

    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v3, v5

    iget v6, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    sub-float/2addr v6, v5

    new-array v5, v2, [F

    aput v3, v5, v4

    aput v6, v5, v16

    invoke-static {v11, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v16

    iget v3, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v5, v2, [F

    aput v3, v5, v4

    aput v3, v5, v16

    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    iget v3, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    div-float v5, v3, p1

    new-array v2, v2, [F

    aput v3, v2, v4

    aput v5, v2, v16

    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_172
    iget v2, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    sub-float/2addr v3, v5

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v5

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v2, v5

    const-wide v5, 0x4066800000000000L  # 180.0

    mul-double/2addr v2, v5

    double-to-long v2, v2

    add-long v6, v2, v17

    :goto_19c
    new-instance v2, Lcom/android/server/wm/DragState$AnimationListener;

    invoke-direct {v2, v0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1bb
    iput-object v1, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DragAndDropPermissionsHandler;
    .registers 11

    if-eqz p1, :cond_2e

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2e

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_2e

    new-instance v1, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v4, p0, Lcom/android/server/wm/DragState;->mUid:I

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v6, v0, 0x3

    iget v7, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    iget p0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    return-object v1

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    if-ge v2, v0, :cond_16

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public final notifyDownEventLocked()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "WindowManager"

    if-nez v0, :cond_12

    const-string/jumbo p0, "notifyDownEventLocked(), isAnimating() is true"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_f1

    const-string/jumbo v0, "createPressAnimationLocked"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    const/4 v2, 0x1

    const v3, 0x3f4ccccd  # 0.8f

    if-ne v1, v2, :cond_48

    iput v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    goto :goto_7c

    :cond_48
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    const/high16 v4, 0x40000000  # 2.0f

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v5, 0xc7

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_66

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v4

    div-float/2addr v4, v1

    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    goto :goto_7c

    :cond_66
    const/16 v5, 0x63

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_7c

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v4

    div-float/2addr v4, v1

    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    :cond_7c
    :goto_7c
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float v4, v1, v3

    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    mul-float/2addr v1, v5

    sub-float v1, v4, v1

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v3, v6

    mul-float/2addr v6, v5

    sub-float v5, v3, v6

    iget v6, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/android/server/wm/DragState;->mTargetX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/android/server/wm/DragState;->mTargetY:F

    add-float/2addr v1, v6

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceX:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/android/server/wm/DragState;->mSourceY:F

    invoke-virtual {p0, v1, v6, v5, v4}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v1

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/DragState;->createScaleAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_e4

    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    :cond_e4
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f1
    return-void
.end method

.method public final notifyLocationToEavesdropDragEventWindowLocked(FF)V
    .registers 16

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v1, "sending DRAG_LOCATION to "

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-eqz v11, :cond_5f

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {p0, v11}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5f

    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    const/4 v9, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/DragEvent;->setEavesDrop(Z)V

    iget-object v1, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v1, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v12, v1, :cond_5f

    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_58} :catch_59

    return-void

    :catch_59
    const-string/jumbo v0, "can\'t send drag notification to a window eavesdropping dragEvent"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final notifyUpdateClipDataLocked()V
    .registers 13

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "notifyUpdateClipDataLocked(), isAnimating() is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "createUpdateClipDataAnimationLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v4

    const v3, 0x3f99999a  # 1.2f

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v5

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000  # 2.0f

    div-float v6, v3, v6

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_46

    iput v2, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    :cond_46
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    const-wide/16 v7, 0x64

    invoke-virtual {p0, v3, v2, v7, v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v9

    const v3, 0x3e99999a  # 0.3f

    const-wide/16 v7, 0x12c

    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DragState;->createCenteredScaleAnimator(FFFJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v7, Lcom/android/server/wm/DragState$2;

    invoke-direct {v7, v3, v1}, Lcom/android/server/wm/DragState$2;-><init>(Lcom/android/server/wm/DragState;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, v3, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x1f4

    move v11, v5

    move v5, v4

    move v4, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DragState;->createCenteredScaleAnimator(FFFJ)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/DragState$1;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, v3, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, v3, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;
    .registers 23

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz p7, :cond_e

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    :goto_c
    move v6, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :goto_10
    if-eqz p6, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_14
    move-object v10, p0

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_14

    :goto_18
    const/4 v7, 0x0

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public final reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const-wide/16 v0, 0x20

    :try_start_8
    const-string v2, "DragDropController#DROP"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLockInner(Landroid/os/IBinder;FF)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final reportDropWindowLockInner(Landroid/os/IBinder;FF)Z
    .registers 33

    move-object/from16 v0, p0

    const-string/jumbo v10, "can\'t send drop notification to win "

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v11, 0x0

    if-eqz v1, :cond_b

    return v11

    :cond_b
    iget-object v12, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v12, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v14, 0x1

    iget-object v15, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-string/jumbo v2, "WindowManager"

    const-wide/16 v3, 0x20

    if-nez v1, :cond_67

    move-wide v5, v3

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    move-wide v6, v5

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    move-wide v7, v6

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x3

    move-wide/from16 v16, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v3, p3

    move-object v10, v2

    move-wide/from16 v11, v16

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v1

    const-string/jumbo v2, "unhandled-drop"

    invoke-virtual {v15, v1, v2, v13}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_49

    return v14

    :cond_49
    const-string v1, "DragDropController#noWindow"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Drop outside a valid window "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :cond_67
    move-object v1, v12

    move-wide v11, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending DROP to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float v3, v3, p2

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float v4, v4, p3

    move-object v5, v2

    move v2, v3

    move v3, v4

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    move-object v7, v6

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v8, v1

    const/4 v1, 0x3

    move-object/from16 v17, v7

    const/4 v7, 0x1

    move-object/from16 v18, v8

    const/4 v8, 0x0

    move/from16 p1, v14

    move-object/from16 v19, v17

    move-object/from16 v14, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, v13, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    iget v3, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_ea

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_ea

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_ea

    new-instance v20, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v3, v14, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v5, v0, Lcom/android/server/wm/DragState;->mUid:I

    iget-object v6, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v7, v7, 0xc3

    iget v8, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-direct/range {v20 .. v27}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    move/from16 v3, v27

    :goto_e7
    move-object/from16 v8, v20

    goto :goto_ef

    :cond_ea
    move/from16 v3, v27

    const/16 v20, 0x0

    goto :goto_e7

    :goto_ef
    iget v4, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v4, v3, :cond_fa

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_fa

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->fixUris(I)V

    :cond_fa
    invoke-static {v13}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v9, 0x0

    move-object v3, v1

    const/4 v1, 0x3

    move v7, v6

    move-object/from16 v28, v2

    move-object v14, v3

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v1

    :try_start_111
    const-string v2, "DragDropController#dispatchDrop"

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v2, v15, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    move-object/from16 v4, v28

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_12c} :catch_141
    .catchall {:try_start_111 .. :try_end_12c} :catchall_13f

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_137

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    :cond_137
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    iput-object v4, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    iput-object v14, v0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    return p1

    :catchall_13f
    move-exception v0

    goto :goto_165

    :catch_141
    :try_start_141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v19

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V
    :try_end_156
    .catchall {:try_start_141 .. :try_end_156} :catchall_13f

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_161

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    :cond_161
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :goto_165
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_170

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    :cond_170
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final restartDragLocked(Landroid/content/ClipData;)V
    .registers 16

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_b0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v6, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v7, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object v8, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-nez v3, :cond_2c

    const/4 v3, 0x0

    :goto_2a
    move-object v9, v3

    goto :goto_3b

    :cond_2c
    invoke-virtual {v3}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->setCallingUserId(I)V

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->setCallingPackageName(Ljava/lang/String;)V

    goto :goto_2a

    :goto_3b
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DragAndDropPermissionsHandler;

    move-result-object v12

    const/4 v5, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object p0

    move-object v3, v4

    goto :goto_5c

    :cond_4a
    move-object v3, p0

    iget v5, v3, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v6, v3, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object v7, v3, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v8, v3, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object p0

    :goto_5c
    iget v4, v3, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_66

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/DragEvent;->setIsStickyEvent(Z)V

    :cond_66
    :try_start_66
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, p0}, Landroid/view/IWindow;->dispatchDragEventUpdated(Landroid/view/DragEvent;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_7c
    .catchall {:try_start_66 .. :try_end_6b} :catchall_79

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v4, v2, :cond_9f

    :goto_75
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_9f

    :catchall_79
    move-exception v0

    move-object p1, v0

    goto :goto_a2

    :catch_7c
    :try_start_7c
    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to drag-restart window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_79

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v4, v2, :cond_9f

    goto :goto_75

    :cond_9f
    :goto_9f
    move-object p0, v3

    goto/16 :goto_f

    :goto_a2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_af

    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    :cond_af
    throw p1

    :cond_b0
    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V
    .registers 19

    const-string/jumbo v10, "Unable to drag-start window "

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    const-string/jumbo v11, "WindowManager"

    if-eq v1, v2, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t send DRAG_STARTED to other displays. win="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-static {p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v2, :cond_1af

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v12, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_38

    move v2, v12

    goto :goto_39

    :cond_38
    move v2, v4

    :goto_39
    if-nez v2, :cond_41

    if-nez v1, :cond_41

    if-eqz p4, :cond_41

    goto/16 :goto_1af

    :cond_41
    if-nez v1, :cond_49

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v3

    if-eqz v3, :cond_1af

    :cond_49
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_1af

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1af

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    if-eqz v3, :cond_1af

    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v5, v3, 0x1000

    if-eqz v5, :cond_5c

    move v4, v12

    :cond_5c
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_61

    goto :goto_63

    :cond_61
    if-eqz v4, :cond_6e

    :goto_63
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_72

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_6e

    goto :goto_72

    :cond_6e
    if-nez v2, :cond_72

    goto/16 :goto_1af

    :cond_72
    :goto_72
    if-eqz v4, :cond_80

    if-nez v1, :cond_80

    iget v2, p0, Lcom/android/server/wm/DragState;->mUid:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    if-eq v2, v3, :cond_80

    goto/16 :goto_1af

    :cond_80
    if-eqz v1, :cond_8e

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_8e

    goto/16 :goto_1af

    :cond_8e
    if-nez v1, :cond_9e

    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v2, :cond_9e

    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_1af

    :cond_9e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sending DRAG_STARTED to new window "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v1, :cond_100

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_100

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    if-nez v3, :cond_c6

    const-string v3, "DragState"

    const-string/jumbo v4, "clipdata or description is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :cond_c6
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_df

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_e4

    :cond_df
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    :goto_e4
    const-string/jumbo v5, "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

    iget v6, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding EXTRA_HIDE_DRAG_SOURCE_TASK_ID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-static {v4, v5, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_101

    :cond_100
    :goto_100
    move-object v3, v2

    :goto_101
    if-eqz v3, :cond_109

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :goto_107
    move-object v4, v3

    goto :goto_10c

    :cond_109
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    goto :goto_107

    :goto_10c
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    iget v7, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_122

    iget v9, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr v6, v9

    :cond_122
    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v5, p3, v5

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_12e

    iget v7, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr v5, v7

    :cond_12e
    invoke-direct {v3, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v5, v2

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    if-eqz v1, :cond_15a

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-nez v1, :cond_13d

    goto :goto_14c

    :cond_13d
    invoke-virtual {v1}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object v1

    iget v5, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {v1, v5}, Landroid/content/ClipData;->setCallingUserId(I)V

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/ClipData;->setCallingPackageName(Ljava/lang/String;)V

    move-object v5, v1

    :goto_14c
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DragAndDropPermissionsHandler;

    move-result-object v8

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v1

    goto :goto_165

    :cond_15a
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;Z)Landroid/view/DragEvent;

    move-result-object v1

    :goto_165
    if-eqz p5, :cond_170

    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_170

    invoke-virtual {v1, v12}, Landroid/view/DragEvent;->setIsStickyEvent(Z)V

    :cond_170
    :try_start_170
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_170 .. :try_end_17a} :catch_188
    .catchall {:try_start_170 .. :try_end_17a} :catchall_186

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_1af

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    return-void

    :catchall_186
    move-exception v0

    goto :goto_1a3

    :catch_188
    :try_start_188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_188 .. :try_end_197} :catchall_186

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_1af

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    goto :goto_1af

    :goto_1a3
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_1ae

    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    :cond_1ae
    throw v0

    :cond_1af
    :goto_1af
    return-void
.end method

.method public final updateDragSurfaceLocked(FFIZ)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16d

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v0, :cond_18

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    if-nez v3, :cond_18

    goto/16 :goto_16d

    :cond_18
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    const-string/jumbo v4, "WindowManager"

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    if-eqz v3, :cond_2b

    :cond_27
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    if-eqz v3, :cond_36

    :cond_2b
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    const-string/jumbo p0, "skip createMoveAnimation"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    if-eqz v0, :cond_5b

    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v3

    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    sub-float v7, v6, v3

    iget v8, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    sub-float v9, v8, v3

    add-float/2addr v6, v3

    add-float/2addr v8, v3

    invoke-direct {v5, v7, v9, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto/16 :goto_1a4

    :cond_5b
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v3, :cond_6c

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_cb

    :cond_6c
    if-eqz v0, :cond_c0

    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    if-nez v3, :cond_cb

    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    const/high16 v6, 0x100000

    and-int/2addr v3, v6

    if-eqz v3, :cond_80

    const-string/jumbo v1, "skip createMoveAnimationLocked"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :cond_80
    const-string/jumbo v3, "createMoveAnimationLocked"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const v4, 0x3e99999a  # 0.3f

    const-wide/16 v6, 0x96

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v3}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_bd
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    goto :goto_cb

    :cond_c0
    if-nez v3, :cond_cb

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_cb
    :goto_cb
    if-eqz v0, :cond_d3

    iget v1, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    if-nez v1, :cond_d3

    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    :cond_d3
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p4, :cond_dd

    goto/16 :goto_1a4

    :cond_dd
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result p4

    if-eqz p4, :cond_10d

    iget-object p4, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p4, p4, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz p4, :cond_138

    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v0, v5

    sub-float v0, p1, v0

    iget v1, p4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v0, v1

    iget v2, p4, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v2, v5

    sub-float v2, p2, v2

    mul-float/2addr v2, v1

    iget p4, p4, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v2, p4

    float-to-int p4, v2

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v0, v0

    int-to-float p4, p4

    invoke-virtual {v1, v2, v0, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_138

    :cond_10d
    if-eqz v0, :cond_125

    iget-object p4, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v1, v5

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v2, v5

    sub-float v2, p2, v2

    invoke-virtual {p4, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_138

    :cond_125
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    invoke-virtual {p4, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_138
    :goto_138
    sget-object p4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p4, p4, v0

    if-eqz p4, :cond_1a4

    iget-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    int-to-long v0, p3

    iget p3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr p1, p3

    float-to-int p1, p1

    int-to-long v2, p1

    iget p0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr p2, p0

    float-to-int p0, p2

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p4, p3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p3, -0x19ed2542bcb5cf97L  # -5.007157476380257E183

    const/16 p1, 0x54

    invoke-static {p2, p3, p4, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_16d
    :goto_16d
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    if-eqz p3, :cond_1a4

    iget-boolean p3, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    if-eqz p3, :cond_1a4

    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object p3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1a4

    iget-object p3, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p0

    invoke-virtual {p3, p4, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1a4
    :goto_1a4
    return-void
.end method
