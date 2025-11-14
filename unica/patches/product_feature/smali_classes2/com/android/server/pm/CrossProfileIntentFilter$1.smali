.class public final Lcom/android/server/pm/CrossProfileIntentFilter$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/CrossProfileIntentFilter;)V

    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method
