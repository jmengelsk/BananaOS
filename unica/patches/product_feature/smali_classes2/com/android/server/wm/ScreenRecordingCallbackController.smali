.class public final Lcom/android/server/wm/ScreenRecordingCallbackController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mLastInvokedStateByUid:Landroid/util/ArrayMap;

.field public mRecordedWC:Lcom/android/server/wm/WindowContainer;

.field public mWatcherCallbackRegistered:Z

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

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

    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

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
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget v2, v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget-object v2, v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, p2}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "ScreenRecordingCallbackController:\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "  Registered callbacks:\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget v3, v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "    callback=%s uid=%s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "  Last invoked states:\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "    uid=%s isVisibleInScreenRecording=%s\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final ensureMediaProjectionWatcherCallbackRegistered()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;

    invoke-direct {v4, p0}, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V

    invoke-interface {v0, v4}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-object v0, v3

    :catch_1
    :try_start_2
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_ERROR_enabled:[Z

    const/4 v5, 0x4

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x40c38cb0e02b376aL    # 10009.381841089304

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    :cond_2
    :goto_2
    return-void

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;-><init>(Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public final unregister(Landroid/window/IScreenRecordingCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Landroid/window/IScreenRecordingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

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
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget p1, p1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    iget v3, v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    iget p1, v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

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
