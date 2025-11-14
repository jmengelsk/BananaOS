.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iput-wide p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$2:J

    iput p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$3:I

    iput-object p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    iput-boolean p7, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$5:Z

    iput p8, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$6:I

    iput p9, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$7:I

    iput-boolean p10, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 42

    move-object/from16 v0, p0

    const/4 v2, -0x1

    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-wide v5, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$2:J

    iget v7, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$3:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$5:Z

    iget v10, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$6:I

    iget v11, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$7:I

    iget-boolean v12, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$8:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    if-eqz v0, :cond_46

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v14, 0x2f9

    invoke-direct {v0, v14}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v14, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    iget v14, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v0, v14}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const/16 v14, 0x367

    iget-object v15, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v0, v14, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v14, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v14

    iget-object v15, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    if-eqz v15, :cond_0

    const/16 v1, 0x388

    invoke-virtual {v0, v1, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    iget-object v1, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v15, 0x387

    invoke-virtual {v0, v15, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v13, 0x389

    invoke-virtual {v0, v13, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0x145

    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x13f

    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    iget v5, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    if-eq v5, v2, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x141

    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_2
    iget v5, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    if-eq v5, v2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3b1

    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    iget v5, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x142

    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v5, :cond_4

    const-class v5, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    :cond_4
    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-eqz v5, :cond_6

    iget-object v6, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    iget-object v13, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v5, v13, v6, v15}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v5

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v13, 0x529

    invoke-virtual {v0, v13, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v13, 0x528

    invoke-virtual {v0, v13, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v6, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v6, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    iget-object v13, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v6, v0}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v15

    :goto_2
    move/from16 v28, v0

    const/16 v27, 0x1

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    move/from16 v27, v15

    move/from16 v28, v27

    :goto_3
    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    const/4 v6, 0x2

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    if-ne v0, v6, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_b

    :goto_4
    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    if-nez v0, :cond_b

    goto :goto_5

    :cond_a
    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x200000

    and-int/2addr v0, v13

    if-eqz v0, :cond_b

    :goto_5
    move/from16 v34, v6

    goto :goto_6

    :cond_b
    const/16 v34, 0x1

    :goto_6
    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_d

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_c

    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    if-nez v0, :cond_c

    :catch_0
    move/from16 v41, v2

    :catch_1
    const/16 v36, 0x1

    goto :goto_7

    :cond_c
    move/from16 v41, v2

    move/from16 v36, v15

    goto :goto_7

    :cond_d
    :try_start_0
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v13, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v41, v2

    :try_start_1
    iget v2, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {v0, v2, v13}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v40, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v36, v0

    :goto_7
    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v9

    iget-object v9, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v13, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    invoke-static {v2, v13}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v2

    move/from16 v33, v11

    iget-object v11, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    move v13, v12

    iget-object v12, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    move/from16 p0, v6

    iget v6, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    iget v15, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    move/from16 v17, v0

    iget v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    move/from16 v19, v0

    iget v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v22

    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v23

    move/from16 v20, v0

    iget v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    move/from16 v24, v0

    iget v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    move/from16 v25, v0

    iget-object v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v29

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v21, v1

    move/from16 v18, v2

    iget-wide v1, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v30

    iget v0, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->multiWindowLaunchType:I

    move-object v1, v8

    move/from16 v8, v17

    move/from16 v17, v7

    const/16 v7, 0x30

    const-wide/16 v37, 0x0

    move/from16 v32, v10

    move v2, v13

    move v13, v14

    move/from16 v10, v18

    move/from16 v18, v15

    const-wide/16 v14, 0x0

    const/16 v35, 0x0

    move/from16 v39, v0

    move/from16 v16, v6

    move v6, v2

    move-object v2, v1

    const/4 v1, 0x0

    invoke-static/range {v7 .. v39}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;IIIIZZZIJIIIZZJI)V

    move/from16 v7, v17

    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_e

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    :cond_e
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    if-nez v0, :cond_f

    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "PkgPredictorService"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ipm/SecIpmManager;

    iput-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    :cond_f
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    if-eqz v0, :cond_10

    const-string/jumbo v0, "[secipm]"

    const-string/jumbo v8, "mSecIpmManager report to nap"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v13, v0

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/ipm/SecIpmManager;->reportToNAP(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_10
    iget-object v15, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTRtype(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v0

    filled-new-array/range {v15 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    const v8, 0x13d684

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v0

    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x4

    :try_start_2
    iget-boolean v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v10, :cond_11

    goto :goto_8

    :cond_11
    sget v10, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-gtz v10, :cond_12

    goto :goto_8

    :cond_12
    if-nez v8, :cond_13

    goto :goto_8

    :cond_13
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {v0, v9, v1, v1, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    if-eqz v0, :cond_42

    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v8, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget-object v8, v8, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_42

    const-string/jumbo v8, "android"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    sget-object v8, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_22

    :cond_14
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_15

    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v40, 0x1

    xor-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_15
    const/4 v10, 0x1

    :goto_9
    sget-boolean v11, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v11, :cond_16

    const-string/jumbo v11, "isKpmSafe() callingPackage : "

    const-string v12, ", mPrevPackage : "

    invoke-static {v11, v8, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    const-string v11, "ActivityManager_kpm"

    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v10, :cond_42

    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v12, v0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    const/4 v13, 0x5

    if-nez v12, :cond_1a

    iget v12, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    rem-int/lit8 v14, v12, 0x18

    iput v14, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    const/16 v40, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    new-instance v15, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v15, v0, v12}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aput-object v15, v12, v14

    iget v12, v0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    rem-int/lit8 v14, v12, 0x1e

    iput v14, v0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    new-instance v15, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v15, v0, v12}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aput-object v15, v12, v14

    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    if-eqz v12, :cond_17

    :goto_a
    move-object/from16 v24, v5

    move/from16 v22, v13

    :goto_b
    const/4 v13, 0x1

    goto/16 :goto_e

    :cond_17
    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "alarm"

    invoke-virtual {v12, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Landroid/app/AlarmManager;

    const-string v12, "ActivityManager_kpm"

    if-nez v14, :cond_18

    const-string/jumbo v14, "schedule regist failed \'Alarm get failed\'"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    const/16 v9, 0xd

    invoke-virtual {v15, v9, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    invoke-virtual {v15, v9, v1}, Ljava/util/Calendar;->set(II)V

    sget-boolean v9, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v9, :cond_19

    const/16 v9, 0xc

    invoke-virtual {v15, v9, v13}, Ljava/util/Calendar;->add(II)V

    const-wide/32 v16, 0x493e0

    :goto_c
    move v9, v13

    move-wide/from16 v18, v16

    move-object/from16 v16, v14

    goto :goto_d

    :cond_19
    const/4 v9, 0x1

    invoke-virtual {v15, v13, v9}, Ljava/util/Calendar;->add(II)V

    const-wide/32 v16, 0x5265c00

    goto :goto_c

    :goto_d
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move/from16 v22, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Schedule the sample, next trigger time : "

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v5

    const/high16 v5, 0x4000000

    move-object/from16 v17, v15

    const/4 v15, 0x0

    invoke-static {v1, v15, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    new-instance v1, Lcom/android/server/am/KillPolicyManager$2;

    invoke-direct {v1, v0, v13, v14}, Lcom/android/server/am/KillPolicyManager$2;-><init>(Lcom/android/server/am/KillPolicyManager;J)V

    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    invoke-virtual {v5, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

    invoke-virtual {v5, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v15, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v14, v16

    move-wide/from16 v16, v12

    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_b

    :goto_e
    iput-boolean v13, v0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    goto :goto_f

    :cond_1a
    move-object/from16 v24, v5

    move/from16 v22, v13

    :goto_f
    iget-wide v12, v0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v5

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v11, v8}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(ILjava/lang/String;)V

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-virtual {v5, v11, v8}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(ILjava/lang/String;)V

    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v5

    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    new-instance v11, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v12, v12, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v12, v12, v18

    double-to-int v12, v12

    iput v12, v11, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v16

    add-double v12, v12, v18

    double-to-int v12, v12

    iput v12, v11, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v25, 0x4130000000000000L    # 1048576.0

    div-double v12, v12, v25

    add-double v12, v12, v18

    double-to-int v12, v12

    iput v12, v11, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v16

    add-double v12, v12, v18

    double-to-int v12, v12

    iput v12, v11, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v25

    add-double v12, v12, v18

    double-to-int v12, v12

    iput v12, v11, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    iget v12, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    if-gtz v12, :cond_1d

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v16

    add-double v12, v12, v18

    double-to-int v9, v12

    iput v9, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    :cond_1d
    if-eqz v1, :cond_1e

    invoke-virtual {v1, v11}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :cond_1e
    if-eqz v5, :cond_1f

    invoke-virtual {v5, v11}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v25

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    iget-boolean v5, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string v9, "ActivityManager"

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v5

    iget-boolean v13, v5, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    if-eqz v13, :cond_20

    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string/jumbo v5, "No permission - psi cpu"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_20
    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    move-wide/from16 v26, v11

    goto :goto_11

    :cond_21
    :goto_10
    const-wide/16 v26, 0x0

    :goto_11
    iget-boolean v5, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    if-eqz v5, :cond_23

    sget-object v5, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v5

    iget-boolean v11, v5, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    if-eqz v11, :cond_22

    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    const-string/jumbo v5, "No permission - psi memory"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_22
    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    move-wide/from16 v28, v11

    goto :goto_13

    :cond_23
    :goto_12
    const-wide/16 v28, 0x0

    :goto_13
    iget-boolean v5, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    if-eqz v5, :cond_25

    sget-object v5, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v5

    iget-boolean v11, v5, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    if-eqz v11, :cond_24

    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    const-string/jumbo v5, "No permission - psi io"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_24
    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    move-wide/from16 v31, v11

    goto :goto_15

    :cond_25
    :goto_14
    const-wide/16 v31, 0x0

    :goto_15
    if-eqz v25, :cond_26

    move-wide/from16 v30, v31

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    move-wide/from16 v31, v30

    :cond_26
    if-eqz v1, :cond_27

    move-wide/from16 v29, v28

    move-wide/from16 v27, v26

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v32}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    :cond_27
    iget-wide v11, v0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    sget v5, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    mul-int/2addr v1, v5

    move-wide/from16 v16, v14

    int-to-long v14, v1

    cmp-long v1, v11, v14

    if-gtz v1, :cond_28

    const/4 v13, 0x1

    goto :goto_16

    :cond_28
    const/4 v13, 0x0

    :goto_16
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    if-eqz v13, :cond_29

    sget v5, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    goto :goto_17

    :cond_29
    sget v5, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    :goto_17
    iput v5, v0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    const-string v9, "ActivityManager_kpm"

    if-eqz v1, :cond_2e

    iget v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-eqz v14, :cond_2e

    rem-int/lit8 v14, v14, 0x5

    if-nez v14, :cond_2e

    iget-object v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v25, 0x0

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    move-wide/from16 v27, v11

    iget-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    sub-long v11, v27, v11

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    move-wide/from16 v27, v11

    iget-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    sub-long v11, v27, v11

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    move-wide/from16 v27, v11

    iget-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    sub-long v11, v27, v11

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    move-wide/from16 v27, v11

    iget-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    sub-long v11, v27, v11

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    sget-boolean v11, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v11, :cond_2a

    const/16 v11, 0x80

    const-string/jumbo v12, "TinyCycle currentKillCountLmkd : (cPr : "

    invoke-static {v11, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v15, v13

    iget-wide v12, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", cSv : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", cPi : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", cCm : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_2a
    move v15, v13

    :goto_18
    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    iget-wide v11, v5, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    iget v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/lit8 v11, v11, 0x5

    const/16 v40, 0x1

    add-int/lit8 v11, v11, -0x1

    rem-int/lit8 v11, v11, 0xa

    iget-wide v12, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    cmp-long v12, v12, v25

    if-lez v12, :cond_2b

    sget-object v12, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    move/from16 v20, v11

    goto :goto_19

    :cond_2b
    iget-wide v12, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    move/from16 v20, v11

    move-wide/from16 v27, v12

    iget-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    add-long v12, v27, v11

    cmp-long v11, v12, v25

    if-lez v11, :cond_2c

    sget-object v12, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_19

    :cond_2c
    iget-wide v11, v14, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    iget v13, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iget v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v11, v13

    cmp-long v11, v11, v25

    if-lez v11, :cond_2d

    sget-object v12, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_19

    :cond_2d
    sget-object v12, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    :goto_19
    iget v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iput v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object v12, v11, v20

    sget-boolean v11, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v11, :cond_2f

    const-string/jumbo v11, "Tiny KPM New State"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_2e
    move v15, v13

    const-wide/16 v25, 0x0

    :cond_2f
    :goto_1a
    if-eqz v1, :cond_3e

    iget v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget v12, v0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    if-ne v11, v12, :cond_3e

    const/4 v13, 0x1

    if-eqz v15, :cond_30

    iput-boolean v13, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    :cond_30
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-virtual {v11, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v11, v5, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    if-eq v11, v13, :cond_33

    sget-boolean v11, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    if-eqz v11, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v5, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3c

    div-long/2addr v11, v13

    const-wide/16 v13, 0xb4

    cmp-long v11, v11, v13

    if-ltz v11, :cond_31

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1b

    :cond_31
    iget-object v5, v5, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1b

    :cond_32
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    :cond_33
    :goto_1b
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v5, v11, :cond_34

    iget-wide v11, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    add-long v11, v11, v16

    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    :cond_34
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    array-length v11, v5

    const/16 v40, 0x1

    add-int/lit8 v11, v11, -0x1

    :goto_1c
    if-ltz v11, :cond_35

    aget-wide v12, v5, v11

    iget-object v14, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    aget-wide v14, v14, v11

    sub-long/2addr v12, v14

    aput-wide v12, v5, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_1c

    :cond_35
    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v5, v11, :cond_37

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v11

    array-length v11, v11

    if-ge v5, v11, :cond_37

    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v5, :cond_36

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, " KPM State Change. New State: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " Previous State: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1d

    :cond_37
    const/4 v13, 0x1

    :goto_1d
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v5, :cond_3a

    iget v5, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/4 v11, 0x4

    if-le v5, v11, :cond_3a

    sub-int/2addr v5, v13

    rem-int/lit8 v5, v5, 0x18

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v5, v11, v5

    iget-object v5, v5, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget v12, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/lit8 v12, v12, -0x2

    rem-int/lit8 v12, v12, 0x18

    aget-object v12, v11, v12

    iget-object v12, v12, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    add-int/2addr v12, v5

    iget v5, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/lit8 v5, v5, -0x3

    rem-int/lit8 v5, v5, 0x18

    aget-object v5, v11, v5

    iget-object v5, v5, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    add-int/2addr v5, v12

    iget v12, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/16 v21, 0x4

    add-int/lit8 v12, v12, -0x4

    rem-int/lit8 v12, v12, 0x18

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    add-int/2addr v11, v5

    int-to-float v5, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v5, v11

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ChimeraTriggerManager::onPolicyScoreUpdated() - evaPolicy: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ActivityManager"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    sget v12, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    cmpl-float v12, v5, v12

    if-ltz v12, :cond_38

    const/4 v13, 0x1

    goto :goto_1e

    :cond_38
    const/4 v13, 0x0

    :goto_1e
    iput-boolean v13, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v11

    float-to-double v12, v5

    add-double v12, v12, v18

    double-to-int v5, v12

    aget-object v5, v11, v5

    sget-boolean v11, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v11, :cond_39

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Current policy : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", eval policy : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v9, v5, :cond_3a

    invoke-virtual {v0, v5}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    :cond_3a
    iget-boolean v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v5, :cond_3b

    move-wide/from16 v11, v25

    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    :cond_3b
    iget-boolean v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v5, :cond_3c

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    invoke-direct {v9, v5, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v9, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    :cond_3c
    const-string v5, "ChimeraManagerService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v5

    if-eqz v5, :cond_3d

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-static {v5, v9}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    iput-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    :cond_3d
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget v1, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    rem-int/lit8 v5, v1, 0x18

    iput v5, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    const/16 v40, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    new-instance v9, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v9, v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aput-object v9, v1, v5

    :cond_3e
    iput-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setPrevPackage() mPrevPackage : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    const-string v8, "ActivityManager_kpm"

    invoke-static {v1, v5, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v9, v22

    if-le v5, v9, :cond_40

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    :catchall_0
    move-exception v0

    goto :goto_21

    :cond_40
    :goto_1f
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v5, :cond_41

    const/4 v13, 0x0

    :goto_20
    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_41

    const-string v5, "ActivityManager_kpm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "idx["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "] Process name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_41
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v0, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    goto :goto_23

    :goto_21
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_42
    :goto_22
    move-object/from16 v24, v5

    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTRtype(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    invoke-static {v11, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v8, :cond_43

    iget-object v9, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v11, v0

    iget v13, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget v0, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    int-to-long v0, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    move-result-object v17

    move-wide v15, v0

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/wm/ActivityManagerPerformance;->gatherAppLaunchTime(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;)V

    :cond_43
    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_44

    goto :goto_24

    :cond_44
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_24

    :cond_45
    iget-object v10, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v14, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    move v1, v9

    iget-wide v8, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move/from16 p0, v1

    iget-wide v0, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move-wide/from16 v18, v8

    const/16 v8, 0x37

    move/from16 v9, p0

    move-wide/from16 v20, v0

    invoke-static/range {v8 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)V

    goto :goto_24

    :cond_46
    move/from16 v41, v2

    move-object v2, v8

    move v6, v12

    :goto_24
    iget-boolean v0, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsInTaskActivityStart:Z

    if-eqz v0, :cond_47

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->logInTaskActivityStart(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZI)V

    :cond_47
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_48

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4e

    :cond_48
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7539

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v3, v1

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_49

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    move v5, v0

    goto :goto_25

    :cond_49
    move/from16 v5, v41

    :goto_25
    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string v0, " "

    const-string/jumbo v1, "Pageboost"

    const-string v2, "Launch time gathered : pid "

    const-string/jumbo v3, "packageName "

    if-nez v8, :cond_4a

    goto/16 :goto_26

    :cond_4a
    :try_start_5
    sget-boolean v6, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    if-eqz v6, :cond_4b

    sget-object v6, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    if-eqz v6, :cond_4b

    iget-object v6, v6, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "launcher"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string/jumbo v3, "com.samsung.android.mtp"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const/16 v9, 0x18

    const/4 v14, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0xbb8

    invoke-static/range {v9 .. v14}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    :cond_4b
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_26

    :cond_4c
    const-string/jumbo v3, "com.att.iqi"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/16 v3, 0x9

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_26

    :catch_3
    const-string/jumbo v0, "failed to gatherLaunchTime by exception"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_26
    return-void
.end method
