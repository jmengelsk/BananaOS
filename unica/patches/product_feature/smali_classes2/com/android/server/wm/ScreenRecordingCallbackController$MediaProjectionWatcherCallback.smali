.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    return-void
.end method

.method public final onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    return-void
.end method

.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
