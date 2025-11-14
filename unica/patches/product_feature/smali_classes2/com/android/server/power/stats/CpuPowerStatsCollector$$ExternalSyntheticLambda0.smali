.class public final synthetic Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/CpuPowerStatsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CpuPowerStatsCollector;

    return-void
.end method


# virtual methods
.method public final processUidStats(I[J)V
    .registers 12

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CpuPowerStatsCollector;

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v0, v0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    if-nez v1, :cond_26

    new-instance v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget v2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_26
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    if-ltz v0, :cond_50

    aget-wide v5, p2, v0

    iget-object v7, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v7, v7, v0

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3e

    move v4, v2

    :cond_3e
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v8, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    iget v7, v7, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr v7, v0

    aput-wide v5, v8, v7

    iget-object v5, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v6, p2, v0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_50
    if-eqz v4, :cond_88

    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    goto :goto_63

    :cond_5d
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    :goto_63
    iget-object p2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    if-nez p2, :cond_79

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p0, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_79
    :goto_79
    array-length p0, p2

    if-ge v3, p0, :cond_88

    aget-wide p0, p2, v3

    iget-object v0, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    aget-wide v4, v0, v3

    add-long/2addr p0, v4

    aput-wide p0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_88
    return-void
.end method
