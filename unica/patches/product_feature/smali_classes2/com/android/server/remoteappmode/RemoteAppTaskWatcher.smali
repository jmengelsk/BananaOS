.class public final Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;
.super Landroid/app/ITaskStackListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

.field public mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

.field public mNeedToNotifyRecentTaskListUpdated:Z

.field public mNeedToNotifyTaskDisplayChanged:Z


# virtual methods
.method public final onActivityDismissingDockedTask()V
    .locals 0

    return-void
.end method

.method public final onActivityDismissingSplitTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public final onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    return-void
.end method

.method public final onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    return-void
.end method

.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    return-void
.end method

.method public final onActivityRequestedOrientationChanged(II)V
    .locals 0

    return-void
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    return-void
.end method

.method public final onActivityRotation(I)V
    .locals 0

    return-void
.end method

.method public final onActivityUnpinned()V
    .locals 0

    return-void
.end method

.method public final onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onLockTaskModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onRecentTaskListFrozenChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onRecentTaskListUpdated()V
    .locals 0

    return-void
.end method

.method public final onRecentTaskRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onRecentTaskRemovedForAddTask(I)V
    .locals 0

    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 1

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/os/Message;->what:I

    iput p1, p2, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onTaskDisplayChanged(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    return-void
.end method

.method public final onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onTaskRemoved(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onTaskRequestedOrientationChanged(II)V
    .locals 0

    return-void
.end method

.method public final onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x5

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onTaskSnapshotInvalidated(I)V
    .locals 0

    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onTaskWindowingModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onTaskbarIconVisibleChangeRequest(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method
