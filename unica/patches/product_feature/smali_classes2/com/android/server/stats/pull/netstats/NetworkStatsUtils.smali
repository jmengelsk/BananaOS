.class public abstract Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;
    .registers 19

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v1, v5, :cond_17

    if-eq v1, v4, :cond_15

    move v1, v3

    move v3, v6

    goto :goto_19

    :cond_15
    move v1, v3

    goto :goto_19

    :cond_17
    move v1, v3

    move v3, v5

    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTag()I

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_21

    :cond_20
    move v7, v6

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getMetered()I

    move-result v8

    if-eq v8, v5, :cond_2d

    if-eq v8, v4, :cond_2b

    move v8, v6

    goto :goto_2e

    :cond_2b
    move v8, v1

    goto :goto_2e

    :cond_2d
    move v8, v5

    :goto_2e
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRoaming()I

    move-result v9

    if-eq v9, v5, :cond_3b

    if-eq v9, v4, :cond_38

    move v9, v6

    goto :goto_3d

    :cond_38
    move v9, v6

    move v6, v1

    goto :goto_3d

    :cond_3b
    move v9, v6

    move v6, v5

    :goto_3d
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getDefaultNetworkStatus()I

    move-result v10

    if-eq v10, v5, :cond_4a

    if-eq v10, v4, :cond_48

    move v5, v8

    move v1, v9

    goto :goto_4c

    :cond_48
    :goto_48
    move v5, v8

    goto :goto_4c

    :cond_4a
    move v1, v5

    goto :goto_48

    :goto_4c
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    move v4, v7

    move v7, v1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1b
    new-instance p0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method
