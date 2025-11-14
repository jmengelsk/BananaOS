.class public final Lcom/android/server/wm/SystemPerformancePointerEventListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

.field public final mHandler:Landroid/os/Handler;

.field public mLastAcquireTime:J

.field public final mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

.field public final mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public final mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "WM_SCROLL_DETECTED"

    invoke-static {p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_50

    const v1, 0x10002003

    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    move-result-object v2

    if-eqz v2, :cond_44

    array-length v3, v2

    if-lez v3, :cond_44

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    goto :goto_50

    :cond_44
    const-string/jumbo p1, "SemDvfsManager Not Initialized..."

    const-string/jumbo v1, "SystemPerformancePointerEventListener"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    :cond_50
    :goto_50
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    goto :goto_30

    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    :cond_30
    :goto_30
    return-void
.end method
