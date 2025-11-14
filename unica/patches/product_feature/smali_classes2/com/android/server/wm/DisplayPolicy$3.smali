.class public final Lcom/android/server/wm/DisplayPolicy$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic val$detector:Landroid/view/TwoFingerSwipeGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    return-void
.end method


# virtual methods
.method public final onCommitted(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v3, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    iget-object v2, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eqz v5, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eq p1, v6, :cond_3

    if-eq p1, v7, :cond_3

    if-ne p1, v8, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_2

    if-ne p1, v8, :cond_5

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    if-eq p1, v6, :cond_3

    if-ne p1, v7, :cond_5

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v7, :cond_4

    if-ne p1, v8, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDetecting()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean v2, v2, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    div-int/lit16 p0, p0, 0xa0

    int-to-float p0, p0

    const/16 v3, 0xd

    invoke-virtual {v2, v1, p0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FI)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
