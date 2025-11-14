.class public final Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iget-object p3, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getRefreshRate()F

    move-result p3

    const/high16 p4, 0x42b40000  # 90.0f

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_49

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iget-object p4, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p4, :cond_49

    iget-wide v0, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long p4, v0, v2

    if-ltz p4, :cond_49

    iget-object p4, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    if-eqz p4, :cond_49

    iget-object v0, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_49

    iget-object p3, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iget-object p4, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    iget-object p3, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iput-wide p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    const/4 p0, 0x1

    return p0
.end method
