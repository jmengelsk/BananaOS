.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, p2

    sub-int/2addr p0, p1

    return p0
.end method
