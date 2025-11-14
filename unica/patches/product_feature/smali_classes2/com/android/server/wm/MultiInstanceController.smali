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
    .locals 1

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
    .locals 21

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

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x4

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v13

    const/4 v14, 0x7

    if-ne v13, v14, :cond_0

    new-instance v13, Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
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

    if-ne v13, v6, :cond_2

    aput-object v14, v3, v4

    aput v15, v2, v4

    aput-object v11, v8, v4

    goto :goto_1

    :cond_2
    if-ne v13, v7, :cond_3

    aput-object v14, v3, v6

    aput v15, v2, v6

    aput-object v11, v8, v6

    goto :goto_1

    :cond_3
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v16, :cond_4

    if-ne v13, v12, :cond_4

    aput-object v14, v3, v7

    aput v15, v2, v7

    aput-object v11, v8, v7

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    new-array v9, v10, [Lcom/android/server/wm/Task;

    new-array v11, v10, [Lcom/android/server/wm/ActivityRecord;

    new-array v13, v10, [I

    aput v6, v13, v4

    aput v7, v13, v6

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v14, :cond_6

    if-le v10, v7, :cond_6

    aput v12, v13, v7

    :cond_6
    iget-object v7, v0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    move v12, v4

    :goto_2
    if-ge v12, v10, :cond_9

    :try_start_0
    iget-object v14, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v14, v14, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    aget v15, v13, v12

    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v14

    aput-object v14, v9, v12

    if-eqz v14, :cond_7

    invoke-virtual {v14, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_7

    aget-object v14, v9, v12

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_7
    move-object v14, v5

    :goto_3
    if-eqz v14, :cond_8

    invoke-virtual {v14, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v14, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    aput-object v14, v11, v12

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    new-array v7, v10, [Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v12, v4

    :goto_4
    if-ge v12, v10, :cond_c

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

    if-eqz v4, :cond_b

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_b

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_b

    const-string/jumbo v14, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_5

    :cond_a
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v4, v7, v12

    aget-object v13, v11, v12

    if-eqz v13, :cond_b

    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

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

    :cond_b
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v10, :cond_16

    aget-object v4, v3, v1

    if-eqz v4, :cond_15

    aget-object v4, v7, v1

    if-nez v4, :cond_d

    goto/16 :goto_c

    :cond_d
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

    :goto_7
    if-ltz v8, :cond_11

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget v12, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    if-ne v12, v6, :cond_10

    :cond_f
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    :goto_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_11
    move-object v11, v5

    :goto_9
    if-nez v11, :cond_13

    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_13

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_12

    move-object v11, v12

    goto :goto_b

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    :goto_b
    if-nez v11, :cond_14

    goto :goto_c

    :cond_14
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

    :cond_15
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_16
    return-void

    :goto_d
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)V
    .locals 37

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

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    new-instance v11, Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
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

    if-ne v11, v5, :cond_2

    aput-object v12, v2, v3

    aput-object v9, v7, v3

    goto :goto_0

    :cond_2
    if-ne v11, v6, :cond_3

    aput-object v12, v2, v5

    aput-object v9, v7, v5

    goto :goto_0

    :cond_3
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v13, :cond_0

    if-ne v11, v10, :cond_0

    aput-object v12, v2, v6

    aput-object v9, v7, v6

    goto :goto_0

    :cond_4
    new-array v8, v1, [Lcom/android/server/wm/Task;

    new-array v9, v1, [Lcom/android/server/wm/Task;

    new-array v11, v1, [I

    aput v5, v11, v3

    aput v6, v11, v5

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v12, :cond_5

    aput v10, v11, v6

    :cond_5
    move v6, v3

    :goto_1
    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-ge v6, v1, :cond_8

    iget-object v12, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v12, v12, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    aget v13, v11, v6

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v12

    aput-object v12, v8, v6

    if-eqz v12, :cond_6

    invoke-virtual {v12, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_6

    aget-object v12, v8, v6

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v12

    goto :goto_2

    :cond_6
    move-object v12, v4

    :goto_2
    if-eqz v12, :cond_7

    invoke-virtual {v12, v5, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_7

    aput-object v12, v9, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    new-array v6, v1, [Lcom/android/server/wm/ActivityRecord;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v11, v3

    :goto_3
    iget-object v12, v0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    if-ge v11, v1, :cond_10

    aget-object v14, v2, v11

    if-nez v14, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v15, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    if-nez v15, :cond_b

    :cond_a
    move-object/from16 v21, v4

    goto :goto_4

    :cond_b
    const-wide/32 v16, 0x10000

    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v15, v14, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v15, v10, :cond_c

    move-object/from16 v21, v14

    :goto_4
    if-eqz v21, :cond_f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v35

    :try_start_0
    aget-object v19, v2, v11

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    aget-object v14, v2, v11

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_d

    move/from16 v26, v5

    goto :goto_5

    :cond_d
    const/16 v26, 0x0

    :goto_5
    if-nez v3, :cond_e

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :cond_e
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    aput-object v12, v6, v11

    aget-object v14, v9, v11

    if-eqz v14, :cond_f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v12, v14, v15}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

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

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_10
    move-object v3, v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v1, :cond_1d

    aget-object v9, v2, v7

    if-eqz v9, :cond_1c

    aget-object v9, v6, v7

    if-nez v9, :cond_11

    goto/16 :goto_e

    :cond_11
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

    if-nez v11, :cond_12

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_12
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_8
    if-ltz v10, :cond_15

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget v12, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    invoke-static {v12}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    if-ne v12, v5, :cond_14

    goto :goto_a

    :cond_14
    :goto_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_15
    move-object v11, v4

    :cond_16
    :goto_a
    if-nez v11, :cond_18

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_18

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_17

    move-object v11, v12

    goto :goto_c

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_18
    :goto_c
    if-nez v11, :cond_1a

    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_1a

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_19

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_19
    move-object v11, v12

    :cond_1a
    if-nez v11, :cond_1b

    aget-object v9, v2, v7

    const/high16 v10, 0x8000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_e

    :cond_1b
    aget-object v9, v2, v7

    iget v10, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    iget v9, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_1d
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    const-string/jumbo p0, "[MultiInstanceController]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final initialize()V
    .locals 0

    return-void
.end method
