.class public final Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final isTypeProxy:Z

.field public final oemManaged:I

.field public final ratType:I

.field public final slicedByFgbg:Z

.field public final slicedByMetered:Z

.field public final slicedByTag:Z

.field public final stats:Landroid/net/NetworkStats;

.field public final subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

.field public final transports:[I


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;[IZ)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iput-boolean p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iput-boolean p4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iput-boolean p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iput p6, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iput-object p7, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iput p8, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    iput-boolean p9, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    return-void
.end method
