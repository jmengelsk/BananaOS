.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mBatteryTimeRemainingMs:J

.field public final mChargeTimeRemainingMs:J

.field public final mCustomEnergyConsumerNames:[Ljava/lang/String;

.field public final mEstimatedBatteryCapacityMah:J

.field public final mHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field public final mMonotonicStartTime:J

.field public final mStartClockTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;JJJJJ[Ljava/lang/String;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    iput-wide p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    iput-wide p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    iput-wide p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    iput-object p13, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method
