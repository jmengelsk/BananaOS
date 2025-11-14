.class public final synthetic Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;->f$0:J

    check-cast p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    new-instance p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    return-object p0
.end method
