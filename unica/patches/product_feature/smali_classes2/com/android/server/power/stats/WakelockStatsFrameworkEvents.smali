.class public final Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HARD_CAP_TAG:Ljava/lang/String; = "*overflow hard cap*"

.field public static final HARD_CAP_UID:I = -0x1

.field public static final MAX_WAKELOCK_DIMENSIONS:I = 0x3e8

.field public static final OVERFLOW_LEVEL:I = 0x1

.field public static final OVERFLOW_TAG:Ljava/lang/String; = "*overflow*"

.field public static final SUMMARY_THRESHOLD:I = 0x1f4


# instance fields
.field public mIsInitialized:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOpenWakeLocks:Ljava/util/Map;

.field public final mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

.field public final mWakeLockStats:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    return-void
.end method


# virtual methods
.method public inHardCap()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public inOverflow()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public pullFrameworkWakelockInfoAtoms(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;)V
    .registers 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget-object v4, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inOverflow()Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-object v4, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    iget-object v6, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    iget-object v6, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    const-string v7, "*overflow*"

    iput-object v7, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    iget v7, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v7

    iput v7, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inHardCap()Z

    move-result v7

    if-eqz v7, :cond_82

    iget-object v7, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_82

    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setHardCap()V

    goto :goto_82

    :catchall_7f
    move-exception v0

    goto/16 :goto_103

    :cond_82
    :goto_82
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    iget-wide v8, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    iget-wide v10, v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v10, p1, v10

    add-long/2addr v10, v8

    iput-wide v10, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_9e
    iget-object v4, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_a9
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    iget-object v5, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    if-eqz v5, :cond_ca

    iget-wide v5, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v5, p1, v5

    goto :goto_cc

    :cond_ca
    const-wide/16 v5, 0x0

    :goto_cc
    iget-object v7, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    new-instance v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;-><init>(I)V

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    new-instance v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    iget-wide v9, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long/2addr v5, v9

    iget-wide v9, v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long v15, v5, v9

    iget-wide v5, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    iget-wide v7, v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    add-long v17, v5, v7

    iget v12, v4, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    iget-object v14, v4, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget v13, v4, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    move-object/from16 v11, p3

    invoke-interface/range {v11 .. v18}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;->logResult(IILjava/lang/String;JJ)V

    goto :goto_ad

    :cond_101
    monitor-exit v3

    return-void

    :goto_103
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_f .. :try_end_104} :catchall_7f

    throw v0
.end method
