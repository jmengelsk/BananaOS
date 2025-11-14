.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRetentionSupplier:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

.field final mWakingActivity:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mRetentionSupplier:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 8

    const-string/jumbo v0, "Recent waking activity:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Subsystem "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_3

    :cond_1
    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v5, v0

    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "], "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final recordActivity(IJLandroid/util/SparseIntArray;)V
    .locals 4

    if-nez p4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    if-nez p1, :cond_2

    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mRetentionSupplier:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;->getAsLong()J

    move-result-wide p0

    sub-long/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p0

    :goto_2
    if-ltz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final removeBetween(IJJ)Landroid/util/SparseIntArray;
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result p1

    invoke-virtual {p0, p4, p5}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p2

    move p3, p2

    :goto_0
    if-lt p3, p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseIntArray;

    const/4 p5, 0x0

    :goto_1
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p5, v1, :cond_0

    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-lt p2, p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-lez p0, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
