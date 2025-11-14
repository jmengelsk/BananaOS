.class public final synthetic Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p1, :cond_0

    iget p0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
