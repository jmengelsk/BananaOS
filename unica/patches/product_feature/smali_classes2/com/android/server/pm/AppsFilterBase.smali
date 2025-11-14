.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public volatile mCacheEnabled:Z

.field public volatile mCacheReady:Z

.field public final mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field public mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

.field public mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field public mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mHandler:Landroid/os/Handler;

.field public mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public volatile mNeedToUpdateCacheForImplicitAccess:Z

.field public mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field public mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

.field public mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

.field public mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSystemAppsQueryable:Z

.field public mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 8

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_45

    if-eqz p1, :cond_10

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_10
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p1, :cond_33

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_33
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p5, p3}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_21

    :cond_45
    return-void
.end method

.method public static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 12

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_40

    iget-object v0, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p4, v1}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    goto :goto_3d

    :cond_2c
    iget-object v2, p2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p4, v1}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    :goto_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_40
    return-void
.end method


# virtual methods
.method public final canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_d

    goto :goto_38

    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_38

    :cond_16
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_38

    :cond_24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    :goto_38
    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 10

    const-string v0, "  queries via forceQueryable:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    const-string/jumbo v3, "forceQueryable"

    const-string v4, "  "

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 5

    const-string v0, "  queries via component:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 12

    const-string v0, "  queryable via interaction:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v0, p3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4d

    aget v2, p3, v1

    const-string v3, "    User "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p2, :cond_23

    move-object v4, v3

    goto :goto_2f

    :cond_23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2f
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    if-nez p2, :cond_39

    goto :goto_45

    :cond_39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_45
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p1, v3, v2, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4d
    return-void
.end method

