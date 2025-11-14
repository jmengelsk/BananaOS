.class public final Lcom/android/server/pm/SharedLibrariesImpl$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iget-object p0, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method
