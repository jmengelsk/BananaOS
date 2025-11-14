.class public final Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    new-instance p3, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-void
.end method


# virtual methods
.method public final detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    return-void
.end method

.method public final getSubTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public final readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public final reset(JZ)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(JZ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(JZ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final startRunningLocked(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    return-void
.end method

.method public final stopAllRunningLocked(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    return-void
.end method

.method public final stopRunningLocked(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public final writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    return-void
.end method
