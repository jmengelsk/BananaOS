.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZLcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$4:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$1:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$2:J

    iget-boolean v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$3:Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$4:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    check-cast p2, [J

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v0, p2, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)[D

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-wide v1, p2, v0

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    iget-object v3, v3, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v1, v1

    mul-double/2addr v3, v1

    aget-wide v1, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v5, v1, v0

    add-double/2addr v5, v3

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
