.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

.field public final mFlags:I

.field public final mMaxHistorySizeBytes:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    iget-boolean v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    if-eqz v1, :cond_b

    or-int/lit8 v0, v0, 0x2

    :cond_b
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    iget-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mMaxHistorySizeBytes:I

    return-void
.end method
