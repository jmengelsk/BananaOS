.class public final Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sDefaultAnimationResId:I

.field public static final sPredictBackEnable:Z


# instance fields
.field public mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

.field public mBackAnimationInProgress:Z

.field public mIsSystemAnimationEnabled:Z

.field public mLastBackType:I

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

.field public mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public mShowWallpaper:Z

.field public final mTmpCloseApps:Ljava/util/ArrayList;

.field public final mTmpOpenApps:Ljava/util/ArrayList;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    return-void
.end method

.method public static collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_2
    return-void
.end method

.method public static getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_b

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_b

    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v4, p1, :cond_b

    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    return v3

    :cond_7
    iget-object p2, p1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragments:Lcom/android/server/wm/TaskFragment$AdjacentSet;

    iget-object p2, p2, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_a

    new-array p2, v3, [Lcom/android/server/wm/TaskFragment;

    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    aget-object p2, p2, v2

    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v0, p1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_8

    goto :goto_2

    :cond_8
    move-object p1, p2

    :goto_2
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    new-instance p2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    return v2

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-nez v0, :cond_d

    :cond_c
    :goto_4
    return v3

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_10
    :goto_5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method public static hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_0
    if-ltz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public static isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x3da5c2b6b5a7cc04L    # -4.5078945212881226E11

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final cancelPendingAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CoreBackPreview"

    const-string/jumbo v2, "Remote animation gone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    :goto_1
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v3, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    const-wide v4, 0x10900000004L

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public isInProjectedMode(I)Z
    .locals 10

    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_INDEPENDENT_BACK_IN_PROJECTED:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v2, :cond_5

    aget-object v7, v0, v3

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-nez v9, :cond_1

    if-ne p1, v8, :cond_1

    return v1

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    move-result v7

    if-ne v7, v6, :cond_3

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    or-int/2addr v5, v6

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_6

    return v6

    :cond_6
    :goto_3
    return v1
.end method

.method public final isMonitoringFinishTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onBackNavigationDone(ILandroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "NavigationFinished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NavigationFinished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v2, 0x3b7efecc2bb300dL

    const/16 p2, 0xc

    invoke-static {v0, v2, v3, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_BUG_FIX:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onTransitionFinish(Lcom/android/server/wm/Transition;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    if-ne v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_10

    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    iput-object v5, v4, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    iput-object v5, v4, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x383ac77d153bcb3aL    # -5.64144236978451E37

    invoke-static {v0, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    move v0, v2

    move v1, v0

    :goto_1
    iget-object v4, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    iget-object v4, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v7, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    if-eqz v7, :cond_7

    array-length v7, v7

    sub-int/2addr v7, v3

    :goto_2
    if-ltz v7, :cond_7

    iget-object v8, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v8, v8, v7

    if-eq v4, v8, :cond_8

    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_7
    iget-object v7, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eq v4, v7, :cond_8

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v6, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_8
    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_SETTINGS:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mGestureNavBarEnabled:Z

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wm/BackNavigationController;->mIsSystemAnimationEnabled:Z

    :goto_4
    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_OPTIONAL_DELAY:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackType:I

    if-ne v1, v3, :cond_d

    iget-object v1, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    move v1, v3

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    move v3, v1

    :cond_d
    const-string p1, "CoreBackPreview"

    if-nez v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished transition didn\'t include the targets open: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "Skip predictive back transition, another transition is playing"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void

    :cond_f
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    iput-object v5, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    :cond_10
    :goto_6
    return-void
.end method

.method public final scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_8

    iget-object v4, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eqz v4, :cond_8

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v8, v7, v4

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v7}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_2
    if-ltz v9, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_6

    array-length v8, v7

    new-array v9, v8, [Lcom/android/server/wm/ActivityRecord;

    sub-int/2addr v8, v5

    :goto_3
    if-ltz v8, :cond_5

    aget-object v10, v7, v8

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_5
    move-object v8, v9

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :cond_7
    :goto_4
    const-string v7, "CoreBackPreview"

    if-eqz v0, :cond_9

    if-nez v8, :cond_9

    const-string/jumbo v0, "No opening activity"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_36

    :cond_9
    if-nez v0, :cond_12

    iget-boolean v0, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mShowWindowlessSurface:Z

    if-eqz v0, :cond_12

    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v9, v9, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v0, v4, v4}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    :cond_b
    if-eqz v9, :cond_c

    iget-object v0, v9, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_d

    :goto_7
    move v10, v4

    goto :goto_9

    :cond_d
    array-length v9, v8

    sub-int/2addr v9, v5

    move v10, v4

    :goto_8
    if-ltz v9, :cond_10

    aget-object v11, v8, v9

    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v12, 0x30

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getUiMode()I

    move-result v13

    and-int/lit8 v13, v13, 0x30

    if-eq v12, v13, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v12

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_10
    :goto_9
    if-eqz v10, :cond_11

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    iput-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mSnapshot:Landroid/window/TaskSnapshot;

    :cond_12
    iget-boolean v0, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-nez v0, :cond_3b

    invoke-virtual {v6, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    iget-object v12, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eqz v12, :cond_13

    if-eqz v0, :cond_13

    array-length v13, v0

    if-eqz v13, :cond_13

    array-length v13, v0

    if-le v13, v11, :cond_14

    :cond_13
    move-object v9, v6

    const/4 v5, 0x0

    const/4 v12, -0x1

    goto/16 :goto_24

    :cond_14
    array-length v13, v0

    if-eqz v13, :cond_20

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-nez v13, :cond_15

    goto/16 :goto_10

    :cond_15
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    array-length v14, v0

    sub-int/2addr v14, v5

    :goto_b
    if-ltz v14, :cond_17

    aget-object v15, v0, v14

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_20

    aget-object v15, v0, v14

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v13, v15, :cond_16

    goto/16 :goto_10

    :cond_16
    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    :cond_17
    iput v11, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    if-eqz v13, :cond_18

    iget-boolean v14, v13, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v14, :cond_18

    const/4 v13, 0x0

    :cond_18
    array-length v14, v0

    new-array v14, v14, [Lcom/android/server/wm/WindowContainer;

    array-length v15, v0

    if-lt v15, v11, :cond_1b

    array-length v15, v0

    sub-int/2addr v15, v5

    move-object/from16 v16, v12

    :goto_c
    if-ltz v15, :cond_1a

    aget-object v16, v0, v15

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v16

    aput-object v16, v14, v15

    if-eqz v13, :cond_19

    move-object/from16 v16, v13

    goto :goto_d

    :cond_19
    move-object/from16 v16, v12

    :goto_d
    add-int/lit8 v15, v15, -0x1

    goto :goto_c

    :cond_1a
    move-object/from16 v12, v16

    goto :goto_f

    :cond_1b
    aget-object v15, v0, v4

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    if-eqz v15, :cond_1c

    iget-boolean v11, v15, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v11, :cond_1c

    const/4 v15, 0x0

    :cond_1c
    if-eq v13, v15, :cond_1e

    if-eqz v15, :cond_1d

    goto :goto_e

    :cond_1d
    aget-object v15, v0, v4

    :goto_e
    aput-object v15, v14, v4

    if-eqz v13, :cond_1f

    move-object v12, v13

    goto :goto_f

    :cond_1e
    aget-object v0, v0, v4

    aput-object v0, v14, v4

    :cond_1f
    :goto_f
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v11, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/android/server/wm/WindowContainer;

    goto :goto_12

    :cond_20
    :goto_10
    array-length v11, v0

    if-ne v11, v5, :cond_22

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-nez v11, :cond_21

    goto :goto_11

    :cond_21
    aget-object v11, v0, v4

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_22

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    aget-object v13, v0, v4

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v11, v13, :cond_22

    iput v5, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    goto :goto_12

    :cond_22
    :goto_11
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-eqz v11, :cond_39

    iput v10, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    :goto_12
    iget-object v11, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-eqz v11, :cond_23

    move-object/from16 v20, v6

    const/4 v5, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1d

    :cond_23
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    array-length v13, v8

    sub-int/2addr v13, v5

    :goto_13
    if-ltz v13, :cond_26

    aget-object v14, v8, v13

    iget-boolean v15, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v15, :cond_25

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v15

    if-eqz v15, :cond_24

    goto :goto_14

    :cond_24
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_14
    add-int/lit8 v13, v13, -0x1

    goto :goto_13

    :cond_26
    aget-object v13, v8, v4

    iget-object v13, v13, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/16 v14, 0xd

    invoke-virtual {v13, v14, v4}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v14

    invoke-virtual {v13, v12}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v14, v12, v5}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    array-length v15, v0

    sub-int/2addr v15, v5

    :goto_15
    if-ltz v15, :cond_27

    aget-object v10, v0, v15

    invoke-virtual {v13, v10}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    aget-object v10, v0, v15

    invoke-virtual {v14, v10, v4}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 v15, v15, -0x1

    const/4 v10, 0x3

    goto :goto_15

    :cond_27
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v8

    sub-int/2addr v11, v5

    :goto_16
    if-ltz v11, :cond_2a

    aget-object v15, v8, v11

    iget-boolean v9, v15, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v9, :cond_29

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-eqz v9, :cond_28

    goto :goto_17

    :cond_28
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_17
    add-int/lit8 v11, v11, -0x1

    goto :goto_16

    :cond_2a
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2b

    goto :goto_1c

    :cond_2b
    aget-object v9, v8, v4

    iget-object v9, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_18
    if-ltz v9, :cond_2f

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    iget-object v15, v11, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v15, v15, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v15, v15, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v15}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v18

    if-eqz v18, :cond_2c

    goto :goto_19

    :cond_2c
    iget-object v15, v15, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_19
    iput-boolean v5, v11, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    sget-object v15, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v15, v15, v4

    if-eqz v15, :cond_2d

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    move-object/from16 v20, v6

    const-wide v5, 0x1cd3c640fb4335b0L    # 8.187030472293235E-170

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v3, v5, v6, v4, v15}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2d
    move-object/from16 v20, v6

    :goto_1a
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v11, v4}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v3}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_1b

    :cond_2e
    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_1b
    add-int/lit8 v9, v9, -0x1

    move v5, v3

    move-object/from16 v6, v20

    goto :goto_18

    :cond_2f
    :goto_1c
    move v3, v5

    move-object/from16 v20, v6

    const/4 v5, 0x0

    invoke-virtual {v13, v14, v5, v5, v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    iget-object v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14, v6, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :goto_1d
    aget-object v3, v8, v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-eqz v14, :cond_30

    move-object v6, v3

    :goto_1e
    move-object/from16 v9, v20

    goto :goto_1f

    :cond_30
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    goto :goto_1e

    :goto_1f
    iget v10, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-static {v12, v4, v10, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->createAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    iget-object v6, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v6, :cond_32

    const-string/jumbo v0, "composeNewAnimations fail, skip"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_31

    invoke-virtual {v14}, Lcom/android/server/wm/Transition;->abort()V

    :cond_31
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    const/4 v12, -0x1

    goto :goto_22

    :cond_32
    const/4 v6, 0x1

    array-length v10, v8

    if-ne v10, v6, :cond_34

    aget-object v6, v8, v4

    iget-object v10, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v6}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_33

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    :cond_33
    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v11

    invoke-virtual {v10, v11, v6}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(ILcom/android/server/wm/ActivityRecord;)V

    goto :goto_20

    :cond_34
    const/4 v12, -0x1

    :cond_35
    :goto_20
    new-instance v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget v10, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-direct {v6, v10, v3, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;-><init>(ILandroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/WindowContainer;)V

    iput-object v6, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v0, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v3, v0

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_21
    if-ltz v3, :cond_38

    aget-object v6, v0, v3

    iget-object v6, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v6, :cond_37

    const-string/jumbo v0, "compose animations fail, skip"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_36

    invoke-virtual {v14}, Lcom/android/server/wm/Transition;->abort()V

    :cond_36
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    goto :goto_22

    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_38
    iget-object v0, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iput-object v14, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    iput-object v8, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    goto :goto_22

    :cond_39
    move-object v9, v6

    const/4 v5, 0x0

    const/4 v12, -0x1

    iput v4, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    :goto_22
    iget v0, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    if-nez v0, :cond_3a

    :goto_23
    move v0, v4

    goto :goto_25

    :cond_3a
    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v0, 0x1

    goto :goto_25

    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reset animation with null target close: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " open: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_3b
    move-object v9, v6

    const/4 v5, 0x0

    const/4 v12, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Previous animation is running "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :goto_25
    if-nez v0, :cond_3c

    move-object v3, v5

    goto/16 :goto_36

    :cond_3c
    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_26

    :cond_3d
    iget-object v0, v0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :goto_26
    iget-object v3, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v6, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_27

    :cond_3e
    move v0, v4

    :goto_27
    if-eqz v0, :cond_40

    iget-boolean v0, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mShowWindowlessSurface:Z

    if-eqz v0, :cond_40

    iget-boolean v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    if-nez v0, :cond_40

    array-length v0, v8

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    move v7, v4

    :goto_28
    if-ltz v0, :cond_3f

    aget-object v10, v8, v0

    iget-boolean v10, v10, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    or-int/2addr v7, v10

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_3f
    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_41

    if-nez v7, :cond_40

    goto :goto_2a

    :cond_40
    :goto_29
    move/from16 v17, v4

    goto/16 :goto_33

    :cond_41
    :goto_2a
    if-nez v0, :cond_42

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2b
    const/4 v15, 0x1

    goto :goto_2d

    :cond_42
    iget-object v7, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v10, v7, v4

    iget v11, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_43

    goto :goto_2b

    :cond_43
    invoke-virtual {v10}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-nez v13, :cond_44

    goto :goto_2b

    :cond_44
    const/4 v14, 0x2

    if-ne v11, v14, :cond_46

    iget-object v10, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-nez v14, :cond_45

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    if-eqz v15, :cond_45

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    const/4 v15, 0x1

    invoke-virtual {v10, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    goto :goto_2c

    :cond_45
    const/4 v15, 0x1

    goto :goto_2c

    :cond_46
    const/4 v15, 0x1

    move-object v14, v5

    :goto_2c
    if-nez v14, :cond_47

    invoke-virtual {v13, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    :cond_47
    if-nez v14, :cond_48

    :goto_2d
    goto :goto_29

    :cond_48
    array-length v7, v7

    if-ne v7, v15, :cond_4a

    const/4 v7, 0x2

    if-eq v11, v7, :cond_49

    iget-object v7, v14, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v14}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_4a

    :cond_49
    const/4 v7, 0x1

    goto :goto_2e

    :cond_4a
    move v7, v4

    :goto_2e
    if-eqz v7, :cond_4b

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    goto :goto_2f

    :cond_4b
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    :goto_2f
    iget-object v11, v13, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    if-eqz v7, :cond_4c

    iget-object v7, v14, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_30

    :cond_4c
    iget-object v7, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    :goto_30
    new-instance v15, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;

    invoke-direct {v15, v3, v13}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Task;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v17

    if-nez v17, :cond_4d

    :goto_31
    move/from16 v17, v4

    goto :goto_32

    :cond_4d
    iget-object v11, v11, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/ITaskOrganizer;

    if-nez v11, :cond_4e

    goto :goto_31

    :cond_4e
    move/from16 v17, v4

    invoke-virtual {v13, v14}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v5, v4, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v14, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v10, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, v4, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    iput-object v15, v4, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    iput-object v7, v4, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    :try_start_0
    invoke-interface {v11, v4}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, v13, Lcom/android/server/wm/Task;->mTaskId:I

    move v12, v0

    goto :goto_32

    :catch_0
    move-exception v0

    const-string/jumbo v4, "TaskOrganizerController"

    const-string v5, "Exception sending addWindowlessStartingSurface "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    iput v12, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    :goto_33
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    array-length v0, v8

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_4f

    aget-object v3, v8, v0

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_4f
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;

    invoke-direct {v0, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    iget-boolean v3, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez v3, :cond_50

    const/4 v3, 0x0

    goto :goto_35

    :cond_50
    const/4 v14, 0x2

    new-array v3, v14, [Landroid/view/RemoteAnimationTarget;

    iget-object v4, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    aput-object v4, v3, v17

    iget-object v4, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    const/16 v19, 0x1

    aput-object v4, v3, v19

    :goto_35
    new-instance v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;)V

    move-object v3, v4

    :goto_36
    iput-object v3, v1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz v0, :cond_51

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_51

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    goto :goto_37

    :cond_51
    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    iget-boolean v0, v1, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_53

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_PREDICTIVE_BACK_ANIM:Z

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_52
    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_53
    :goto_37
    return-void
.end method

.method public final startAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->run()V

    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    :cond_3
    return-void
.end method

.method public startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    const-string/jumbo v1, "Previous animation hasn\'t finish, status: "

    sget-boolean v2, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    const/4 v10, 0x0

    if-nez v2, :cond_0

    return-object v10

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    new-instance v11, Landroid/window/BackNavigationInfo$Builder;

    invoke-direct {v11}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    iget-object v12, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "CoreBackPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    :catchall_0
    move-exception v0

    goto/16 :goto_27

    :cond_1
    :try_start_1
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_3

    iget-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v13

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v14

    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v4}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-boolean v4, v4, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    if-eqz v4, :cond_4

    move v1, v13

    :cond_4
    iget v4, v3, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {v0, v4}, Lcom/android/server/wm/BackNavigationController;->isInProjectedMode(I)Z

    move-result v4

    const/4 v15, 0x3

    if-nez v4, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v2, v13, v13}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v4, v3, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_9

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v5, v5, v15

    if-eqz v5, :cond_7

    iget v5, v3, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    int-to-long v5, v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v8, 0x48d69cc9a8603ff8L    # 7.879289555294385E42

    invoke-static {v7, v8, v9, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v14, v13}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v10

    goto :goto_3

    :cond_9
    move-object v1, v4

    :goto_3
    if-nez v1, :cond_c

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v1, v15

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x9b41c630000c8cdL    # -6.860898158053238E261

    invoke-static {v1, v4, v5, v13, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v4, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_4

    :cond_b
    move-object v1, v10

    :cond_c
    :goto_4
    if-nez v1, :cond_d

    const-string v0, "CoreBackPreview"

    const-string/jumbo v1, "Window is null, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    :cond_d
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->getMostRecentActivityInAdjacent(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v5, v4, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iput-object v10, v4, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v5, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v4, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    invoke-virtual {v5, v7, v14}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v6, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_10

    move-object v1, v4

    goto :goto_5

    :catchall_1
    move-exception v0

    iput-object v6, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    throw v0

    :cond_10
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x27fbab9c3de33d6dL    # 4.389109128093316E-116

    invoke-static {v0, v1, v2, v13, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_11
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    :cond_12
    :try_start_5
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    iget-object v4, v2, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v14

    move-object v5, v10

    :goto_6
    if-ltz v4, :cond_15

    iget-object v6, v2, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v7, v6, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v7, v1, :cond_14

    if-nez v5, :cond_13

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_15
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_16
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    if-eqz v7, :cond_1a

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v14, v14}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eq v4, v7, :cond_1a

    :cond_18
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x55d06398df97c38aL

    invoke-static {v0, v1, v2, v13, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_19
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    :cond_1a
    :try_start_6
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    if-nez v4, :cond_1b

    const-string v0, "CoreBackPreview"

    const-string/jumbo v1, "No callback registered, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    :cond_1b
    :try_start_7
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    move-result v6

    if-nez v6, :cond_1c

    const/4 v6, 0x4

    goto :goto_7

    :cond_1c
    const/4 v6, -0x1

    :goto_7
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;

    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v9

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setAnimationCallback(Z)Landroid/window/BackNavigationInfo$Builder;

    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setTouchableRegion(Landroid/graphics/Rect;)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v2, :cond_1d

    iget v9, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setFocusedTaskId(I)Landroid/window/BackNavigationInfo$Builder;

    :cond_1d
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v14

    :goto_8
    if-ltz v9, :cond_1f

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-boolean v15, v15, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    if-eqz v15, :cond_1e

    move v5, v14

    goto :goto_9

    :cond_1e
    add-int/lit8 v9, v9, -0x1

    const/4 v15, 0x3

    goto :goto_8

    :cond_1f
    move v5, v13

    :goto_9
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_20

    if-nez v5, :cond_20

    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v14

    goto :goto_a

    :cond_20
    move v5, v13

    :goto_a
    invoke-virtual {v11, v5}, Landroid/window/BackNavigationInfo$Builder;->setAppProgressAllowed(Z)Landroid/window/BackNavigationInfo$Builder;

    iget-object v5, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iput-object v1, v5, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v9, p1

    iput-object v9, v5, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v9}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object v9

    invoke-interface {v9}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget-object v5, v5, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

    invoke-interface {v9, v5, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    :catch_0
    :try_start_9
    const-string v5, "CoreBackPreview"

    const-string v9, "Failed to link to death"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->getOverrideBehavior()I

    move-result v5

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_21

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v9, v15, v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v8, 0x380e880485133941L    # 1.1215435302787646E-38

    invoke-static {v10, v8, v9, v13, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_21
    const/4 v4, 0x2

    if-ne v5, v4, :cond_23

    if-eqz v2, :cond_22

    invoke-virtual {v2, v14, v13}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    goto :goto_c

    :cond_22
    const/4 v8, 0x0

    :goto_c
    if-eqz v7, :cond_23

    if-eq v8, v7, :cond_23

    move v5, v13

    :cond_23
    iget-object v8, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mPointerDownOutsideFocusRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_24

    :goto_d
    const/4 v8, 0x4

    goto :goto_e

    :cond_24
    iget-object v10, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mPointerDownOutsideFocusRunnable:Ljava/lang/Runnable;

    goto :goto_d

    :goto_e
    if-eq v6, v8, :cond_52

    if-eqz v7, :cond_25

    if-eqz v2, :cond_25

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v14, :cond_25

    goto :goto_10

    :cond_25
    :goto_f
    const/4 v8, 0x4

    goto/16 :goto_26

    :cond_26
    :goto_10
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    if-eqz v6, :cond_27

    goto :goto_f

    :cond_27
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v7, v8}, Lcom/android/server/wm/BackNavigationController;->getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v6

    iget-object v9, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result v9

    if-nez v6, :cond_29

    :cond_28
    :goto_11
    move-object v5, v2

    const/4 v2, 0x4

    const/4 v6, 0x0

    :goto_12
    const/4 v9, 0x0

    goto/16 :goto_1b

    :cond_29
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v14, :cond_2a

    move-object v9, v1

    move-object v5, v2

    move v2, v13

    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_2a
    invoke-static {v7, v8}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_11

    :cond_2b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v14

    :goto_13
    if-ltz v6, :cond_2d

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v10

    if-nez v10, :cond_2c

    goto :goto_11

    :cond_2c
    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_2d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_37

    if-nez v5, :cond_37

    if-eqz v9, :cond_2e

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_2e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    :goto_14
    if-ltz v5, :cond_30

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v5, v13

    goto :goto_15

    :cond_2f
    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_30
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v14

    :goto_15
    if-eqz v5, :cond_28

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_31

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_31
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "android"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_32
    move v5, v13

    goto :goto_16

    :cond_33
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v6, :cond_32

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v9, 0x7

    invoke-virtual {v6, v5, v9, v13}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v10

    if-eqz v10, :cond_32

    sget v10, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-nez v10, :cond_34

    invoke-virtual {v6, v9, v13}, Lcom/android/internal/policy/TransitionAnimation;->getDefaultAnimationResId(II)I

    move-result v6

    sput v6, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    :cond_34
    sget v6, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-eq v6, v5, :cond_32

    move v5, v14

    :goto_16
    if-eqz v5, :cond_35

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v11, v5, v1}, Landroid/window/BackNavigationInfo$Builder;->setWindowAnimations(Ljava/lang/String;I)Landroid/window/BackNavigationInfo$Builder;

    :cond_35
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    if-eqz v1, :cond_36

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v9, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v1, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {v11, v5, v6, v9, v1}, Landroid/window/BackNavigationInfo$Builder;->setCustomAnimation(Ljava/lang/String;III)Landroid/window/BackNavigationInfo$Builder;

    :cond_36
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setLetterboxColor(I)Landroid/window/BackNavigationInfo$Builder;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    move-object v5, v2

    move v2, v4

    move-object v6, v9

    move-object v9, v7

    goto/16 :goto_1b

    :cond_37
    iget-object v1, v2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-eqz v1, :cond_38

    goto/16 :goto_11

    :cond_38
    iget-object v1, v2, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v1, v5, v2, v13, v14}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1, v14, v14}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_17

    :cond_39
    const/4 v5, 0x0

    :goto_17
    if-eqz v5, :cond_3b

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_18

    :cond_3a
    new-instance v6, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    const/4 v10, 0x1

    invoke-direct {v6, v10, v8}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_3b
    :goto_18
    if-eqz v1, :cond_40

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    if-eqz v9, :cond_3c

    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_1a

    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9, v14, v14}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v14

    goto :goto_19

    :cond_3d
    move v1, v13

    :goto_19
    iput-boolean v1, v0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    move-object v5, v2

    move-object v6, v9

    move-object v9, v5

    move v2, v14

    goto :goto_1b

    :cond_3e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_3f

    if-ne v5, v6, :cond_40

    :cond_3f
    invoke-static {v7, v8}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_40
    :goto_1a
    move-object v6, v1

    move-object v5, v2

    const/4 v2, 0x4

    goto/16 :goto_12

    :cond_41
    move-object v6, v1

    move-object v9, v6

    move-object v5, v2

    const/4 v2, 0x3

    :goto_1b
    invoke-virtual {v11, v2}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v10, v13

    if-eqz v1, :cond_44

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_42

    const-string v1, ";"

    invoke-virtual {v8}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    new-instance v4, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v15, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_42
    const/4 v1, 0x0

    :goto_1c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_43

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_43
    const/4 v4, 0x0

    :goto_1d
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1, v4, v15, v14}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v14, 0x755cb5c5d22e3a9dL    # 2.1554118172289596E257

    const/4 v4, 0x0

    invoke-static {v13, v14, v15, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1e

    :cond_44
    move v1, v14

    :goto_1e
    if-eq v2, v1, :cond_45

    const/4 v1, 0x3

    if-eq v2, v1, :cond_45

    const/4 v1, 0x2

    if-eq v2, v1, :cond_45

    if-nez v2, :cond_4c

    :cond_45
    invoke-virtual {v3, v2}, Landroid/window/BackAnimationAdapter;->isAnimatable(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM:Z

    if-eqz v1, :cond_4b

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_SETTINGS:Z

    if-eqz v1, :cond_48

    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mGestureNavBarEnabled:Z

    if-nez v1, :cond_46

    const/4 v4, 0x0

    goto :goto_1f

    :cond_46
    iget-boolean v4, v0, Lcom/android/server/wm/BackNavigationController;->mIsSystemAnimationEnabled:Z

    :goto_1f
    if-eqz v4, :cond_47

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_OPTIONAL_DELAY:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    if-eq v2, v1, :cond_48

    if-eqz v9, :cond_48

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_47
    :goto_20
    const/4 v4, 0x1

    goto :goto_21

    :cond_48
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "CoreBackPreview"

    const-string/jumbo v4, "disable predictive back in mw"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_49
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_PREDICTIVE_BACK_ANIM_SYSTEM_ANIMATOR_OFF:Z

    if-eqz v1, :cond_4a

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4a

    goto :goto_20

    :cond_4a
    const/4 v4, 0x0

    :goto_21
    if-nez v4, :cond_4c

    :cond_4b
    const/4 v13, 0x1

    goto :goto_22

    :cond_4c
    const/4 v13, 0x0

    :goto_22
    if-eqz v13, :cond_50

    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object v1

    if-eqz v1, :cond_4d

    const/4 v4, 0x1

    goto :goto_23

    :cond_4d
    const/4 v4, 0x0

    :goto_23
    iput-boolean v4, v0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v4, :cond_50

    iget-object v3, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-eqz v3, :cond_4f

    const/16 v17, 0x3

    aget-boolean v3, v10, v17

    if-eqz v3, :cond_4e

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4403bbab80973f99L    # 4.550139763671087E19

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4e
    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_24
    if-ltz v1, :cond_50

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_4f
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    :cond_50
    invoke-virtual {v11, v13}, Landroid/window/BackNavigationInfo$Builder;->setPrepareRemoteAnimation(Z)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v9, :cond_51

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0, v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/BackNavigationController;I)V

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_25

    :cond_51
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    :goto_25
    iput v2, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    invoke-virtual {v11}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :cond_52
    :goto_26
    :try_start_a
    invoke-virtual {v11, v8}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    const/4 v8, 0x4

    iput v8, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    invoke-virtual {v11}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :goto_27
    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final updateSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "predictive_back_system_animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mIsSystemAnimationEnabled:Z

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
