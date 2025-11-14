.class public final synthetic Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AbsAppSnapshotController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AbsAppSnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AbsAppSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    check-cast p1, Landroid/window/TaskSnapshot;

    iget-object v2, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_1d

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_2c

    :cond_1d
    :try_start_1d
    iget-object v0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SnapshotCache;->putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->accept(Ljava/lang/Object;)V

    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
