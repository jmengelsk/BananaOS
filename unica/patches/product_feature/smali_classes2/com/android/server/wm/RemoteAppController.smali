.class public final Lcom/android/server/wm/RemoteAppController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mRoot:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  mListeners="

    const-string/jumbo v1, "[RemoteAppController]"

    const-string v2, "  isRemoteAppDisplayRunning="

    invoke-static {p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initialize()V
    .locals 0

    return-void
.end method

.method public final interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Lcom/android/server/wm/ActivityStarter$Request;)Z
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p5

    iget-object v2, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->isRemoteAppLaunch()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v4

    :goto_0
    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const/4 v2, 0x4

    :goto_1
    move v12, v2

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    if-nez v3, :cond_5

    if-eq v2, v1, :cond_6

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    if-eq v2, v6, :cond_7

    const/4 v2, 0x3

    move v14, v5

    move v5, v2

    move v2, v14

    goto :goto_3

    :cond_7
    move v2, v4

    move v5, v2

    :goto_3
    move v12, v5

    move v5, v2

    goto :goto_4

    :cond_8
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayLocked(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    goto :goto_1

    :cond_9
    move v5, v4

    move v12, v5

    :goto_4
    if-eqz v5, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    :goto_5
    move-object v8, v2

    move v7, v4

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :goto_6
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move-object v2, p0

    move-object/from16 v9, p3

    move-object/from16 v4, p4

    move-object/from16 v10, p6

    move-object/from16 v13, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/RemoteAppController;->notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;IILcom/android/server/wm/ActivityStarter$Request;)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "interceptStartActivityLocked: intercepted="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", opts="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", displayId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reusedTask="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceRecord="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intentGrants="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intercept_reason="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->interceptReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RemoteAppController"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_b
    :goto_7
    return v4
.end method

.method public final isRemoteAppDisplayLocked(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isRemoteAppDisplayRunningLocked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;IILcom/android/server/wm/ActivityStarter$Request;)Z
    .locals 14

    move-object/from16 v0, p7

    move-object/from16 v1, p11

    const/4 v2, 0x0

    if-eqz p8, :cond_1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/wm/RemoteAppController$CallerInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v3, v1, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromUid:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wm/RemoteAppController$CallerInfo;->isResolver:Z

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/wm/RemoteAppController$CallerInfo;->resolvedType:Ljava/lang/String;

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/server/wm/RemoteAppController$CallerInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v3, v0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromUid:I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromPackage:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromFeatureId:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->isResolver:Z

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wm/RemoteAppController$CallerInfo;->resolvedType:Ljava/lang/String;

    move-object v10, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v13, v3, 0x1

    move-object v3, v2

    check-cast v3, Lcom/android/server/remoteappmode/RemoteAppModeService$1;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;II)Z

    move-result v2

    move v3, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    monitor-exit v1

    return v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    return-void
.end method
