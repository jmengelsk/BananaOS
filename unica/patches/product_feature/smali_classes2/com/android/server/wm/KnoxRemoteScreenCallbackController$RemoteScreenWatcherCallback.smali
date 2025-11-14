.class public final Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KnoxRemoteScreenCallbackController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;->this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;

    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoteScreenStart()V
    .registers 6

    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;->this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;

    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    iput-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance v4, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/KnoxRemoteScreenCallbackController;Landroid/util/ArraySet;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_25
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onRemoteScreenStop()V
    .registers 6

    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;->this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;

    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_14

    goto :goto_1d

    :cond_14
    new-instance v3, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/KnoxRemoteScreenCallbackController;Landroid/util/ArraySet;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_1d
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
