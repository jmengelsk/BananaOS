.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    iget-object v2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->isFastCpuTimesReader()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result p1

    new-instance v2, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-direct {v2, v4, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    new-array p0, p1, [J

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues([JJ)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-void
.end method
