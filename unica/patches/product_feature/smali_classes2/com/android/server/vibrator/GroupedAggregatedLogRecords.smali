.class public abstract Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAggregationTimeLimitMs:I

.field public final mGroupedRecords:Landroid/util/SparseArray;

.field public final mSizeLimit:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    iput p2, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getGroupKey()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayDeque;

    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    int-to-long v3, v3

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v5}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getCreateUptimeMs()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getCreateUptimeMs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v7, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    cmp-long v3, v5, v3

    if-gez v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    :try_start_2
    monitor-exit v1

    if-eqz v3, :cond_2

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object p1, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    iget p1, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    add-int/2addr p1, v8

    iput p1, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    if-lt v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    :cond_3
    new-instance v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;-><init>(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_2
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->findGroupKeyProtoFieldId(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v5, p1, v1, v2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    iget v5, v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v5, p1, v1, v2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public abstract dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
.end method

.method public abstract findGroupKeyProtoFieldId(I)J
.end method
