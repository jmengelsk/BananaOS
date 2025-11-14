.class public final Lcom/android/server/pm/AppsFilterImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AppsFilterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/android/server/pm/AppsFilterSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    invoke-direct {v0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_c
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
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_120

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_32
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_11b

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_47
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_116

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_5c
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_111

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_71
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_10c

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_86
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_107

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_9b
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedArraySet;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_102

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

    if-eqz v1, :cond_ec

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_db
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    monitor-exit v1

    goto :goto_f3

    :catchall_e7
    move-exception p0

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_db .. :try_end_e9} :catchall_e7

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_ec
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    :goto_f3
    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    iput-boolean p0, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    new-instance p0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p0, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    return-object v0

    :catchall_102
    move-exception p0

    :try_start_103
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_107
    move-exception p0

    :try_start_108
    monitor-exit v2
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_10c
    move-exception p0

    :try_start_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_111
    move-exception p0

    :try_start_112
    monitor-exit v2
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_116
    move-exception p0

    :try_start_117
    monitor-exit v1
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_11b
    move-exception p0

    :try_start_11c
    monitor-exit v2
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :catchall_120
    move-exception p0

    :try_start_121
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method
