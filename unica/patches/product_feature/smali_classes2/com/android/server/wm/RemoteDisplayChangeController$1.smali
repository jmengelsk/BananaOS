.class public final Lcom/android/server/wm/RemoteDisplayChangeController$1;
.super Landroid/view/IDisplayChangeWindowCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

.field public final synthetic val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RemoteDisplayChangeController;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    iput-object p2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    invoke-direct {p0}, Landroid/view/IDisplayChangeWindowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v0, v0, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v1, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v1, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    new-instance v3, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RemoteDisplayChangeController$1;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v1, p1, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p1, p1, Lcom/android/server/wm/RemoteDisplayChangeController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
