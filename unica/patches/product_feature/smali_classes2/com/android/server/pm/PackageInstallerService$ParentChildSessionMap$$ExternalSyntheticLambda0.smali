.class public final synthetic Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p1, :cond_7

    iget-wide p0, p1, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    return-wide p0

    :cond_7
    const-wide/16 p0, -0x1

    return-wide p0
.end method
