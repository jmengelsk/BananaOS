.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    const/4 p1, 0x1

    const/16 v0, 0x62

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    const/4 p1, 0x2

    const/16 v0, 0x62

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
