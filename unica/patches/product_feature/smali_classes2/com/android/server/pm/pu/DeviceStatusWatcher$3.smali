.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    return-void
.end method


# virtual methods
.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .registers 14

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "bg-dexopt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBgDexoptFinishTime:J

    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object p1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Calculate metrics"

    const-string/jumbo v1, "PU_HotApps"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedApps:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedAppCount:I

    iget-object v0, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v2, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v2, v2, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAppCount:I

    const-string v2, "Hot app list:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ", recall: "

    const-string v6, ", precision: "

    const-string v7, ", prefixCount: "

    if-eqz v4, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pu/App;

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedApps:Ljava/util/Map;

    iget-object v9, v4, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ") "

    if-eqz v8, :cond_96

    iget-object v8, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedApps:Ljava/util/Map;

    iget-object v10, v4, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/pm/pu/App;->mLaunchTimeMs:J

    iget v8, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAndLaunchedAppCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAndLaunchedAppCount:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    const-string v10, " - predicted and launched"

    invoke-static {v8, v9, v10, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    :cond_96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    const-string v10, " - predicted"

    invoke-static {v8, v9, v10, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    iget v8, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAndLaunchedAppCount:I

    int-to-float v8, v8

    int-to-float v9, v3

    div-float v9, v8, v9

    iput v9, v4, Lcom/android/server/pm/pu/App;->mPrecision:F

    iget v10, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedAppCount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    iput v8, v4, Lcom/android/server/pm/pu/App;->mRecall:F

    const/high16 v10, 0x40000000  # 2.0f

    mul-float/2addr v10, v9

    mul-float/2addr v10, v8

    add-float v11, v9, v8

    div-float/2addr v10, v11

    iput v10, v4, Lcom/android/server/pm/pu/App;->mF1Score:F

    iget v4, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Score:F

    cmpl-float v4, v10, v4

    if-lez v4, :cond_cd

    iput v10, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Score:F

    iput v9, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Precision:F

    iput v8, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Recall:F

    iput v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1PrefixCount:I

    :cond_cd
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Current f1Score: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    :cond_f2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Predicted and launched apps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAndLaunchedAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nPredicted apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nLaunched apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nBest f1Score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Score:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1PrefixCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Precision:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Recall:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "Metrics"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p1, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    new-instance v1, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/pu/HotAppsWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object p1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    new-instance v0, Lcom/android/server/pm/pu/MetricsLogger;

    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    const-string v2, "003"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pu/AbstractLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->collectAndSendPuData(Lcom/android/server/pm/pu/AbstractLogger;)V

    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$3;

    invoke-virtual {v0, p1}, Lcom/android/server/art/ArtManagerLocal;->removeDexoptDoneCallback(Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$3;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mAppLaunchObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$4;

    invoke-static {v1, p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
