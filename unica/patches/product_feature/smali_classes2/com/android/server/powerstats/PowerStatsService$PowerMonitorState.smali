.class public final Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public energyUws:J

.field public final id:I

.field public final powerMonitor:Landroid/os/PowerMonitor;

.field public prevEnergyUws:J

.field public timestampMs:J


# direct methods
.method public constructor <init>(Landroid/os/PowerMonitor;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    iput p2, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    return-void
.end method
