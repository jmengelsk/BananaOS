.class public final Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .registers 3

    const-string/jumbo v0, "accumulated-battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
