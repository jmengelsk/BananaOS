.class public final Lcom/android/server/wm/MultiInstanceController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public final adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v7, 0x2

    aput-object v5, v3, v7

    new-array v8, v2, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    aput-object v5, v8, v4

    aput-object v5, v8, v6

    aput-object v5, v8, v7

    new-array v2, v2, [I

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v4

    :cond_24
    :goto_24
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x4

    if-eqz v11, :cond_87

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v13

    const/4 v14, 0x7

    if-ne v13, v14, :cond_24

    new-instance v13, Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v13

    if-nez v13, :cond_4c

    goto :goto_24

    :cond_4c
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v13

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/PendingIntentRecord;

    iget-object v15, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v15, v15, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-ne v13, v6, :cond_6f

    aput-object v14, v3, v4

    aput v15, v2, v4

    aput-object v11, v8, v4

    goto :goto_84

    :cond_6f
    if-ne v13, v7, :cond_78

    aput-object v14, v3, v6

    aput v15, v2, v6

    aput-object v11, v8, v6

    goto :goto_84

    :cond_78
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v16, :cond_84

    if-ne v13, v12, :cond_84

    aput-object v14, v3, v7

    aput v15, v2, v7

    aput-object v11, v8, v7

    :cond_84
    :goto_84
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_87
    new-array v9, v10, [Lcom/android/server/wm/Task;

    new-array v11, v10, [Lcom/android/server/wm/ActivityRecord;

    new-array v13, v10, [I

    aput v6, v13, v4

    aput v7, v13, v6

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v14, :cond_99

    if-le v10, v7, :cond_99

    aput v12, v13, v7

    :cond_99
    iget-object v7, v0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    move v12, v4

    :goto_a0
    if-ge v12, v10, :cond_d8

    :try_start_a2
    iget-object v14, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v14, v14, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    aget v15, v13, v12

    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v14

    aput-object v14, v9, v12

    if-eqz v14, :cond_c6

    invoke-virtual {v14, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_c6

    aget-object v14, v9, v12

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_c7

    :catchall_c3
    move-exception v0

    goto/16 :goto_1dd

    :cond_c6
    move-object v14, v5

    :goto_c7
    if-eqz v14, :cond_d5

    invoke-virtual {v14, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_d5

    invoke-virtual {v14, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    aput-object v14, v11, v12

    :cond_d5
    add-int/lit8 v12, v12, 0x1

    goto :goto_a0

    :cond_d8
    monitor-exit v7
    :try_end_d9
    .catchall {:try_start_a2 .. :try_end_d9} :catchall_c3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    new-array v7, v10, [Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v12, v4

    :goto_e4
    if-ge v12, v10, :cond_144

    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v15, v3, v12

    aget v17, v2, v12

    iget v13, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v4, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v19, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_140

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_140

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_140

    const-string/jumbo v14, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_116

    goto :goto_140

    :cond_116
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v4, v7, v12

    aget-object v13, v11, v12

    if-eqz v13, :cond_140

    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    aget-object v4, v11, v12

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v5, v3, v12

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v4

    aget-object v13, v8, v12

    invoke-interface {v4, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_140
    :goto_140
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_e4

    :cond_144
    const/4 v1, 0x0

    :goto_145
    if-ge v1, v10, :cond_1dc

    aget-object v4, v3, v1

    if-eqz v4, :cond_1d8

    aget-object v4, v7, v1

    if-nez v4, :cond_151

    goto/16 :goto_1d8

    :cond_151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aget-object v8, v7, v1

    aget v11, v2, v1

    invoke-virtual {v0, v11, v8, v4}, Lcom/android/server/wm/MultiInstanceController;->findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v8, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_16b
    if-ltz v8, :cond_19c

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget v12, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_183

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_199

    :cond_183
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_199

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v12

    if-nez v12, :cond_195

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    if-ne v12, v6, :cond_199

    :cond_195
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19d

    :cond_199
    :goto_199
    add-int/lit8 v8, v8, -0x1

    goto :goto_16b

    :cond_19c
    move-object v11, v5

    :goto_19d
    if-nez v11, :cond_1b8

    const/4 v8, 0x0

    :goto_1a0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_1b8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_1b5

    move-object v11, v12

    goto :goto_1b8

    :cond_1b5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a0

    :cond_1b8
    :goto_1b8
    if-nez v11, :cond_1bb

    goto :goto_1d8

    :cond_1bb
    aget-object v4, v3, v1

    iget v8, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    aget-object v4, v3, v1

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget v4, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d8
    :goto_1d8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_145

    :cond_1dc
    return-void

    :goto_1dd
    :try_start_1dd
    monitor-exit v7
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_c3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)V
    .registers 39

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v7, v1, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    aput-object v4, v7, v3

    aput-object v4, v7, v5

    aput-object v4, v7, v6

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_7a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_1f

    new-instance v11, Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v11

    if-nez v11, :cond_47

    goto :goto_1f

    :cond_47
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v11

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/PendingIntentRecord;

    iget-object v13, v13, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v13, v13, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-ne v11, v5, :cond_68

    aput-object v12, v2, v3

    aput-object v9, v7, v3

    goto :goto_1f

    :cond_68
    if-ne v11, v6, :cond_6f

    aput-object v12, v2, v5

    aput-object v9, v7, v5

    goto :goto_1f

    :cond_6f
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v13, :cond_1f

    if-ne v11, v10, :cond_1f

    aput-object v12, v2, v6

    aput-object v9, v7, v6

    goto :goto_1f

    :cond_7a
    new-array v8, v1, [Lcom/android/server/wm/Task;

    new-array v9, v1, [Lcom/android/server/wm/Task;

    new-array v11, v1, [I

    aput v5, v11, v3

    aput v6, v11, v5

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v12, :cond_8a

    aput v10, v11, v6

    :cond_8a
    move v6, v3

    :goto_8b
    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-ge v6, v1, :cond_bc

    iget-object v12, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v12, v12, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    aget v13, v11, v6

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v12

    aput-object v12, v8, v6

    if-eqz v12, :cond_ae

    invoke-virtual {v12, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_ae

    aget-object v12, v8, v6

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v12

    goto :goto_af

    :cond_ae
    move-object v12, v4

    :goto_af
    if-eqz v12, :cond_b9

    invoke-virtual {v12, v5, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_b9

    aput-object v12, v9, v6

    :cond_b9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    :cond_bc
    new-array v6, v1, [Lcom/android/server/wm/ActivityRecord;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v11, v3

    :goto_c4
    iget-object v12, v0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    if-ge v11, v1, :cond_17b

    aget-object v14, v2, v11

    if-nez v14, :cond_ce

    goto/16 :goto_176

    :cond_ce
    iget-object v15, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    if-nez v15, :cond_d9

    :cond_d6
    move-object/from16 v21, v4

    goto :goto_fc

    :cond_d9
    const-wide/32 v16, 0x10000

    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v15, v14, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v15, v10, :cond_e8

    move-object/from16 v21, v14

    :goto_fc
    if-eqz v21, :cond_176

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v35

    :try_start_102
    aget-object v19, v2, v11

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    aget-object v14, v2, v11

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_113

    move/from16 v26, v5

    goto :goto_115

    :cond_113
    const/16 v26, 0x0

    :goto_115
    if-nez v3, :cond_11b

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :cond_11b
    move-object/from16 v22, v3

    move-object v3, v12

    new-instance v12, Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v33, 0x0

    const/16 v32, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v12 .. v34}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V
    :try_end_143
    .catchall {:try_start_102 .. :try_end_143} :catchall_171

    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    aput-object v12, v6, v11

    aget-object v14, v9, v11

    if-eqz v14, :cond_176

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v12, v14, v15}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_176

    aget-object v3, v9, v11

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v4, v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v3

    aget-object v12, v7, v11

    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_176

    :catchall_171
    move-exception v0

    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_176
    :goto_176
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto/16 :goto_c4

    :cond_17b
    move-object v3, v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_182
    if-ge v7, v1, :cond_248

    aget-object v9, v2, v7

    if-eqz v9, :cond_244

    aget-object v9, v6, v7

    if-nez v9, :cond_18e

    goto/16 :goto_244

    :cond_18e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aget-object v10, v2, v7

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v6, v7

    iget-object v12, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v11, v12, v9}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    new-instance v11, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1be

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1be

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_244

    :cond_1be
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_1c3
    if-ltz v10, :cond_1f5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget v12, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1db

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f2

    :cond_1db
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1f2

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    invoke-static {v12}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v12

    if-nez v12, :cond_1f6

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    if-ne v12, v5, :cond_1f2

    goto :goto_1f6

    :cond_1f2
    :goto_1f2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1c3

    :cond_1f5
    move-object v11, v4

    :cond_1f6
    :goto_1f6
    if-nez v11, :cond_211

    const/4 v10, 0x0

    :goto_1f9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_211

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_20e

    move-object v11, v12

    goto :goto_211

    :cond_20e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f9

    :cond_211
    :goto_211
    if-nez v11, :cond_22a

    const/4 v10, 0x0

    :goto_214
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_22a

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_229

    add-int/lit8 v10, v10, 0x1

    goto :goto_214

    :cond_229
    move-object v11, v12

    :cond_22a
    if-nez v11, :cond_234

    aget-object v9, v2, v7

    const/high16 v10, 0x8000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_244

    :cond_234
    aget-object v9, v2, v7

    iget v10, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    iget v9, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_244
    :goto_244
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_182

    :cond_248
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2

    const-string/jumbo p0, "[MultiInstanceController]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final initialize()V
    .registers 1

    return-void
.end method