.method public dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 5

    const-string v0, "  queries via package name:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .registers 5

    const-string v0, "  queryable via uses-library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public final getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .registers 21

    move-object/from16 v0, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_10

    return-object v8

    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    array-length v3, v0

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    :goto_18
    array-length v3, v0

    if-ge v10, v3, :cond_83

    aget v7, v0, v10

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    new-array v12, v11, [I

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v13, v3

    move-object v15, v8

    move v14, v9

    :goto_2c
    if-ltz v13, :cond_75

    move-object/from16 v3, p4

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/16 v6, 0x2710

    if-ge v4, v6, :cond_41

    :goto_3f
    move v4, v9

    goto :goto_6e

    :cond_41
    invoke-static {v12, v9, v14, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v6

    if-ltz v6, :cond_48

    goto :goto_3f

    :cond_48
    move v8, v4

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    move-object/from16 v3, p1

    move v9, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v4

    if-nez v4, :cond_6d

    if-nez v15, :cond_5c

    new-array v15, v11, [I

    :cond_5c
    not-int v2, v9

    sub-int v3, v14, v2

    const/4 v4, 0x0

    invoke-static {v12, v2, v15, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v8, v12, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v15, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p0

    move v9, v4

    const/4 v8, 0x0

    goto :goto_2c

    :cond_75
    move v4, v9

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    const/4 v8, 0x0

    goto :goto_18

    :cond_83
    return-object v1
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    iget-object p4, p4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public isForceQueryable(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isImplicitlyQueryable(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponent(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 7

    const/4 p1, 0x1

    if-eqz p2, :cond_16

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-eqz p3, :cond_35

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p2, p4, p0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_31

    :cond_16
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_1b
    if-ltz p2, :cond_35

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p5

    if-eqz p5, :cond_32

    iget-object p6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p5, p4, p6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p5

    if-eqz p5, :cond_32

    :goto_31
    return p1

    :cond_32
    add-int/lit8 p2, p2, -0x1

    goto :goto_1b

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public isQueryableViaPackage(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesPermission(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 15

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_93

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    if-lt v2, v1, :cond_93

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_16

    goto/16 :goto_93

    :cond_16
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p5, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p3

    if-nez p3, :cond_93

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    if-nez p0, :cond_93

    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p0

    if-ne p1, p0, :cond_92

    goto :goto_93

    :cond_3c
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    if-eqz v1, :cond_53

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-virtual {p0, p2, p1, p5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_93

    :cond_4f
    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    goto :goto_62

    :cond_53
    move-object v4, p1

    check-cast v4, Lcom/android/server/pm/Computer;

    move-object v3, p0

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_93

    :cond_62
    :goto_62
    iget-object p0, v3, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, v0}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_92

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "interaction: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_78

    const-string/jumbo p3, "system"

    goto :goto_79

    :cond_78
    move-object p3, v6

    :goto_79
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " BLOCKED"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppsFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return v2

    :cond_93
    :goto_93
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    goto/16 :goto_170

    :cond_b
    const/4 v0, 0x1

    if-nez p3, :cond_17

    const-string/jumbo p0, "No setting found for non system uid "

    const-string p1, "AppsFilter"

    invoke-static {p2, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_17
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    if-eq v7, v8, :cond_170

    const/16 v2, 0x2710

    if-lt v7, v2, :cond_170

    if-ge v8, v2, :cond_29

    goto/16 :goto_170

    :cond_29
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    instance-of v2, p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p3

    if-eqz p3, :cond_4e

    iget-object p3, p3, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p3, p3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_4e

    :cond_4d
    move-object v3, p3

    :cond_4e
    :goto_4e
    move-object v4, v3

    goto :goto_5a

    :cond_50
    check-cast p3, Lcom/android/server/pm/SharedUserSetting;

    iget-object p3, p3, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p3, p3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_4e

    :goto_5a
    if-eqz v4, :cond_70

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-eqz p3, :cond_90

    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p3

    if-nez p3, :cond_90

    goto/16 :goto_170

    :cond_70
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_75
    if-ltz p3, :cond_90

    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_8d

    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_8d

    goto/16 :goto_170

    :cond_8d
    add-int/lit8 p3, p3, -0x1

    goto :goto_75

    :cond_90
    const-string/jumbo p3, "android.permission.QUERY_ALL_PACKAGES"

    if-eqz v4, :cond_ab

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_cd

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cd

    goto/16 :goto_170

    :cond_ab
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_b0
    if-ltz v2, :cond_cd

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_ca

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    goto/16 :goto_170

    :cond_ca
    add-int/lit8 v2, v2, -0x1

    goto :goto_b0

    :cond_cd
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_dd

    const-wide/16 p0, 0x2000

    invoke-static {p4, p0, p1, p5}, Lcom/samsung/android/server/pm/PmServerUtils;->installedOnSdcardAsUser(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Z

    move-result p0

    if-eqz p0, :cond_16f

    goto/16 :goto_170

    :cond_dd
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result p3

    if-eqz p3, :cond_e5

    goto/16 :goto_170

    :cond_e5
    invoke-virtual {p0, v8}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p3

    if-eqz p3, :cond_ed

    goto/16 :goto_170

    :cond_ed
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result p3

    if-eqz p3, :cond_f5

    goto/16 :goto_170

    :cond_f5
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_107

    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result p1

    if-eqz p1, :cond_105

    goto/16 :goto_170

    :cond_105
    move-object v2, p0

    goto :goto_113

    :cond_107
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    move-result p0

    if-eqz p0, :cond_113

    goto :goto_170

    :cond_113
    :goto_113
    invoke-static {p5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-virtual {v2, p2, p0}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    if-eqz p0, :cond_11e

    goto :goto_170

    :cond_11e
    invoke-static {p5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-virtual {v2, p2, p0}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result p0

    if-eqz p0, :cond_129

    goto :goto_170

    :cond_129
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_152

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result p1

    move p2, v1

    :goto_138
    if-ge p2, p1, :cond_161

    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p3, :cond_14f

    iget-object p4, v2, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p0, p3}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14f

    goto :goto_170

    :cond_14f
    add-int/lit8 p2, p2, 0x1

    goto :goto_138

    :cond_152
    if-eqz v4, :cond_161

    iget-object p1, v2, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_161

    goto :goto_170

    :cond_161
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result p0

    if-eqz p0, :cond_168

    goto :goto_170

    :cond_168
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    move-result p0

    if-eqz p0, :cond_16f

    goto :goto_170

    :cond_16f
    return v0

    :cond_170
    :goto_170
    return v1
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AppsFilter"

    if-gez v0, :cond_11

    const-string p0, "Encountered calling uid with no cached rules: "

    invoke-static {p1, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p3, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_37

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Encountered calling -> target with no cached rules: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_37
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget p2, p1, v0

    aget p1, p1, p3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result p0

    return p0
.end method
