.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast p0, Lcom/android/server/display/DisplayPowerController$4;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$4;->onScreenOff()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    check-cast p0, Lcom/android/server/display/DisplayPowerController$4;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$4;->onScreenOff()V

    throw v0
.end method
