.class public Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mCount:J

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public final addCountLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    return-void
.end method

.method public final addCountLocked(JZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    :cond_0
    return-void
.end method

.method public final detach()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public final getCountForProcessState(I)J
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getCountLocked(I)J
    .locals 0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "mCount="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    return-void
.end method

.method public final readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    const/4 p0, 0x1

    return p0
.end method
