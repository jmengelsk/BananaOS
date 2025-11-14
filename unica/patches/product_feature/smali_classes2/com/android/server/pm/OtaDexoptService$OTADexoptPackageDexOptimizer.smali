.class public final Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final adjustDexoptFlags(I)I
    .registers 2

    or-int/lit8 p0, p1, 0x40

    return p0
.end method

.method public final adjustDexoptNeeded(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, -0x3

    return p0

    :cond_4
    return p1
.end method
