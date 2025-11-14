.class public final synthetic Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LocalAnimationAdapter;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    iput-object p2, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput p3, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v1, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget p0, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p0, v0}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
