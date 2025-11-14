.class public final synthetic Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SnapshotController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Transition$ChangeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/SnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition$ChangeInfo;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
