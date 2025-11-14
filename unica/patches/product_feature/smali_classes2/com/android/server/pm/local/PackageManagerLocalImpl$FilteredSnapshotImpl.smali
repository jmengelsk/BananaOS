.class public final Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;


# instance fields
.field public final mCallingUid:I

.field public mFilteredPackageStates:Ljava/util/Map;

.field public final mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

.field public final mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/PackageSetting;)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    iput p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    iput-object p4, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    iput-object p5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public final checkClosed()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    :cond_7
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    return-void
.end method

.method public final close()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    return-void
.end method

.method public final getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->checkClosed()V

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    iget v1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    iget p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->checkClosed()V

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_4d

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    iget-object v5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_35

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v4, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/PackageSetting;

    :cond_35
    iget-object v5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    iget v6, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    iget v7, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    invoke-interface {v5, v4, v6, v7}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_4d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    :cond_53
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    return-object p0
.end method
