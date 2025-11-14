.class public final synthetic Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PinnedTaskController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PinnedTaskController;

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_20

    :cond_1b
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
