.class public final Lcom/android/server/power/stats/BatteryStatsImpl$9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public final onAfterIsolatedUidRemoved(II)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    monitor-enter v1

    move v2, p2

    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez p2, :cond_1a

    const/4 p1, -0x1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    :goto_1e
    if-gez p1, :cond_21

    goto :goto_26

    :cond_21
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_26
    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_28

    throw p0
.end method

.method public final onBeforeIsolatedUidRemoved(I)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->retainIsolatedUid(I)V

    monitor-enter v1

    :try_start_e
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPendingRemovedUids:Ljava/util/Queue;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;

    move v3, p1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_2e

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mExternalSync:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    if-eqz p0, :cond_2d

    monitor-enter p0

    :try_start_20
    const-string/jumbo p1, "remove-uid"

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    move-object p1, v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_29

    throw p1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    move-object p0, v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2e

    throw p0
.end method

.method public final onIsolatedUidAdded(II)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    monitor-enter v1

    move v2, p2

    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez p2, :cond_20

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    goto :goto_27

    :cond_20
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_27

    goto :goto_31

    :cond_27
    :goto_27
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_31
    monitor-exit v1

    return-void

    :catchall_33
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_33

    throw p0
.end method
