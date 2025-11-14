.class public interface abstract Lcom/android/server/wm/AnimationAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 2

    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-interface {p0, p1}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public abstract dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract getDurationHint()J
.end method

.method public abstract onAnimationCancelled(Landroid/view/SurfaceControl;)V
.end method

.method public shouldDeferAnimationFinish()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
.end method
