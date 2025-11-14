.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput p0, p1, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    :cond_0
    return-void
.end method
