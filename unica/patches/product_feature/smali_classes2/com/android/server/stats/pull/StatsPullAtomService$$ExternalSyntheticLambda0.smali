.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    packed-switch v1, :pswitch_data_1d2

    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    const-string/jumbo v1, "StatsPullAtomService"

    const-string/jumbo v2, "Registering NetworkStats pullers with statsd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1e} :catch_20

    const/4 v1, 0x1

    goto :goto_2a

    :catch_20
    const-string/jumbo v1, "StatsPullAtomService"

    const-string/jumbo v2, "Querying network stats for TYPE_PROXY is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2a
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2d
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v5, 0x2711

    invoke-virtual {v0, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v6, 0x2712

    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v7, 0x2713

    invoke-virtual {v0, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v8, 0x2763

    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v9, 0x2762

    invoke-virtual {v0, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v10, 0x2774

    invoke-virtual {v0, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x27d8

    if-eqz v1, :cond_8b

    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8b

    :catchall_88
    move-exception v0

    goto/16 :goto_1cb

    :cond_8b
    :goto_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_2d .. :try_end_8c} :catchall_88

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    invoke-virtual {v2, v11, v12}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v15, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v15, v4, v2, v3, v10}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v4, 0x6

    filled-new-array {v12, v13, v14, v4}, [I

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v15, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v10, v5, v2, v3, v15}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v5, v6, v2, v3, v10}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    filled-new-array {v12, v13, v14, v4}, [I

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v5, v7, v2, v3, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    sget-boolean v2, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v2, :cond_137

    const-string v5, "ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER = "

    const-string/jumbo v6, "StatsPullAtomService"

    invoke-static {v5, v6, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_11d

    new-instance v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/NetworkStatsManager;

    invoke-direct {v2, v5}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;-><init>(Landroid/app/usage/NetworkStatsManager;)V

    iput-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    :cond_11d
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    filled-new-array {v12, v13, v14, v4}, [I

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v7, 0x27dc

    invoke-virtual {v5, v7, v2, v3, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_137
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v5, 0x7

    filled-new-array {v13, v14, v4, v5}, [I

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v6, v8, v2, v3, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v6, v9, v2, v3, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v6, 0x8

    filled-new-array {v14, v4, v5, v6}, [I

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v7, 0x2774

    invoke-virtual {v5, v7, v2, v3, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    if-eqz v1, :cond_1a0

    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    filled-new-array {v12, v13, v14, v4}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v5, 0x27d8

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_1a0
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.uwb"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1bb

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/uwb/UwbManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbManager;

    goto :goto_1bc

    :cond_1bb
    move-object v1, v2

    :goto_1bc
    iput-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    if-nez v1, :cond_1c1

    goto :goto_1ca

    :cond_1c1
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v4, 0x27cc

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :goto_1ca
    return-void

    :goto_1cb
    :try_start_1cb
    monitor-exit v2
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_88

    throw v0

    :pswitch_1cd  #0x0
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$qb74jErDmbpYjoDRKkDDIHHyoHk(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void

    nop

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_1cd  #00000000
    .end packed-switch
.end method
