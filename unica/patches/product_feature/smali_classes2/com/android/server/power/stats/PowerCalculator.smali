.class public abstract Lcom/android/server/power/stats/PowerCalculator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
.end method

.method public abstract isPowerComponentSupported(I)Z
.end method
