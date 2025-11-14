.class public abstract Lcom/android/server/power/stats/PowerStatsCollector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

.field public volatile mConsumerList:Ljava/util/List;

.field public mEnabled:Z

.field public final mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

.field public mLastScheduledUpdateMs:J

.field public final mThrottlePeriodMs:J

.field public final mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    new-instance p1, Lcom/android/server/power/stats/PowerStatsCollector$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    invoke-virtual {p4, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    iput-object p5, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    return-void
.end method


# virtual methods
.method public final addConsumer(Ljava/util/function/Consumer;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_1f

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_b

    throw p1
.end method

.method public collectAndDump(Ljava/io/PrintWriter;)V
    .registers 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_6a

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": disabled"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Ljava/util/function/Consumer;)V

    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    move-result v3

    if-eqz v3, :cond_4e

    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_65

    :cond_4e
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_56
    if-ge v1, p0, :cond_64

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/os/PowerStats;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/PowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_56

    :cond_64
    return-void

    :catchall_65
    move-exception p1

    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;)V

    throw p1

    :cond_6a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Calling this method from the handler thread would cause a deadlock"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collectStats()Lcom/android/internal/os/PowerStats;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public forceSchedule()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onUidRemoved(I)V
    .registers 2

    return-void
.end method

.method public final removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public schedule()Z
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_5

    goto :goto_1b

    :cond_5
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    sub-long v4, v0, v2

    iget-wide v6, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1d

    :goto_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
