.class public final Lcom/android/server/sepunion/cover/CoverHideAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
