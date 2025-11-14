.class public final Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;


# instance fields
.field public mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

.field public mCachedUnmodifiablePackageStates:Ljava/util/Map;

.field public mCachedUnmodifiableSharedUsers:Ljava/util/Map;


# virtual methods
.method public final close()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    return-void
.end method

.method public final filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 6

    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object v3, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    const/4 v5, 0x0

    move-object v4, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/PackageSetting;)V

    return-object v0
.end method

.method public final getDisabledSystemPackageStates()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getDisabledSystemPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getSharedUsers()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    return-object p0
.end method
