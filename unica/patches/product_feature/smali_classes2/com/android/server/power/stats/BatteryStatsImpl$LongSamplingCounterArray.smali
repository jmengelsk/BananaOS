.class public Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mCounts:[J

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public static -$$Nest$mreadSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    return-object v0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 3

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void

    :cond_c
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public final addCountLocked([JZ)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_1e

    :cond_3
    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p2, :cond_e

    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    :cond_e
    const/4 p2, 0x0

    :goto_f
    array-length v0, p1

    if-ge p2, v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v1, v0, p2

    aget-wide v3, p1, p2

    add-long/2addr v1, v3

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public final getCountsLocked(I)[J
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length p0, p0

    return p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "mCounts="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onTimeStarted(JJ)V
    .registers 5

    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .registers 7

    return-void
.end method

.method public final reset(JZ)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-eqz p0, :cond_9

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    :cond_9
    const/4 p0, 0x1

    return p0
.end method
