.class public final Lcom/android/server/wm/PopOverState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mCalculatedSystemInsets:Landroid/graphics/Rect;

.field public mIsActivated:Z

.field public mLastOccludesParent:Z

.field public mOptions:Landroid/app/ActivityOptions;

.field public mOptionsInherited:Landroid/app/ActivityOptions;

.field public mOriginTaskId:I

.field public mOriginTaskIdInherited:I

.field public mRecomputeConfigCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PopOverState;->mCalculatedSystemInsets:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final adjustOptions([I[I[Landroid/graphics/Point;[I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-nez p4, :cond_3

    iput-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iput-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    iput p1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v2, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v2, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Point;

    iput-object p0, v2, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    :cond_7
    if-eqz p4, :cond_9

    iget-object p0, v2, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_8
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v2, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    invoke-static {v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-ne p1, p2, :cond_a

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq p1, p0, :cond_f

    :cond_a
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_c

    goto :goto_5

    :cond_c
    iget-object p0, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_d

    iget-object p0, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p3, 0x6

    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p0

    goto :goto_3

    :cond_d
    move-object p0, v1

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p3

    if-nez p3, :cond_e

    iget-boolean p3, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez p3, :cond_e

    invoke-virtual {p1, v8, p2}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p3, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p3, p3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz p3, :cond_e

    move-object v3, p2

    goto :goto_4

    :cond_e
    move-object v3, v0

    :goto_4
    iget-object p2, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    iget-object p2, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    if-eqz p0, :cond_f

    iget-object p2, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, p0, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_f
    :goto_5
    return-void
.end method

.method public isAboveAnotherOpaquePopOver()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v3, v0, v2, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    return v2
.end method

.method public isInLargeSizeTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldRemoveOutlineEffect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isAboveAnotherOpaquePopOver()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toggle()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    iput-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    new-instance p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isInLargeSizeTask()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_6

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    if-ne v1, v4, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-nez p0, :cond_6

    iget-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    return-void

    :cond_4
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v1, :cond_7

    :cond_6
    :goto_0
    return-void

    :cond_7
    iput-boolean v3, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    iput-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    new-instance p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method
