.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/power/stats/IPowerStats;


# virtual methods
.method public final declared-synchronized binderDied()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "PowerStatsHALWrapper"

    const-string/jumbo v1, "PowerStats HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 5

    const-string/jumbo v0, "Unable to register DeathRecipient for "

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    if-nez v1, :cond_4a

    const-string/jumbo v1, "android.hardware.power.stats.IPowerStats/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_4a

    sget v2, Landroid/hardware/power/stats/IPowerStats$Stub;->$r8$clinit:I

    sget-object v2, Landroid/hardware/power/stats/IPowerStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_26

    instance-of v3, v2, Landroid/hardware/power/stats/IPowerStats;

    if-eqz v3, :cond_26

    check-cast v2, Landroid/hardware/power/stats/IPowerStats;

    goto :goto_2d

    :cond_26
    new-instance v2, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_2d
    iput-object v2, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_34

    const/4 v2, 0x0

    :try_start_30
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_36
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_4a

    :catchall_34
    move-exception v0

    goto :goto_4e

    :catch_36
    :try_start_36
    const-string/jumbo v1, "PowerStatsHALWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_34

    monitor-exit p0

    return-object v0

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_34

    throw v0
.end method
