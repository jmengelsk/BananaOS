.class public final synthetic Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 7

    iget p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_124

    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    return-void

    :pswitch_d  #0x1c
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskSnapshotInvalidated(I)V

    return-void

    :pswitch_13  #0x1b
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/window/TaskSnapshot;

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void

    :pswitch_1d  #0x1a
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :pswitch_27  #0x19
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :pswitch_31  #0x18
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :pswitch_3b  #0x17
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_47

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onActivityDismissingSplitTask(Ljava/lang/String;)V

    goto :goto_4a

    :cond_47
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedTask()V

    :goto_4a
    return-void

    :pswitch_4b  #0x16
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget v0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, v0, p2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void

    :pswitch_57  #0x15
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void

    :pswitch_5b  #0x14
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget v0, p2, Landroid/os/Message;->sendingUid:I

    iget v1, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, v0, v1, p2}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    return-void

    :pswitch_69  #0x13
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_71  #0x12
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void

    :pswitch_79  #0x11
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_81  #0x10
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_89  #0xf
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_91  #0xe
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void

    :pswitch_97  #0xd
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskRemoved(I)V

    return-void

    :pswitch_9d  #0xc
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_a4

    check-cast p0, Landroid/content/ComponentName;

    goto :goto_a5

    :cond_a4
    const/4 p0, 0x0

    :goto_a5
    iget p2, p2, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_ab

    const/4 p2, 0x1

    goto :goto_ac

    :cond_ab
    const/4 p2, 0x0

    :goto_ac
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskbarIconVisibleChangeRequest(Landroid/content/ComponentName;Z)V

    return-void

    :pswitch_b0  #0xb
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object p2, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c0

    move v0, v2

    goto :goto_c1

    :cond_c0
    move v0, v1

    :goto_c1
    iget v3, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_c7

    move v3, v2

    goto :goto_c8

    :cond_c7
    move v3, v1

    :goto_c8
    iget p0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p0, :cond_cd

    move v1, v2

    :cond_cd
    invoke-interface {p1, p2, v0, v3, v1}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return-void

    :pswitch_d1  #0xa
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskWindowingModeChanged(I)V

    return-void

    :pswitch_d7  #0x9
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onLockTaskModeChanged(I)V

    return-void

    :pswitch_dd  #0x8
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_e5  #0x7
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    return-void

    :pswitch_eb  #0x6
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    return-void

    :pswitch_f3  #0x5
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    if-eqz p2, :cond_fb

    const/4 p2, 0x1

    goto :goto_fc

    :cond_fb
    const/4 p2, 0x0

    :goto_fc
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    return-void

    :pswitch_100  #0x4
    iget p0, p2, Landroid/os/Message;->arg1:I

    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskRemovedForAddTask(I)V

    return-void

    :pswitch_106  #0x3
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_10c

    const/4 p0, 0x1

    goto :goto_10d

    :cond_10c
    const/4 p0, 0x0

    :goto_10d
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    return-void

    :pswitch_111  #0x2
    iget p0, p2, Landroid/os/Message;->arg1:I

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/content/ComponentName;

    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void

    :pswitch_11b  #0x1
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    return-void

    :pswitch_11f  #0x0
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_11f  #00000000
        :pswitch_11b  #00000001
        :pswitch_111  #00000002
        :pswitch_106  #00000003
        :pswitch_100  #00000004
        :pswitch_f3  #00000005
        :pswitch_eb  #00000006
        :pswitch_e5  #00000007
        :pswitch_dd  #00000008
        :pswitch_d7  #00000009
        :pswitch_d1  #0000000a
        :pswitch_b0  #0000000b
        :pswitch_9d  #0000000c
        :pswitch_97  #0000000d
        :pswitch_91  #0000000e
        :pswitch_89  #0000000f
        :pswitch_81  #00000010
        :pswitch_79  #00000011
        :pswitch_71  #00000012
        :pswitch_69  #00000013
        :pswitch_5b  #00000014
        :pswitch_57  #00000015
        :pswitch_4b  #00000016
        :pswitch_3b  #00000017
        :pswitch_31  #00000018
        :pswitch_27  #00000019
        :pswitch_1d  #0000001a
        :pswitch_13  #0000001b
        :pswitch_d  #0000001c
    .end packed-switch
.end method
