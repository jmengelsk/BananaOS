.class public final Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mDebugFireable:Z

.field public mDisplayCutoutTouchableRegionSize:I

.field public final mDownPointerId:[I

.field public mDownPointers:I

.field public final mDownTime:[J

.field public final mDownX:[F

.field public final mDownY:[F

.field public mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

.field public final mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

.field public mLastFlingTime:J

.field public mMouseHoveringAtBottom:Z

.field public mMouseHoveringAtLeft:Z

.field public mMouseHoveringAtRight:Z

.field public mMouseHoveringAtTop:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public mSwipeDistanceThreshold:I

.field public mSwipeFireable:Z

.field public final mSwipeStartThreshold:Landroid/graphics/Rect;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicy$PolicyHandler;Lcom/android/server/wm/DisplayPolicy$1;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    if-eqz p1, :cond_28

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iput-object p3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " must not be null"

    const-string/jumbo p2, "context"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final captureDown(ILandroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    aput p1, v1, v0

    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    aput-wide p1, p0, v0

    :cond_23
    return-void
.end method

.method public final detectSwipe(IJFF)I
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long/2addr p2, v2

    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    const-wide/16 v3, 0x1f4

    if-gtz v2, :cond_26

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p5, v2

    if-lez v2, :cond_26

    cmp-long v2, p2, v3

    if-gez v2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3e

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float p5, p5, v1

    if-gez p5, :cond_3e

    cmp-long p5, p2, v3

    if-gez p5, :cond_3e

    const/4 p0, 0x2

    return p0

    :cond_3e
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, v1

    int-to-float p5, p5

    cmpl-float p5, v0, p5

    if-ltz p5, :cond_57

    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p5, p5

    sub-float p5, v0, p5

    cmpg-float p5, p4, p5

    if-gez p5, :cond_57

    cmp-long p5, p2, v3

    if-gez p5, :cond_57

    const/4 p0, 0x3

    return p0

    :cond_57
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6c

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p4, v0

    if-lez p0, :cond_6c

    cmp-long p0, p2, v3

    if-gez p0, :cond_6c

    const/4 p0, 0x4

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method public final findIndex(I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_20

    if-ne p1, v2, :cond_17

    goto :goto_20

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    return v1

    :cond_20
    :goto_20
    return v2
.end method

.method public final onConfigurationChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10505d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const v1, 0x10505d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_99

    const v3, 0x10501a4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    aget-object v1, v0, v2

    if-eqz v1, :cond_57

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    :cond_57
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_6d

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    :cond_6d
    const/4 v1, 0x2

    aget-object v1, v0, v1

    if-eqz v1, :cond_83

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :cond_83
    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_99

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_99
    return-void
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    if-eqz v1, :cond_13

    invoke-virtual {v6}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    invoke-virtual {v1, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_13
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_25b

    if-eq v1, v7, :cond_234

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eq v1, v10, :cond_12d

    if-eq v1, v9, :cond_234

    const/4 v2, 0x5

    if-eq v1, v2, :cond_110

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2d

    goto/16 :goto_2c7

    :cond_2d
    const/16 v1, 0x2002

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_2c7

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    const-wide/16 v4, 0x1f4

    if-nez v3, :cond_5c

    cmpl-float v6, v1, v11

    if-nez v6, :cond_5c

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v9, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    goto :goto_6f

    :cond_5c
    if-eqz v3, :cond_6f

    cmpl-float v3, v1, v11

    if-lez v3, :cond_6f

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    :cond_6f
    :goto_6f
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    if-nez v3, :cond_8c

    cmpl-float v6, v2, v11

    if-nez v6, :cond_8c

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v9, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    goto :goto_9f

    :cond_8c
    if-eqz v3, :cond_9f

    cmpl-float v3, v2, v11

    if-lez v3, :cond_9f

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    :cond_9f
    :goto_9f
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    if-nez v3, :cond_c0

    iget v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_c0

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v9, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    goto :goto_d7

    :cond_c0
    if-eqz v3, :cond_d7

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_d7

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    :cond_d7
    :goto_d7
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    if-nez v1, :cond_f8

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_f8

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v6, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    return-void

    :cond_f8
    if-eqz v1, :cond_2c7

    iget v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2c7

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    return-void

    :cond_110
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v1, :cond_2c7

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v1, v2, :cond_122

    goto :goto_123

    :cond_122
    move v7, v8

    :goto_123
    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v7, :cond_2c7

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_12d
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v1, :cond_2c7

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getClassification()I

    move-result v1

    const/4 v12, 0x4

    if-ne v1, v12, :cond_188

    const/16 v1, 0x35

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/high16 v2, 0x40400000  # 3.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_188

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v3, v8

    sub-float/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_175

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_188

    cmpl-float v1, v2, v11

    if-lez v1, :cond_173

    move v1, v7

    goto :goto_189

    :cond_173
    move v1, v10

    goto :goto_189

    :cond_175
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_188

    cmpl-float v1, v1, v11

    if-lez v1, :cond_186

    move v1, v12

    goto :goto_189

    :cond_186
    move v1, v9

    goto :goto_189

    :cond_188
    move v1, v8

    :goto_189
    if-nez v1, :cond_18d

    move v2, v7

    goto :goto_18e

    :cond_18d
    move v2, v8

    :goto_18e
    iput-boolean v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-nez v2, :cond_1b2

    if-ne v1, v7, :cond_19a

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    return-void

    :cond_19a
    if-ne v1, v10, :cond_1a2

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    return-void

    :cond_1a2
    if-ne v1, v9, :cond_1aa

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    return-void

    :cond_1aa
    if-ne v1, v12, :cond_2c7

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    return-void

    :cond_1b2
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    move v15, v8

    :goto_1bb
    if-ge v15, v14, :cond_1cd

    invoke-virtual {v6, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPalm()F

    move-result v2

    cmpl-float v2, v2, v11

    if-lez v2, :cond_1cf

    :cond_1cd
    move v2, v8

    goto :goto_20f

    :cond_1cf
    const/4 v2, -0x1

    if-eq v1, v2, :cond_20c

    move v2, v8

    :goto_1d3
    if-ge v2, v13, :cond_1f7

    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    move-wide/from16 v16, v3

    invoke-virtual {v6, v15, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {v6, v15, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    move-wide/from16 v18, v16

    move/from16 v16, v2

    move-wide/from16 v2, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v2

    if-eqz v2, :cond_1f2

    move-object/from16 v0, p0

    goto :goto_20f

    :cond_1f2
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    goto :goto_1d3

    :cond_1f7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v6, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v6, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v2

    if-eqz v2, :cond_20c

    goto :goto_20f

    :cond_20c
    add-int/lit8 v15, v15, 0x1

    goto :goto_1bb

    :goto_20f
    if-nez v2, :cond_212

    move v8, v7

    :cond_212
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne v2, v7, :cond_21c

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    return-void

    :cond_21c
    if-ne v2, v10, :cond_224

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    return-void

    :cond_224
    if-ne v2, v9, :cond_22c

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    return-void

    :cond_22c
    if-ne v2, v12, :cond_2c7

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    return-void

    :cond_234
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    if-eqz v0, :cond_244

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    :cond_244
    if-eqz v2, :cond_2c7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_24d
    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz v2, :cond_257

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    goto :goto_257

    :catchall_255
    move-exception v0

    goto :goto_259

    :cond_257
    :goto_257
    monitor-exit v3

    return-void

    :goto_259
    monitor-exit v3
    :try_end_25a
    .catchall {:try_start_24d .. :try_end_25a} :catchall_255

    throw v0

    :cond_25b
    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iput v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    if-eqz v1, :cond_275

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_275
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    if-eqz v1, :cond_286

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_286
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    if-eqz v1, :cond_297

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_297
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    if-eqz v1, :cond_2a8

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2a8
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    if-eqz v0, :cond_2b4

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    :cond_2b4
    if-eqz v2, :cond_2c7

    iget-object v1, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2b9
    iget-object v0, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_2c3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    goto :goto_2c3

    :catchall_2c1
    move-exception v0

    goto :goto_2c5

    :cond_2c3
    :goto_2c3
    monitor-exit v1

    return-void

    :goto_2c5
    monitor-exit v1
    :try_end_2c6
    .catchall {:try_start_2b9 .. :try_end_2c6} :catchall_2c1

    throw v0

    :cond_2c7
    :goto_2c7
    return-void
.end method
