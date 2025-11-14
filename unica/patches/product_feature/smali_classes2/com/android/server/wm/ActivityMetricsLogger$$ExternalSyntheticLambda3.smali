.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Ljava/lang/Object;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;I)V
    .registers 6

    iput p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_dc

    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyFullyDrawn(Lcom/android/server/wm/ActivityRecord;Z)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    return-void

    :pswitch_18  #0x0
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v4, 0x442

    invoke-direct {v0, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v5, 0x367

    iget-object v6, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v7, 0x443

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v3, :cond_4b

    const/16 v5, 0xd

    goto :goto_4d

    :cond_4b
    const/16 v5, 0xc

    :goto_4d
    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x144

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_6c

    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    :cond_6c
    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-eqz v0, :cond_7c

    iget-object v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    if-nez v5, :cond_75

    goto :goto_7c

    :cond_75
    iget-object v7, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7, v5, v6}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v0

    goto :goto_80

    :cond_7c
    :goto_7c
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v0

    :goto_80
    iget-object v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_ac

    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    iget-object v1, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {v1, v7, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_a7

    move v7, v8

    :cond_a7
    move/from16 v17, v7

    move/from16 v16, v8

    goto :goto_b0

    :cond_ac
    move/from16 v16, v7

    move/from16 v17, v16

    :goto_b0
    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_b8

    :goto_b6
    move v7, v8

    goto :goto_ba

    :cond_b8
    const/4 v8, 0x2

    goto :goto_b6

    :goto_ba
    invoke-virtual {v0}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v12

    invoke-virtual {v0}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v13

    iget v14, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    iget v15, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v18

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    iget-object v6, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x32

    invoke-static/range {v4 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJIIIIZZIJ)V

    return-void

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_18  #00000000
    .end packed-switch
.end method
