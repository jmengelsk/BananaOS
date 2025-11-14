.class public final Lcom/android/server/power/stats/PowerStatsScheduler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HOUR_IN_MILLIS:J

.field public static final MINUTE_IN_MILLIS:J


# instance fields
.field public final mAggregatedPowerStatsSpanDuration:J

.field public final mAlarmScheduler:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;

.field public final mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field public final mEarliestAvailableBatteryHistoryTimeMs:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSavedSpanEndMonotonicTime:J

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

.field public final mPowerStatsAggregationPeriod:J

.field public final mPowerStatsCollector:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;Lcom/android/internal/os/MonotonicClock;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;Landroid/os/Handler;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iput-object p3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iput-wide p4, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    iput-wide p6, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    iput-object p8, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iput-object p9, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;

    iput-object p10, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iput-object p12, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    iput-object p11, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;

    return-void
.end method

.method public static alignToWallClock(JJJJ)J
    .locals 15

    sub-long v0, p0, p4

    add-long v0, v0, p6

    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    cmp-long v4, p2, v2

    const/16 v5, 0xe

    const/16 v6, 0xd

    const-wide/16 v7, 0x0

    const/16 v9, 0xc

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    if-ltz v4, :cond_0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    rem-long v13, v13, p2

    cmp-long v4, v13, v7

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    add-long v7, v0, v2

    sub-long/2addr v7, v10

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v5, v12}, Ljava/util/Calendar;->set(II)V

    div-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    invoke-virtual {v4, v9, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v2, v0

    add-long/2addr v2, p0

    return-wide v2

    :cond_0
    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    rem-long v13, v13, p2

    cmp-long v4, v13, v7

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    add-long v7, v0, v2

    sub-long/2addr v7, v10

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v9, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v5, v12}, Ljava/util/Calendar;->set(II)V

    div-long v2, p2, v2

    long-to-int v2, v2

    const/16 v3, 0xb

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v2

    mul-int/2addr v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public final getLastSavedSpanEndMonotonicTime()J
    .locals 11

    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    const-string/jumbo v5, "aggregated-power-stats"

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    iget-wide v7, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v7, v9

    cmp-long v6, v7, v1

    if-lez v6, :cond_1

    move-wide v1, v7

    goto :goto_0

    :cond_2
    iput-wide v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    :cond_3
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    return-wide v0
.end method

.method public final scheduleNextPowerStatsAggregation()V
    .locals 11

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    add-long v6, v0, v2

    new-instance v9, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const-string/jumbo v8, "PowerStats"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public schedulePowerStatsAggregation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;->run()V

    new-instance v0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;I)V

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
