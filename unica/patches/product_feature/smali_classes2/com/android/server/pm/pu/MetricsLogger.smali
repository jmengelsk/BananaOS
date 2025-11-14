.class public final Lcom/android/server/pm/pu/MetricsLogger;
.super Lcom/android/server/pm/pu/AbstractLogger;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final collectDataFrom(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mSessionId:Ljava/lang/String;

    const-string/jumbo v1, "pu_session_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "gen_launch_pkgs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAndLaunchedAppCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "launch_pkgs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Score:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "best_f1"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1PrefixCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "best_prefix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Precision:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "best_pref_precision"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Recall:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "best_pref_recall"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-wide v0, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBgDexoptFinishTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v0, "bg_dexopt_finish_time"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
