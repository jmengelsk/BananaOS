.class public final synthetic Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$0:Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$0:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void
.end method
