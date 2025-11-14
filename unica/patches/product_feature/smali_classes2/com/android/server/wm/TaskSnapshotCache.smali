.class public final Lcom/android/server/wm/TaskSnapshotCache;
.super Lcom/android/server/wm/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sSplitModeMaxCacheSize:I


# instance fields
.field public final mLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mTaskIdsInSplitMode:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppSnapshotLoader;)V
    .locals 1

    const-string/jumbo v0, "Task"

    invoke-direct {p0, v0}, Lcom/android/server/wm/SnapshotCache;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-void
.end method


# virtual methods
.method public final getSnapshot(II)Landroid/window/TaskSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshotInner(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/window/TaskSnapshot;->addReference(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
    .locals 5

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mSafeSnapshotReleaser:Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda3;

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot;->setSafeRelease(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    invoke-direct {v4, p2, v1}, Lcom/android/server/wm/SnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sget v1, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    if-gt v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget v0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    const-wide v3, 0x7fffffffffffffffL

    move v5, v0

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v8, :cond_3

    iget-wide v9, v8, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    iget-object v8, v8, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_6

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v11

    invoke-static {v11}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-boolean v6, v8, Lcom/android/server/wm/ActivityRecord;->mKeepSnapshotCache:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v6, v8, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    if-nez v6, :cond_6

    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_6

    new-instance v8, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/16 v11, 0xc

    invoke-direct {v8, v11}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    cmp-long v6, v9, v3

    if-gez v6, :cond_3

    move v5, v7

    move-wide v3, v9

    goto :goto_2

    :cond_7
    if-eq v5, v0, :cond_8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    :cond_8
    if-eqz v2, :cond_a

    sget p1, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    if-gt p1, v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/android/server/wm/TaskSnapshotCache$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    :cond_a
    :goto_3
    return-void
.end method
