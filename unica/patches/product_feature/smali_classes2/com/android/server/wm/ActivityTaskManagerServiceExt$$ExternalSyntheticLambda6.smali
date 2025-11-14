.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object v0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14
    iget-boolean v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    const/4 v8, 0x0

    if-eqz v5, :cond_28

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string/jumbo v0, "The controller has already been started."

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v0, v8}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v2

    goto :goto_49

    :catchall_24
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a3

    :cond_28
    iput-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-direct {v5, v3, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;)V

    iput-object v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    invoke-direct {v0, v3, v4, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;I)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_24

    :goto_49
    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object v0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corescpm/ScpmController;)V

    iget-object v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_58
    iput-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mGetFileDescriptor:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_9f

    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    iget-object v0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->getGroupNames()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object v7, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V

    monitor-enter v1

    :try_start_6e
    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    if-nez p0, :cond_80

    const-string/jumbo p0, "PackageFeature"

    const-string/jumbo v0, "The package feature manager service has already been started."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_94

    :catchall_7d
    move-exception v0

    move-object p0, v0

    goto :goto_9d

    :cond_80
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;)V

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    iput-object v8, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_6e .. :try_end_94} :catchall_7d

    :goto_94
    new-instance p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/android/server/wm/PackagesChange;->forAllUserChangeCallbacks(Ljava/util/function/Consumer;)V

    return-void

    :goto_9d
    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_7d

    throw p0

    :catchall_9f
    move-exception v0

    move-object p0, v0

    :try_start_a1
    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_9f

    throw p0

    :goto_a3
    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_24

    throw p0
.end method
