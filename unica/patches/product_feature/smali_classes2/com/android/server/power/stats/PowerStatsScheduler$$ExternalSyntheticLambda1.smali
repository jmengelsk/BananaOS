.class public final synthetic Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v1, p0}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    move-result-wide v4

    iget-object v3, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;-><init>(Landroid/util/IndentingPrintWriter;)V

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    const-string p0, "Clear the cached PowerStatsAggregator"

    const-string/jumbo v1, "PowerStatsScheduler"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p0, "The triggered job of dump PowerStats was completed."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
