.class public final Lcom/android/server/wm/ResetTargetTaskHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;


# instance fields
.field public mActivityReparentPosition:I

.field public mAllActivities:Ljava/util/ArrayList;

.field public mCanMoveOptions:Z

.field public mForceReset:Z

.field public mIsTargetTask:Z

.field public mPendingReparentActivities:Ljava/util/ArrayList;

.field public mResultActivities:Ljava/util/ArrayList;

.field public mRoot:Lcom/android/server/wm/ActivityRecord;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTargetTaskFound:Z

.field public mTask:Lcom/android/server/wm/Task;

.field public mTopOptions:Landroid/app/ActivityOptions;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/server/wm/Task;

    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iput-object v3, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    move v0, v1

    :cond_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x40149f418781c9c0L    # -0.855559573495789

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v5, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v8

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v7, v8}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v10

    goto :goto_1

    :cond_1
    iget-object v10, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_2

    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v11, v11, v3

    if-eqz v11, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x180503976d603b36L    # 5.757343247738582E-193

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13, v14, v15, v2, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v10, v4

    :cond_3
    :goto_2
    if-nez v10, :cond_5

    if-eqz v9, :cond_4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v9

    :goto_3
    move-object v10, v9

    goto :goto_4

    :cond_4
    iget-object v10, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_3

    :goto_4
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v9, v10, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    :cond_5
    const-string/jumbo v9, "resetTargetTaskIfNeeded"

    invoke-virtual {v1, v10, v2, v9}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    iget-object v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    goto :goto_0

    :cond_6
    :goto_5
    iput-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    iput-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    iput-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 12

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    if-eqz v5, :cond_9

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    const-string/jumbo v0, "clearWhenTaskReset"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string/jumbo v0, "reset-task"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    :cond_9
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    if-eqz v4, :cond_11

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v0, :cond_10

    if-eqz v2, :cond_b

    goto/16 :goto_6

    :cond_b
    iget v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget v2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    :goto_5
    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, 0x2ea7b7ceb4ed3e96L    # 6.104487990603187E-84

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v10, v11, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_e

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x36f0960f1392336dL    # 4.648434222911383E-44

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_e
    const-string/jumbo v5, "resetTargetTaskIfNeeded"

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    goto :goto_5

    :cond_f
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v0, v1, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string/jumbo p1, "replace"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return v3

    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string/jumbo v0, "move-affinity"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_11
    return v3
.end method
