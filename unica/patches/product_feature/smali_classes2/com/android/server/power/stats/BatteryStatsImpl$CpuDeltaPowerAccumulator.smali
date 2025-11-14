.class public Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

.field public final mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

.field public mUidClusterCache:[D

.field public final perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

.field public final totalClusterChargesMah:[D


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/CpuPowerCalculator;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    new-array p1, p2, [D

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final addCpuClusterSpeedDurationsMs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;IIJ)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)[D

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    iget-object v0, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v0, v0, p2

    aget-object p3, v0, p3

    iget-wide v0, p3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p3, p4

    mul-double/2addr v0, p3

    aget-wide p3, p1, p2

    add-double/2addr p3, v0

    aput-wide p3, p1, p2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide p3, p0, p2

    add-double/2addr p3, v0

    aput-wide p3, p0, p2

    return-void
.end method

.method public final getOrCreateUidCpuClusterCharges(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)[D
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    array-length v0, v0

    new-array v0, v0, [D

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    return-object v0
.end method
