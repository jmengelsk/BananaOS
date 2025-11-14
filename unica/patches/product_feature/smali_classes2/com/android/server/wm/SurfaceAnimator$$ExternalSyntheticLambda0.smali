.class public final synthetic Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;

    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_c
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v2, :cond_24

    iget-object p0, v2, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    goto :goto_53

    :cond_24
    :try_start_24
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p2, v2, :cond_2d

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2d
    :try_start_2d
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->shouldDeferAnimationFinish()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4c

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p2, v2, :cond_39

    goto :goto_4c

    :cond_39
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v4}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    if-eqz v2, :cond_4c

    invoke-interface {v2, p1, p2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_4c
    :goto_4c
    iput-boolean v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_53
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
