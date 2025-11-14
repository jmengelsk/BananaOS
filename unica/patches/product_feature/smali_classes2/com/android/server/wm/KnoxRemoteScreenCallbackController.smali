.class public final Lcom/android/server/wm/KnoxRemoteScreenCallbackController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mLastInvokedStateByUid:Landroid/util/ArrayMap;

.field public mRecordedWC:Lcom/android/server/wm/DisplayContent;

.field public mRemoteScreenWatcherCallbackRegistered:Z

.field public mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRemoteScreenWatcherCallbackRegistered:Z

    iput-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final dispatchCallbacks(Landroid/util/ArraySet;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    iget v2, v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    iget-object v2, v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, p2}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unregister(Landroid/window/IScreenRecordingCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Landroid/window/IScreenRecordingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    iget p1, p1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

    iget v3, v1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    iget p1, v1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
