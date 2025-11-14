.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAdaptiveBatterySaverEnabledCount:I

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatterySaverEnabledCount:I

.field public mCurrentState:I

.field public mLastAdaptiveBatterySaverDisabledTime:J

.field public mLastAdaptiveBatterySaverEnabledTime:J

.field public mLastBatterySaverDisabledTime:J

.field public mLastBatterySaverEnabledTime:J

.field public final mLock:Ljava/lang/Object;

.field final mStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BS="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v1, p0, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const-string/jumbo p0, "NotInitialized"

    return-object p0
.end method

.method public static statesToIndex(IIII)I
    .registers 4

    and-int/lit8 p0, p0, 0x3

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x1

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 16

    const-string v0, "Battery saving stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v6, "Battery Saver is currently: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    and-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_3e

    const/4 v7, 0x1

    if-eq v6, v7, :cond_37

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2d

    goto :goto_44

    :cond_2d
    const-string v6, "ADAPTIVE"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto/16 :goto_156

    :cond_37
    const-string/jumbo v6, "ON"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    :cond_3e
    const-string/jumbo v6, "OFF"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_44
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_72

    const-string v6, "Last ON time: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    sub-long v10, v2, v4

    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v6, v7, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_72
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_9b

    const-string v6, "Last OFF time: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    sub-long v10, v2, v4

    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v6, v7, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_9b
    const-string/jumbo v6, "Times full enabled: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_cf

    const-string v6, "Last ADAPTIVE ON time: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    sub-long v10, v2, v4

    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    add-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    invoke-static {v6, v7, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_cf
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_f7

    const-string v6, "Last ADAPTIVE OFF time: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    sub-long/2addr v2, v4

    iget-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    add-long/2addr v2, v7

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_f7
    const-string/jumbo v0, "Times adaptive enabled: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Drain stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                   Battery saver OFF                          ON"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "NonIntr"

    const-string/jumbo v7, "NonDoze"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    move-object v8, v2

    move-object v9, v3

    const-string v11, "   Intr"

    const-string v13, "       "

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v11, "NonIntr"

    const-string v13, "Deep   "

    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const-string v11, "   Intr"

    const-string v13, "       "

    const/4 v10, 0x1

    const/4 v12, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v11, "NonIntr"

    const-string/jumbo v13, "Light  "

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const-string v11, "   Intr"

    const-string v13, "       "

    const/4 v10, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    monitor-exit v1
    :try_end_152
    .catchall {:try_start_b .. :try_end_152} :catchall_33

    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_156
    :try_start_156
    monitor-exit v1
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_33

    throw p0
.end method

.method public final dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V
    .registers 16

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p5, " "

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ": "

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p3, p2, p4, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result p5

    invoke-virtual {p0, p5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {v0, p2, p4, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p0

    iget-wide p2, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/32 v0, 0xea60

    div-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget p2, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p2, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide p2

    const-wide p4, 0x408f400000000000L  # 1000.0

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    div-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide p2

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    :cond_1a
    :goto_1a
    monitor-exit v0

    return-object v1

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public injectBatteryLevel()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result p0

    return p0
.end method

.method public injectBatteryPercent()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public injectCurrentTime()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final transitionStateLocked(I)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v2, v1, :cond_a

    goto/16 :goto_ae

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v5

    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    const/4 v7, 0x0

    if-gez v6, :cond_1d

    move v8, v7

    goto :goto_1f

    :cond_1d
    and-int/lit8 v8, v6, 0x3

    :goto_1f
    if-gez v1, :cond_22

    goto :goto_24

    :cond_22
    and-int/lit8 v7, v1, 0x3

    :goto_24
    const/4 v9, 0x1

    if-eq v8, v7, :cond_4e

    if-eqz v7, :cond_47

    const/4 v10, 0x2

    if-eq v7, v9, :cond_3b

    if-eq v7, v10, :cond_2f

    goto :goto_4e

    :cond_2f
    iget v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    if-ne v8, v9, :cond_4e

    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_4e

    :cond_3b
    iget v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    if-ne v8, v10, :cond_4e

    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    goto :goto_4e

    :cond_47
    if-ne v8, v9, :cond_4c

    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_4e

    :cond_4c
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    :cond_4e
    :goto_4e
    if-gez v6, :cond_51

    goto :goto_aa

    :cond_51
    invoke-virtual {v0, v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long v7, v2, v7

    iget v10, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    sub-int/2addr v10, v4

    iget v11, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    sub-int/2addr v11, v5

    iget-wide v12, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v12, v7

    iput-wide v12, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v14, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v14, v10

    iput v14, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v15, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v15, v11

    iput v15, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    and-int/lit8 v16, v6, 0x3

    shr-int/lit8 v17, v6, 0x2

    and-int/lit8 v9, v17, 0x1

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x6afe

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_aa
    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_af

    :goto_ae
    return-void

    :cond_af
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    return-void
.end method
