.class public Lcom/android/server/wm/LocalAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public final mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iput-object p2, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4, p3}, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    iget-object p3, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V

    return-void
.end method
