.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFocused()Z

    :cond_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController;->mTmpPipCandidate:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP_ON_FREEFORM:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "new_dex"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v2, v0, Lcom/android/server/wm/MultiTaskingController;->mTmpPipCandidate:Lcom/android/server/wm/ActivityRecord;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "minimizeAllTasksLocked: found pipCandidate, r="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MultiTaskingController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->canMinimize()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "    "

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->printTaskDisplayAreaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, [Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const-string/jumbo v2, "MultiTaskingController"

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostVisibleFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeFocusedTask, topRunningTask="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    aput-boolean v4, p0, v5

    goto :goto_4

    :cond_8
    :goto_2
    const-string/jumbo p0, "removeFocusedTask, topVisibleFreeformActivity is null."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeFocusedTask, focusedTask="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    aput-boolean v4, p0, v5

    goto :goto_4

    :cond_a
    :goto_3
    const-string/jumbo p0, "removeFocusedTask, focusedActivity is null."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
