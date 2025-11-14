.class public final synthetic Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-ne p1, p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-nez p1, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    if-nez p2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
