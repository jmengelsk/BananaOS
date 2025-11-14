.class public final Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public completedCount:J

.field public uptimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    return-void
.end method
