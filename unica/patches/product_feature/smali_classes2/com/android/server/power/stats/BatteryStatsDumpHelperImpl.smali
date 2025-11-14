.class public final Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/BatteryStats$BatteryStatsDumpHelper;


# instance fields
.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    return-void
.end method


# virtual methods
.method public final getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;
    .registers 6

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    if-eqz p2, :cond_1f

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    :cond_1f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method
