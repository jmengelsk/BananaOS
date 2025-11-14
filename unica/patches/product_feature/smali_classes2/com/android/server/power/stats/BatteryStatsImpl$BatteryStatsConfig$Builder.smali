.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J


# instance fields
.field public mDefaultPowerStatsThrottlePeriod:J

.field public mMaxHistorySizeBytes:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;

.field public mResetOnUnplugAfterSignificantCharge:Z

.field public mResetOnUnplugHighBatteryLevel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    const/high16 v1, 0x400000

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    invoke-static {v1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object p0

    sget-wide v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
