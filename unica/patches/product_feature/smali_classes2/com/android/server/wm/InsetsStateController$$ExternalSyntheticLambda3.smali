.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    goto :goto_1e

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result p0

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    :goto_17
    if-eqz p0, :cond_1e

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    :cond_23
    return-void
.end method
