.class public final Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    new-instance v0, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;

    invoke-direct {v0}, Landroid/os/IStatsBootstrapAtomService$Stub;-><init>()V

    :try_start_5
    const-string/jumbo v1, "statsbootstrap"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string/jumbo v0, "StatsBootstrapAtomService"

    const-string v1, "Failed to publishBinderService"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
