.class public final synthetic Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 4

    iget p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    return-void

    :pswitch_0
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskSnapshotInvalidated(I)V

    return-void

    :pswitch_1
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/window/TaskSnapshot;

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void

    :pswitch_2
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :pswitch_3
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :pswitch_4
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :pswitch_5
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onActivityDismissingSplitTask(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedTask()V

    :goto_0
    return-void

    :pswitch_6
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget v0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, v0, p2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void

    :pswitch_7
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void

    :pswitch_8
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget v0, p2, Landroid/os/Message;->sendingUid:I

    iget v1, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, v0, v1, p2}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    return-void

    :pswitch_9
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_a
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void

    :pswitch_b
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_c
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_d
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_e
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void

    :pswitch_f
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskRemoved(I)V

    return-void

    :pswitch_10
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_1

    check-cast p0, Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iget p2, p2, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskbarIconVisibleChangeRequest(Landroid/content/ComponentName;Z)V

    return-void

    :pswitch_11
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object p2, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iget v3, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    iget p0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    invoke-interface {p1, p2, v0, v3, v1}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return-void

    :pswitch_12
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskWindowingModeChanged(I)V

    return-void

    :pswitch_13
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onLockTaskModeChanged(I)V

    return-void

    :pswitch_14
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_15
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    return-void

    :pswitch_16
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    return-void

    :pswitch_17
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    :goto_5
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    return-void

    :pswitch_18
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskRemovedForAddTask(I)V

    return-void

    :pswitch_19
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_6

    :cond_7
    const/4 p0, 0x0

    :goto_6
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    return-void

    :pswitch_1a
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/content/ComponentName;

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void

    :pswitch_1b
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    return-void

    :pswitch_1c
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
