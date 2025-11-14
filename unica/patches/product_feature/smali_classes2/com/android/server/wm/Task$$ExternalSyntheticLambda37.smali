.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .registers 4

    iput p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->$r8$classId:I

    iput-boolean p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$0:Z

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->$r8$classId:I

    packed-switch v0, :pswitch_data_f8

    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$0:Z

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1b

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_1b
    return-void

    :pswitch_1c  #0x1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$0:Z

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :pswitch_28  #0x0
    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$0:Z

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;->f$1:Ljava/lang/Object;

    check-cast p0, [I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_9a

    if-nez v0, :cond_4e

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    iget-object v5, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "Waiting for screen on due to %s"

    invoke-static {v1, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_98

    :cond_4e
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_7c

    :cond_64
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_80

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_80

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    if-eqz v1, :cond_80

    :cond_7c
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    :cond_80
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    iget-object v5, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "Sleep needs to pause %s"

    invoke-static {v1, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    const-string/jumbo v5, "sleep"

    invoke-virtual {p1, v4, v5, v1, v2}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    :goto_98
    move v1, v3

    goto :goto_ac

    :cond_9a
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_ab

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-string/jumbo v6, "Sleep still waiting to pause %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_98

    :cond_ab
    move v1, v2

    :goto_ac
    if-nez v0, :cond_eb

    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_b7
    if-ltz v0, :cond_eb

    iget-object v5, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-ne v5, p1, :cond_e8

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v5, "Sleep still need to stop %d activities"

    invoke-static {v0, v5, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    move v1, v3

    goto :goto_eb

    :cond_e8
    add-int/lit8 v0, v0, -0x1

    goto :goto_b7

    :cond_eb
    :goto_eb
    if-eqz v1, :cond_f0

    invoke-virtual {p1, v4, v2}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_f0
    if-nez v1, :cond_f7

    aget p1, p0, v3

    add-int/2addr p1, v2

    aput p1, p0, v3

    :cond_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method
