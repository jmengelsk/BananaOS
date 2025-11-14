.class public final synthetic Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsScheduler;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->scheduleNextPowerStatsAggregation()V

    return-void

    :pswitch_0
    sget-object v1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_0
    move-wide v10, v1

    iget-wide v4, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    add-long v2, v10, v4

    invoke-static/range {v2 .. v9}, Lcom/android/server/power/stats/PowerStatsScheduler;->alignToWallClock(JJJJ)J

    move-result-wide v1

    move-wide v14, v10

    :goto_0
    move-wide/from16 v16, v1

    cmp-long v1, v16, v6

    iget-object v2, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    if-gtz v1, :cond_1

    iget-object v13, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [J

    new-instance v3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda17;

    invoke-direct {v3, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[J)V

    iget-object v12, v2, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    move-object/from16 v18, v3

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    iget-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    add-long v1, v16, v1

    move-wide/from16 v14, v16

    goto :goto_0

    :cond_1
    const-string v0, "Clear the cached PowerStatsAggregator"

    const-string/jumbo v1, "PowerStatsScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v2, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "The scheduled job of storing PowerStats was completed."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
