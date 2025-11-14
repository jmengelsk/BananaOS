.class public final Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    iget p0, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iget p1, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lt p0, p1, :cond_1

    if-ne p0, p1, :cond_0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
