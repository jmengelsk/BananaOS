.class public final Lcom/android/server/power/stats/PowerStatsUidResolver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

.field public final mIsolatedUids:Landroid/util/SparseIntArray;

.field public volatile mListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "Currently mapped isolated uids:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_4f

    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (ref count = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catchall_4d
    move-exception p1

    goto :goto_51

    :cond_4f
    monitor-exit p0

    return-void

    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_4d

    throw p1
.end method

.method public final mapUid(I)I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final releaseIsolatedUid(I)V
    .registers 5

    const-string v0, "Attempted to remove untracked child uid ("

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_17

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_60

    :cond_17
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_47

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_15

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_46

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    invoke-interface {v2, p1, v0}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onAfterIsolatedUidRemoved(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_46
    return-void

    :cond_47
    :try_start_47
    const-string/jumbo v1, "PowerStatsUidResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_15

    throw p1
.end method

.method public final retainIsolatedUid(I)V
    .registers 5

    const-string v0, "Attempted to increment ref counted of untracked isolated uid ("

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-gtz v1, :cond_27

    const-string/jumbo v1, "PowerStatsUidResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    goto :goto_30

    :cond_27
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit p0

    return-void

    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_25

    throw p1
.end method
