.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 4

    return-void
.end method

.method public final onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 3

    return-void
.end method

.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    goto :goto_20

    :cond_18
    new-instance v3, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_20
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_14

    goto :goto_1d

    :cond_14
    new-instance v2, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :goto_1d
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
