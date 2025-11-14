.class public final Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCount:I

.field public final mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

.field public mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string v0, "-> Skipping "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v1, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V

    iget v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " aggregated entries, latest:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
