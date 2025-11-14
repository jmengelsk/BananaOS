.class public final synthetic Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/ScreenPowerStatsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/ScreenPowerStatsCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/ScreenPowerStatsCollector;

    return-void
.end method


# virtual methods
.method public final onUidTopActivityTime(IJ)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/ScreenPowerStatsCollector;

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget p2, p2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array p2, p2, [J

    iget-object p3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget p1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aget-wide v4, p2, p1

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aput-wide v0, p2, p0

    return-void
.end method
