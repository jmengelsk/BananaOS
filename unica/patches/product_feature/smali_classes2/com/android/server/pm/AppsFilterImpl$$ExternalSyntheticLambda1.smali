.class public final synthetic Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilterImpl;

.field public final synthetic f$1:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppsFilterImpl;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManagerInternal;

    iput-wide p3, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppsFilterImpl;

    iget-object v3, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManagerInternal;

    iget-wide v4, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$3:J

    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v7

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-array v9, v1, [[Landroid/content/pm/UserInfo;

    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-interface {v10}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    aput-object v12, v9, v6

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    move v14, v6

    :goto_0
    if-ge v14, v13, :cond_1

    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p0, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v14, v1

    move/from16 v6, p0

    goto :goto_0

    :cond_1
    move/from16 p0, v6

    aget-object v0, v9, p0

    const/4 v6, -0x1

    invoke-virtual {v2, v10, v11, v0, v6}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v9

    sub-long v15, v9, v7

    array-length v0, v12

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v18

    iget-object v6, v2, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget v6, v6, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const/16 v13, 0x221

    const/4 v14, 0x1

    move/from16 v17, v0

    move/from16 v19, v6

    invoke-static/range {v13 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIII)V

    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AppsFilter"

    const-string v1, "Cache invalidated while building, retrying."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x2

    mul-long/2addr v4, v0

    const-wide/16 v0, 0x2710

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v4, v2, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-boolean v0, v2, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    move/from16 v0, p0

    iput-boolean v0, v2, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v1, v2, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method
