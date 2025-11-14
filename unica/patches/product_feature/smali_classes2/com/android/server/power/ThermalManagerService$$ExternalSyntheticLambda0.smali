.class public final synthetic Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ThermalManagerService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 5

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ThermalManagerService;

    const/16 v0, 0x27d9

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1d

    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[F)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_23
    const/4 p0, 0x0

    return p0
.end method
