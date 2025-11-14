.class public final Lcom/android/server/pm/SnapshotStatistics$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$1;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 16

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$1;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    iget-object p1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/pm/SnapshotStatistics;->SNAPSHOT_LOG_INTERVAL_US:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    iget v13, p0, Lcom/android/server/pm/SnapshotStatistics;->mPackageCount:I

    iget v4, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    if-nez v4, :cond_2c

    const-wide/16 v5, 0x0

    :goto_2a
    move-wide v10, v5

    goto :goto_31

    :cond_2c
    iget-wide v5, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    int-to-long v7, v4

    div-long/2addr v5, v7

    goto :goto_2a

    :goto_31
    if-nez v4, :cond_35

    move v12, v3

    goto :goto_39

    :cond_35
    iget v5, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    div-int/2addr v5, v4

    move v12, v5

    :goto_39
    iget v4, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    int-to-long v7, v4

    iget v9, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    iget-object v5, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    iget-object v6, v2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    const/16 v4, 0x220

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[IJIJII)V

    goto :goto_4b

    :catchall_48
    move-exception v0

    move-object p0, v0

    goto :goto_5c

    :cond_4b
    :goto_4b
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    iput v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_48

    const-wide/32 v0, 0xea60

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :goto_5c
    :try_start_5c
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_48

    throw p0
.end method
