.class public final Lcom/android/server/power/stats/BatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStats;)V
    .locals 1

    const-string/jumbo v0, "battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "BatteryUsageStatsSection"

    const-string v1, "Closing BatteryUsageStats"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
