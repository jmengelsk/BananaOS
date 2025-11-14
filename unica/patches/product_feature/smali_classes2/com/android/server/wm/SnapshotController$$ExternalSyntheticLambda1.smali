.class public final synthetic Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/SnapshotController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/HardwareBuffer;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/SnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/SnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
