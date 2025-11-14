.class public final Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLastMobileUidStats:Landroid/net/NetworkStats;

.field public final mLock:Ljava/lang/Object;

.field public final mMobileDataStatsHandler:Landroid/os/Handler;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public final mUidPreviousState:Landroid/util/SparseIntArray;

.field public final mUidStats:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/app/usage/NetworkStatsManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    new-instance v0, Lcom/android/server/selinux/RateLimiter;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const-string/jumbo v0, "MobileDataStatsHandler"

    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mMobileDataStatsHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static isEmpty(Landroid/net/NetworkStats;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    new-instance v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-direct {v1, p1, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;-><init>(II)V

    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/16 v0, 0xbb8

    if-ge p1, v0, :cond_1

    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final pullDataBytesTransfer(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransferLocked(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pullDataBytesTransferLocked(Ljava/util/List;)V
    .locals 14

    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    iget-wide v2, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v1, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    iget v4, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    iget v0, v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    iget-wide v8, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    iget-wide v10, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    iget-wide v12, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    const/16 v3, 0x27dc

    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V
    .locals 7

    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->getMobileUidStats()Landroid/net/NetworkStats;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    invoke-virtual {p1, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    invoke-static {v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    goto :goto_0

    :cond_3
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method
