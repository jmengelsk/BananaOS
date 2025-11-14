.class public final Lcom/android/server/pm/pu/SummaryLogger;
.super Lcom/android/server/pm/pu/AbstractLogger;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final collectDataFrom(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .locals 9

    const-string/jumbo v0, "pu_session_id"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mSessionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_start_reason"

    iget v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "boot-no-update"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_start_time"

    iget-wide v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_finish_time"

    iget-wide v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "gen_num_pkgs"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v1, v1, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "dex2oat_took_total_sec"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pu/HotAppsWrapper;->aggregateWith(Ljava/util/function/Function;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_init_thermal"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_finish_thermal"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    monitor-enter v1

    :try_start_0
    iget v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "dexopt_concur"

    sget v1, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "low_battery_occ"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-boolean v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasLowBattery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "low_storage_occ"

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    div-long/2addr v5, v7

    const-wide/16 v7, 0x5

    mul-long/2addr v5, v7

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    cmp-long v1, v1, v5

    const/4 v2, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_took_total_sec"

    iget-wide v5, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    iget-wide v7, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "num_skip_pkgs"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/android/server/pm/pu/HotAppsWrapper;->countDexoptStatus(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "num_opt_pkgs"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    const/16 v5, 0x14

    invoke-virtual {v1, v5}, Lcom/android/server/pm/pu/HotAppsWrapper;->countDexoptStatus(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "num_fail_pkgs"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    const/16 v5, 0x1e

    invoke-virtual {v1, v5}, Lcom/android/server/pm/pu/HotAppsWrapper;->countDexoptStatus(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "num_user_inter"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInterruptionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "charging_occ"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-boolean v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mWasPlugged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_finish_stat"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishStatus:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "is_debug_build"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "debug"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "user"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v5, "persist.sys.is_usertrial"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "-UT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "dex2oat_took_cancel_sec"

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pu/HotAppsWrapper;->aggregateWith(Ljava/util/function/Function;)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "pu_battery_cap"

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    monitor-enter p1

    :try_start_1
    iget-object v1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mOptimizationWindows:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pu/OptimizationWindow;

    iget-wide v4, v4, Lcom/android/server/pm/pu/OptimizationWindow;->mConsumedNwh:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v2, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    monitor-exit p1

    long-to-double v1, v2

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
