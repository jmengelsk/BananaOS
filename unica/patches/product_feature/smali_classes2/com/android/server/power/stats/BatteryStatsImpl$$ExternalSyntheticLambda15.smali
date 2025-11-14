.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:Landroid/net/NetworkStats;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/android/internal/app/IBatteryStatsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/net/NetworkStats;JLcom/android/internal/app/IBatteryStatsCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$1:Landroid/net/NetworkStats;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$2:J

    iput-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$3:Lcom/android/internal/app/IBatteryStatsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$1:Landroid/net/NetworkStats;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$2:J

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda15;->f$3:Lcom/android/internal/app/IBatteryStatsCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_74

    :try_start_d
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_30

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_30

    goto :goto_11

    :cond_30
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v7

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Landroid/os/SemSimpleNetworkStats;

    invoke-direct {v8, v7}, Landroid/os/SemSimpleNetworkStats;-><init>(I)V

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SemSimpleNetworkStats;

    new-instance v6, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v8

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Landroid/os/SemSimpleNetworkStats;-><init>(IJJ)V

    invoke-virtual {v5, v6}, Landroid/os/SemSimpleNetworkStats;->add(Landroid/os/SemSimpleNetworkStats;)V

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_74
    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastCallbackTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_cd

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :cond_a4
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IBatteryStatsCallback;->notifyNetworkStatsUpdated(Ljava/util/List;)V

    iput-wide v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastCallbackTime:J

    iget-object p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_c5} :catch_c6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_c5} :catch_c6

    return-void

    :catch_c6
    const-string p0, "BatteryStatsImpl"

    const-string v0, "Callback failed to call"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    return-void
.end method
