.class public final Lcom/android/server/wm/DisplayContent$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# virtual methods
.method public final onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return-void
.end method
