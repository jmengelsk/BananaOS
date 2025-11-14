.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/server/wm/WindowState;

    const/16 p0, 0x80

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
