.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/wm/Transition;

    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$3:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$3:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v2, v3, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :cond_1
    iget-boolean v5, v1, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/TransitionController;->setHideWhileTwoHandDragging(Lcom/android/server/wm/WindowContainer;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/4 v5, 0x0

    :goto_0
    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->f$4:Z

    invoke-virtual {v1, v2, v4, v0, p0}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V

    if-eqz p1, :cond_3

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    iget-object p0, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to move task to back after saying we could: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->abort()V

    return-void
.end method
