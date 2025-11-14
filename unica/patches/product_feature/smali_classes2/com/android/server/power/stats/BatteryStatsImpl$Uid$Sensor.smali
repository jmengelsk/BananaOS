.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHandle:I

.field public mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return-void
.end method


# virtual methods
.method public final getHandle()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return p0
.end method

.method public final getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public final getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method
