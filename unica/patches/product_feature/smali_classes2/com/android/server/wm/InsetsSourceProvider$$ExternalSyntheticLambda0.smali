.class public final synthetic Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsSourceProvider;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq p1, v3, :cond_2

    invoke-virtual {v2, p1, p0, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1, p1}, Landroid/view/InsetsSourceControl;->setInsetsHint(Landroid/graphics/Insets;)V

    const/4 v1, 0x1

    :cond_3
    or-int p1, v0, v1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v0, v2, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    :cond_4
    :goto_0
    return-void
.end method
