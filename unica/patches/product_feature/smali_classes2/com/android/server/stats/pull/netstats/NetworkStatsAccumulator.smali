.class public final Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBucketDurationMillis:J

.field public mSnapshot:Landroid/net/NetworkStats;

.field public mSnapshotEndTimeMillis:J

.field public final mTemplate:Landroid/net/NetworkTemplate;

.field public final mWithTags:Z


# direct methods
.method public constructor <init>(Landroid/net/NetworkTemplate;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    iput-boolean p2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    iput-wide p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    new-instance p1, Landroid/net/NetworkStats;

    const-wide/16 p2, 0x0

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    iput-wide p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    return-void
.end method
