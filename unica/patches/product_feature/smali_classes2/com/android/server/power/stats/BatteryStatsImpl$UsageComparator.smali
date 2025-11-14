.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Landroid/os/SemSimpleNetworkStats;

    check-cast p2, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_12

    const/4 p0, -0x1

    return p0

    :cond_12
    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide p0

    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
