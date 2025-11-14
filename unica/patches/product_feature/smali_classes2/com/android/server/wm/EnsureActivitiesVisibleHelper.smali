.class public final Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAboveTop:Z

.field public mBehindFullyOccludedContainer:Z

.field public mNotifyClients:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;

.field public final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-void
.end method


# virtual methods
.method public final process(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-object v1, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x1

    if-eqz v5, :cond_16

    move v5, v6

    goto :goto_17

    :cond_16
    move v5, v4

    :goto_17
    iput-boolean v5, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    iget-object v5, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    iput-boolean v2, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    iget-object v5, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v7, 0x0

    if-eqz v5, :cond_4e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_4e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v5, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v9, v8, :cond_4e

    iget-object v8, v5, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v5, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_47

    invoke-virtual {v5, v7}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v7, v5, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    :cond_47
    iget-object v5, v5, Lcom/android/server/wm/Task;->mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

    const/16 v8, 0x65

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4e
    iget-object v5, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_66

    iget-boolean v5, v5, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v5, :cond_66

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_66

    if-eqz v1, :cond_64

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-nez v5, :cond_66

    :cond_64
    move v5, v6

    goto :goto_67

    :cond_66
    move v5, v4

    :goto_67
    iget-object v8, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    move-object v9, v7

    :goto_6f
    if-ltz v8, :cond_237

    iget-object v10, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    if-eqz v11, :cond_ee

    invoke-virtual {v11, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_ee

    invoke-virtual {v11, v1, v2}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-boolean v10, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a0

    invoke-virtual {v11, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_a0

    move v12, v6

    goto :goto_a1

    :cond_a0
    move v12, v4

    :goto_a1
    or-int/2addr v10, v12

    iput-boolean v10, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    iget-boolean v10, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v10, :cond_b2

    iget-object v10, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    if-ne v10, v11, :cond_b2

    iput-boolean v4, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    :cond_b2
    iget-boolean v10, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-eqz v10, :cond_b8

    goto/16 :goto_232

    :cond_b8
    if-eqz v9, :cond_d7

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d7

    invoke-virtual {v11, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-nez v10, :cond_232

    new-instance v10, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v11, v10}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v10

    if-eqz v10, :cond_d3

    goto/16 :goto_232

    :cond_d3
    iput-boolean v6, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto/16 :goto_232

    :cond_d7
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v10

    if-eqz v10, :cond_232

    if-nez v9, :cond_e4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_e4
    new-instance v10, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;

    invoke-direct {v10, v9}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v11, v10}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    goto/16 :goto_232

    :cond_ee
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_232

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v10, v11, :cond_fe

    move v11, v6

    goto :goto_ff

    :cond_fe
    move v11, v4

    :goto_ff
    iget-boolean v12, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v12, :cond_10a

    if-nez v11, :cond_10a

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    goto/16 :goto_232

    :cond_10a
    iput-boolean v4, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    iget-boolean v12, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez v12, :cond_12c

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v13, v12, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v13, :cond_130

    iget-object v12, v12, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget-object v14, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v14, :cond_130

    new-instance v15, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v15, v7, v13}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v15, v12, v4, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_130

    :cond_12c
    iget-boolean v7, v10, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_138

    :cond_130
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v7

    if-eqz v7, :cond_138

    move v7, v6

    goto :goto_139

    :cond_138
    move v7, v4

    :goto_139
    iput-boolean v7, v10, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result v7

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v12, :cond_15c

    invoke-virtual {v10, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v12

    if-eqz v12, :cond_14c

    iput-boolean v6, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_17e

    :cond_14c
    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_159

    iput-boolean v6, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_17e

    :cond_159
    iput-boolean v4, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_17e

    :cond_15c
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v10, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v12

    if-eqz v12, :cond_17e

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v12, :cond_16b

    invoke-virtual {v10, v4}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    :cond_16b
    iget-object v12, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v12, v12, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17e

    iget-object v12, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_17e
    :goto_17e
    if-eqz v7, :cond_21d

    iget-boolean v7, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_186

    goto/16 :goto_232

    :cond_186
    iget-object v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq v10, v7, :cond_1b1

    iget-boolean v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v7, :cond_1b1

    if-nez v11, :cond_1ae

    iget-object v7, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    if-eqz v12, :cond_1a4

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    goto :goto_1a5

    :cond_1a4
    const/4 v12, 0x0

    :goto_1a5
    if-eqz v12, :cond_1ae

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v12

    invoke-virtual {v7, v12, v10}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(ILcom/android/server/wm/ActivityRecord;)V

    :cond_1ae
    invoke-virtual {v10, v6}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :cond_1b1
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v7

    if-nez v7, :cond_1d9

    iget-object v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_1bf

    if-eqz v11, :cond_1bf

    move v11, v6

    goto :goto_1c0

    :cond_1bf
    move v11, v4

    :goto_1c0
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v12

    if-eqz v12, :cond_1ca

    iget-boolean v12, v10, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_1cd

    :cond_1ca
    invoke-virtual {v10, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_1cd
    if-eq v10, v7, :cond_220

    iget-boolean v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v7, :cond_220

    iget-object v7, v3, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v7, v10, v11, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_220

    :cond_1d9
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_215

    iget-boolean v7, v10, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v7, :cond_1f1

    iget-boolean v11, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v11, :cond_1f1

    if-eqz v7, :cond_1eb

    const/4 v7, 0x0

    goto :goto_1ec

    :cond_1eb
    move-object v7, v1

    :goto_1ec
    invoke-virtual {v10, v7}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    iput-boolean v4, v10, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    :cond_1f1
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    iget-boolean v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v7, :cond_1fd

    iget-object v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v7}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_1fd
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_220

    iget-object v7, v3, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v7, v7, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    if-eqz v7, :cond_220

    iget-boolean v11, v7, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    if-eqz v11, :cond_220

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    goto :goto_220

    :cond_215
    iget-object v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v11, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {v10, v7, v11}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_220

    :cond_21d
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    :cond_220
    :goto_220
    iget-boolean v7, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez v7, :cond_232

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_232

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v7

    if-eqz v7, :cond_232

    iput-boolean v6, v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    :cond_232
    :goto_232
    add-int/lit8 v8, v8, -0x1

    const/4 v7, 0x0

    goto/16 :goto_6f

    :cond_237
    return-void
.end method
