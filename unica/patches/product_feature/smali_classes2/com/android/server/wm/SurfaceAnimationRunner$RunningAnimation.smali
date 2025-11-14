.class public final Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAnim:Landroid/animation/ValueAnimator;

.field public final mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field public mCancelled:Z

.field public final mFinishCallback:Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;

.field public final mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;

    return-void
.end method
