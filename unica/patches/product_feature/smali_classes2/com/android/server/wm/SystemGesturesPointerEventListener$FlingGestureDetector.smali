.class public final Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOverscroller:Landroid/widget/OverScroller;

.field public final synthetic this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/widget/OverScroller;

    iget-object p1, p1, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-wide v3, v3, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const-wide/16 v7, 0x1388

    add-long/2addr v3, v7

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    iget-object v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    move/from16 v3, p3

    float-to-int v10, v3

    move/from16 v3, p4

    float-to-int v11, v3

    const/high16 v14, -0x80000000

    const v15, 0x7fffffff

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    invoke-virtual/range {v7 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v3

    const/16 v4, 0x1388

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iput-wide v1, v4, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_3
    :goto_0
    return v6
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    return v0
.end method
