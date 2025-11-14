.class public final Lcom/android/server/utils/AnrTimer$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/utils/AnrTimer;

    check-cast p2, Lcom/android/server/utils/AnrTimer;

    iget-object p0, p1, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
