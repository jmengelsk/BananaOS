.class public final Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    packed-switch v0, :pswitch_data_e4

    :pswitch_7  #0x5, 0x10
    goto/16 :goto_d7

    :pswitch_9  #0x21
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyRecentTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_10  #0x20
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_1b  #0x1f
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_22  #0x1e
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyRecentTaskRemovedForAddTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_29  #0x1d
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_30  #0x1c
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_37  #0x1b
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_3e  #0x1a
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_45  #0x19
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_4c  #0x18
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_53  #0x17
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_5a  #0x16
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_61  #0x15
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_68  #0x14
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_6f  #0x13
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto/16 :goto_d7

    :pswitch_76  #0x12
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_7c  #0x11
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_82  #0xf
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/window/TaskSnapshot;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    goto :goto_d7

    :pswitch_90  #0xe
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_96  #0xd
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_9c  #0xc
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_a2  #0xb
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_a8  #0xa
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_ae  #0x9
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_b4  #0x8
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_ba  #0x7
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_c0  #0x6
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_c6  #0x4
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_cc  #0x3
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    goto :goto_d7

    :pswitch_d2  #0x2
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    :cond_d7
    :goto_d7
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    if-eqz p1, :cond_e2

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_e2
    return-void

    nop

    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_d2  #00000002
        :pswitch_cc  #00000003
        :pswitch_c6  #00000004
        :pswitch_7  #00000005
        :pswitch_c0  #00000006
        :pswitch_ba  #00000007
        :pswitch_b4  #00000008
        :pswitch_ae  #00000009
        :pswitch_a8  #0000000a
        :pswitch_a2  #0000000b
        :pswitch_9c  #0000000c
        :pswitch_96  #0000000d
        :pswitch_90  #0000000e
        :pswitch_82  #0000000f
        :pswitch_7  #00000010
        :pswitch_7c  #00000011
        :pswitch_76  #00000012
        :pswitch_6f  #00000013
        :pswitch_68  #00000014
        :pswitch_61  #00000015
        :pswitch_5a  #00000016
        :pswitch_53  #00000017
        :pswitch_4c  #00000018
        :pswitch_45  #00000019
        :pswitch_3e  #0000001a
        :pswitch_37  #0000001b
        :pswitch_30  #0000001c
        :pswitch_29  #0000001d
        :pswitch_22  #0000001e
        :pswitch_1b  #0000001f
        :pswitch_10  #00000020
        :pswitch_9  #00000021
    .end packed-switch
.end method
