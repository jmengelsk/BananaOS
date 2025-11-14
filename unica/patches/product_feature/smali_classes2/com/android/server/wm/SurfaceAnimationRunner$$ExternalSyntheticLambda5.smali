.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

.field public final synthetic f$2:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$2:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;->f$2:Landroid/animation/ValueAnimator;

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-boolean v2, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    if-nez v2, :cond_27

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-lez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move-wide v2, v4

    :goto_1b
    iget-object p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v4, p0, v0, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_39

    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_25

    iget-boolean p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez p0, :cond_38

    iget-object p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    :cond_38
    return-void

    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_25

    throw p0
.end method
