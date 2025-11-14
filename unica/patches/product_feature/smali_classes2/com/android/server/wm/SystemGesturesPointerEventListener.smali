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
    .locals 2

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

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iput-object p3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void

    :cond_0
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
    .locals 3

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

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

    :cond_0
    return-void
.end method

.method public final detectSwipe(IJFF)I
    .locals 6

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

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p5, v2

    if-lez v2, :cond_0

    cmp-long v2, p2, v3

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float p5, p5, v1

    if-gez p5, :cond_1

    cmp-long p5, p2, v3

    if-gez p5, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, v1

    int-to-float p5, p5

    cmpl-float p5, v0, p5

    if-ltz p5, :cond_2

    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p5, p5

    sub-float p5, v0, p5

    cmpg-float p5, p4, p5

    if-gez p5, :cond_2

    cmp-long p5, p2, v3

    if-gez p5, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p4, v0

    if-lez p0, :cond_3

    cmp-long p0, p2, v3

    if-gez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final findIndex(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final onConfigurationChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_0
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

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    const v3, 0x10501a4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    aget-object v1, v0, v2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    :cond_2
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    :cond_3
    const/4 v1, 0x2

    aget-object v1, v0, v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :cond_4
    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    invoke-virtual {v1, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_21

    if-eq v1, v7, :cond_1e

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eq v1, v10, :cond_b

    if-eq v1, v9, :cond_1e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto/16 :goto_d

    :cond_1
    const/16 v1, 0x2002

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    const-wide/16 v4, 0x1f4

    if-nez v3, :cond_2

    cmpl-float v6, v1, v11

    if-nez v6, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v9, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    cmpl-float v3, v1, v11

    if-lez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    :cond_3
    :goto_0
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    if-nez v3, :cond_4

    cmpl-float v6, v2, v11

    if-nez v6, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v9, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    cmpl-float v3, v2, v11

    if-lez v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    :cond_5
    :goto_1
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    if-nez v3, :cond_6

    iget v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v9, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    :cond_7
    :goto_2
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    if-nez v1, :cond_8

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_8

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

    :cond_8
    if-eqz v1, :cond_28

    iget v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_28

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    return-void

    :cond_9
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v1, :cond_28

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v1, v2, :cond_a

    goto :goto_3

    :cond_a
    move v7, v8

    :goto_3
    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v7, :cond_28

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_b
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v1, :cond_28

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getClassification()I

    move-result v1

    const/4 v12, 0x4

    if-ne v1, v12, :cond_f

    const/16 v1, 0x35

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

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

    if-gez v3, :cond_d

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f

    cmpl-float v1, v2, v11

    if-lez v1, :cond_c

    move v1, v7

    goto :goto_4

    :cond_c
    move v1, v10

    goto :goto_4

    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    cmpl-float v1, v1, v11

    if-lez v1, :cond_e

    move v1, v12

    goto :goto_4

    :cond_e
    move v1, v9

    goto :goto_4

    :cond_f
    move v1, v8

    :goto_4
    if-nez v1, :cond_10

    move v2, v7

    goto :goto_5

    :cond_10
    move v2, v8

    :goto_5
    iput-boolean v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-nez v2, :cond_14

    if-ne v1, v7, :cond_11

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    return-void

    :cond_11
    if-ne v1, v10, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    return-void

    :cond_12
    if-ne v1, v9, :cond_13

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    return-void

    :cond_13
    if-ne v1, v12, :cond_28

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    return-void

    :cond_14
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    move v15, v8

    :goto_6
    if-ge v15, v14, :cond_15

    invoke-virtual {v6, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPalm()F

    move-result v2

    cmpl-float v2, v2, v11

    if-lez v2, :cond_16

    :cond_15
    move v2, v8

    goto :goto_8

    :cond_16
    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    move v2, v8

    :goto_7
    if-ge v2, v13, :cond_18

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

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    goto :goto_8

    :cond_17
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_18
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v6, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v6, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_8

    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :goto_8
    if-nez v2, :cond_1a

    move v8, v7

    :cond_1a
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne v2, v7, :cond_1b

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    return-void

    :cond_1b
    if-ne v2, v10, :cond_1c

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    return-void

    :cond_1c
    if-ne v2, v9, :cond_1d

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    return-void

    :cond_1d
    if-ne v2, v12, :cond_28

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    return-void

    :cond_1e
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    if-eqz v0, :cond_1f

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    :cond_1f
    if-eqz v2, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz v2, :cond_20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_20
    :goto_9
    monitor-exit v3

    return-void

    :goto_a
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_21
    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iput v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    if-eqz v1, :cond_22

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_22
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    if-eqz v1, :cond_23

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_23
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    if-eqz v1, :cond_24

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_24
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    if-eqz v1, :cond_25

    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_25
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    if-eqz v0, :cond_26

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    :cond_26
    if-eqz v2, :cond_28

    iget-object v1, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_27
    :goto_b
    monitor-exit v1

    return-void

    :goto_c
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_28
    :goto_d
    return-void
.end method
