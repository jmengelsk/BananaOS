.class public final Lcom/android/server/wm/FadeAnimationController$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mTransformation:Landroid/view/animation/Transformation;

.field public final synthetic val$animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    new-instance p1, Landroid/view/animation/Transformation;

    invoke-direct {p1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method
