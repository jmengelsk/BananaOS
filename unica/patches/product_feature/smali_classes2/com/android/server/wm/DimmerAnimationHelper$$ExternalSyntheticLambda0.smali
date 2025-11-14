.class public final synthetic Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DimmerAnimationHelper;

.field public final synthetic f$1:Lcom/android/server/wm/Dimmer$DimState;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DimmerAnimationHelper;

    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Dimmer$DimState;

    iput p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DimmerAnimationHelper;

    iget-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Dimmer$DimState;

    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$2:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    const v2, 0x953c

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-ne v3, v1, :cond_0

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v2, 0x0

    cmpl-float p0, p0, v2

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_1
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    iput-object p0, p1, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
