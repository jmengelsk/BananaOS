.class public final Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    return-void
.end method


# virtual methods
.method public final getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 10

    const-string v1, "Failed to read network stats: "

    const-string/jumbo v0, "getNetworkTotalBytes"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual/range {p0 .. p5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p3
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_19} :catch_21
    .catchall {:try_start_b .. :try_end_19} :catchall_1e

    add-long/2addr p1, p3

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :catchall_1e
    move-exception v0

    move-object p0, v0

    goto :goto_3b

    :catch_21
    move-exception v0

    move-object p0, v0

    :try_start_23
    const-string/jumbo p1, "NetworkPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_1e

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-wide/16 p0, 0x0

    return-wide p0

    :goto_3b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;
    .registers 10

    const-string/jumbo v0, "getNetworkUidBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_e
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual/range {p0 .. p5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    :goto_14
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result p1

    if-eqz p1, :cond_2c

    new-instance p1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_25} :catch_29
    .catchall {:try_start_e .. :try_end_25} :catchall_26

    goto :goto_14

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_4b

    :catch_29
    move-exception v0

    move-object p0, v0

    goto :goto_30

    :cond_2c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_30
    :try_start_30
    const-string/jumbo p1, "NetworkPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_26

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
