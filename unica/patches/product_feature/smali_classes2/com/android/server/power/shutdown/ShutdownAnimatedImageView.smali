.class public final Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;
.super Landroid/widget/ImageView;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public listener:Lcom/android/server/power/shutdown/AnimationPlayer;


# virtual methods
.method public final onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;->onSizeChanged(IIII)V

    :cond_a
    return-void
.end method
