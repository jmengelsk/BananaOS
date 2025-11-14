.class public final synthetic Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsStore;

.field public final synthetic f$1:Lcom/android/server/power/stats/PowerStatsSpan;

.field public final synthetic f$2:Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsSpan;Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/power/stats/PowerStatsSpan;

    iput-object p3, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/power/stats/PowerStatsSpan;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->run()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->run()V

    throw v0
.end method
