.class public final synthetic Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

.field public final synthetic f$1:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;->f$1:Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;->f$1:Landroid/os/BatteryUsageStats$Builder;

    check-cast p1, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method
