.class public final Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 6

    const/16 v0, 0x27f6

    if-eq p1, v0, :cond_6

    const/4 p0, 0x0

    goto :goto_1d

    :cond_6
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;-><init>(Ljava/util/List;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->pullFrameworkWakelockInfoAtoms(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;)V

    move-object p0, p1

    :goto_1d
    if-nez p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method
