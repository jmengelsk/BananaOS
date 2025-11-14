.class public final Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mExitAnimatingTasks:Ljava/util/List;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/server/wm/TransitionController;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-void
.end method


# virtual methods
.method public final handleExitAnimatingTasks(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleExitAnimatingTasks: #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MultiWindowEnableController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAppTransitionCancelledLocked()V
    .locals 1

    const-string v0, "Cancelled"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    return-void
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "Finished"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    return-void
.end method
