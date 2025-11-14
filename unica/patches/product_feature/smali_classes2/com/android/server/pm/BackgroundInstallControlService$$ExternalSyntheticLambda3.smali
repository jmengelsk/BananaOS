.class public final synthetic Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getCreatedMillis()J

    move-result-wide p0

    return-wide p0
.end method
