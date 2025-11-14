.class public final Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "cpu.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .registers 15

    iget-object v0, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    sget-object v1, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object p0, p0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v6, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v2, v2

    mul-double/2addr v6, v2

    iget-object p0, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v1, p0, v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object p0, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    move-wide v2, v4

    :goto_23
    if-ltz p0, :cond_35

    iget-object v0, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v8

    add-long/2addr v2, v8

    add-int/lit8 p0, p0, -0x1

    goto :goto_23

    :cond_35
    cmp-long p0, v2, v4

    if-eqz p0, :cond_59

    iget-object p0, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_41
    if-ltz p0, :cond_59

    iget-object v0, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v6

    long-to-double v8, v2

    div-double/2addr v4, v8

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_41

    :cond_59
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 4

    return-void
.end method
