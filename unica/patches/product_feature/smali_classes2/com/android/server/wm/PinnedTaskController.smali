.class public final Lcom/android/server/wm/PinnedTaskController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDeferOrientationChanging:Z

.field public final mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

.field public mDestRotatedBounds:Landroid/graphics/Rect;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreezingTaskConfig:Z

.field public mImeHeight:I

.field public mIsImeShowing:Z

.field public mMaxAspectRatio:F

.field public mMinAspectRatio:F

.field public mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

.field public final mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance p2, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050117

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    const p2, 0x1050116

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    return-void
.end method


# virtual methods
.method public final continueOrientationChange()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :cond_0
    return-void
.end method

.method public final deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    .locals 4

    new-instance v0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(ILcom/android/server/wm/ActivityRecord;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
