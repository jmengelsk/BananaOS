.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/location/LocationManagerInternal$LocationPackageTagsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    return-void
.end method


# virtual methods
.method public final onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    new-instance p2, Landroid/os/PackageTagsList$Builder;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PackageTagsList;

    invoke-virtual {p2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
