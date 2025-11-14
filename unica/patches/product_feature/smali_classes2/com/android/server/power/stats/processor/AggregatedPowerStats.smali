.class public final Lcom/android/server/power/stats/processor/AggregatedPowerStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClockUpdates:Ljava/util/List;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field public mDurationMs:J

.field public final mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final mPowerComponentStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    iget-object p1, p1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_41

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget v4, v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    invoke-virtual {p2, v4, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v4, p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iget v2, v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_41
    new-instance p1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    filled-new-array {v0, v3}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v1, 0x2

    filled-new-array {v0, v3, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addClockUpdate(JJ)Z
    .registers 7

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    iput-wide p3, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x64

    const/4 v1, 0x1

    if-ge p1, p2, :cond_1e

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Too many clock updates. Replacing the previous update with "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {p2, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AggregatedPowerStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    move-object p1, p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public final addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .registers 15

    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez v1, :cond_cb

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    new-instance v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iget-object v1, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v4, v3

    iget-object v5, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v6, v5

    const-wide/16 v7, 0x0

    if-ne v4, v6, :cond_46

    array-length v4, v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v3, :cond_66

    invoke-virtual {v2, v7, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v3, :cond_66

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v3, v4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    goto :goto_66

    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "State configurations have different lengths: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AggregatePowerStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_6e
    if-ltz v3, :cond_ab

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    if-nez v6, :cond_83

    goto :goto_a8

    :cond_83
    new-instance v9, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    array-length v10, v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_a3

    invoke-virtual {v2, v9, v7, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    iget-object v6, v9, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_a3

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v6, v5}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    :cond_a3
    iget-object v5, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_a8
    add-int/lit8 v3, v3, -0x1

    goto :goto_6e

    :cond_ab
    iget-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    if-nez v1, :cond_c0

    iget-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    if-nez v1, :cond_b8

    sget-object v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    goto :goto_be

    :cond_b8
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    :goto_be
    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    :cond_c0
    iget-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    :cond_cb
    iget-object p0, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    iget-object v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a3

    iget-object v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "GMT"

    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    if-nez v4, :cond_63

    iget-wide v1, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    const-string/jumbo v8, "Start time: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") duration: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_9f

    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "Clock update:  "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    sub-long/2addr v8, v1

    const/16 v10, 0x16

    invoke-static {v8, v9, v0, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_a3
    const-string v0, "Device"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v3

    :goto_ac
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    :cond_c2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, v3

    :goto_cb
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f8

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_e5
    if-ltz v4, :cond_f5

    invoke-virtual {v2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_e5

    :cond_f5
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_f8
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, v0

    move v2, v3

    :goto_109
    if-ge v2, v1, :cond_14f

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v5, v3

    :goto_11c
    iget-object v6, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_149

    iget-object v6, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz v7, :cond_146

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v7, :cond_146

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v8, v6, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v6

    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    :cond_146
    add-int/lit8 v5, v5, 0x1

    goto :goto_11c

    :cond_149
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_109

    :cond_14f
    return-void
.end method

.method public final reset()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iput-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iput-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_31
    if-ltz v4, :cond_4a

    iget-object v5, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iput-object v3, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v5, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iput-boolean v0, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_4d
    return-void
.end method

.method public final setDeviceState(IIJ)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_80

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_18

    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    :cond_18
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aput p2, v2, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v2, p1

    iget-boolean v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v3, :cond_43

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v3, :cond_2b

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_2b
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_33
    if-ltz v3, :cond_43

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    :cond_43
    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-static {v3, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7d

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v3, :cond_7d

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_5e
    if-ltz v3, :cond_7d

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v5, :cond_6f

    invoke-virtual {v1, v4, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_6f
    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p2, v5, v2

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v4, :cond_7a

    invoke-virtual {v4, v2, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_7a
    add-int/lit8 v3, v3, -0x1

    goto :goto_5e

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_80
    return-void
.end method

.method public final setUidState(IIJ)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v2, :cond_20

    goto :goto_36

    :cond_20
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v4, :cond_2b

    invoke-virtual {v1, v2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_2b
    iget-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p2, v1, v3

    iget-object v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_36

    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
