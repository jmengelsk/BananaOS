.class public final Lcom/android/server/pm/AppsFilterImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AppsFilterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/server/pm/AppsFilterSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    invoke-direct {v0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedArraySet;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    iput-boolean v1, v0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v1}, Lcom/android/server/pm/FeatureConfig;->snapshot()Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    iput-boolean v1, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    iget-boolean v1, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_0
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    :goto_0
    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    iput-boolean p0, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    new-instance p0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p0, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_5
    move-exception p0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_6
    move-exception p0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_7
    move-exception p0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method
