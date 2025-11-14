.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field static final MEDIA_PROJECTION_PREVENTS_REUSING_CONSENT:J = 0xfddea07L


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field public final mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDeathEaters:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

.field public final mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

.field public mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field public final mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field public mProjectionToken:Landroid/os/IBinder;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped MediaProjection to start new incoming projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const-string v0, "0"

    const-string/jumbo v1, "secmm.wfd.demo"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :cond_4
    invoke-virtual {p1}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(I)V

    iput-object v3, v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    iput-object v2, v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V
    .locals 9

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped active MediaProjection and dispatching stop to callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget v0, v1, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v2, "MediaProjectionMetricsLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "logStopped: wasCaptureInProgress="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " stopReason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {v2}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    invoke-virtual {v1, p2}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->stopReasonToSessionStopSource(I)I

    move-result v8

    const/4 v7, 0x0

    const/4 v3, 0x7

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    if-eqz v0, :cond_2

    iget-object p2, v1, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    iget-object v1, p2, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p2, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    invoke-interface {v0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v2, "media_projection_timestamp_key"

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/IMediaProjectionCallback;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    invoke-direct {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>()V

    iput-object v1, v3, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(I)V

    iput-object v2, v4, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    iput-object v1, v4, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_4
    monitor-exit p2

    return-void

    :goto_6
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    new-instance p2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    const-string/jumbo p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-string/jumbo p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaRouter;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    new-instance p2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    invoke-direct {p2, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    sget-object p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    new-instance v0, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "media_projection_session_id"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-direct {v4, v2}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v4, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "media_projection_timestamp"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-static {}, Ljava/time/InstantSource;->system()Ljava/time/InstantSource;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;-><init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V

    sput-object v3, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p2, v0, v2, v1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;-><init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V

    sput-object p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    goto :goto_4

    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_4
    sget-object p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    new-instance p2, Lcom/android/server/media/projection/MediaProjectionStopController;

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/media/projection/MediaProjectionStopController;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    .locals 5

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v3, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string/jumbo v2, "Unable to link to death for media projection monitoring callback"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public createProjectionInternal(ILjava/lang/String;IZLandroid/os/UserHandle;I)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 12

    const-string/jumbo v1, "MediaProjectionManagerService"

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v10

    move-object v5, p0

    move v7, p1

    move-object v8, p2

    move v6, p3

    move/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZI)V

    move-object p3, v4

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x2e

    invoke-virtual {v0, v9, v4, v6, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_2
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Package not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHINA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    const-string/jumbo v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/appop/AppOpsService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    const/16 v5, 0x3e8

    const/4 v8, 0x0

    const/16 v10, 0x258

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object p3

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "No package matching :"

    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;

    invoke-direct {v4, v2, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;-><init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 12

    const-string/jumbo v1, "Package not found: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v6, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-ne v6, p1, :cond_2

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string/jumbo v6, "Reusing token: getProjection can reuse the current projection"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v0, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v6, "MediaProjectionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v5, :cond_1

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    const-string/jumbo v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/appop/AppOpsService;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x258

    const/16 v6, 0x3e8

    const/4 v9, 0x0

    move v7, p1

    move-object v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    const-string/jumbo p2, "MediaProjectionManagerService"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_2
    :try_start_6
    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Not possible to reuse the current projection instance due to package details mismatching"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_3
    :goto_2
    :try_start_7
    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Not possible to reuse the current projection instance"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_3
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isCurrentProjection(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final monitor()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyAppSelectorDisplayed(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logAppSelectorDisplayed"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_0

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedCaptureBounds(IIILandroid/graphics/Rect;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyPermissionRequestCancelled(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v2, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public notifyPermissionRequestDisplayed(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logPermissionRequestDisplayed"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public notifyPermissionRequestInitiated(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logInitiated"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "media_projection_timestamp_key"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    invoke-interface {p0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v5, :cond_2

    const/4 p0, -0x1

    :goto_2
    move v5, p0

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v1

    long-to-int p0, v1

    goto :goto_2

    :goto_3
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v3, "media_projection_session_id_key"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x2

    move v3, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyWindowingModeChanged(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_0

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedWindowingMode(IIII)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStart()V
    .locals 6

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "media_projection"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    const/16 v1, 0x8

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v3, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "MediaProjectionManagerService"

    const-string v0, "Content Recording: Stopped MediaProjection due to user switching"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestConsentForInvalidProjection()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_media_projection_user_consent_required"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "extra_media_projection_package_reusing_consent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string/jumbo v3, "Reusing token: Reshow dialog for due to invalid projection."

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z
    .locals 11

    const-string v0, "Content Recording: Stopped MediaProjection due to failing to set ContentRecordingSession - id= "

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result p1

    invoke-static {p1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "none"

    :goto_0
    const-string/jumbo v1, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :cond_1
    const/4 p0, 0x0

    monitor-exit v2

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_4

    iput-object p1, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v6, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x4

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    :cond_4
    const/4 p0, 0x1

    monitor-exit v2

    return p0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Reusing token: Processed consent so set the session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MediaProjectionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "Reusing token: Failed to set session for reused consent, so stop"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .locals 8

    const-string/jumbo v0, "Reusing token: Ignore consent result "

    const-string v1, "Content Recording: Stopped MediaProjection due to user consent result of CANCEL - id= "

    const-string/jumbo v2, "Reusing token: Handling user consent result "

    const-string/jumbo v3, "Reusing token: Ignore consent result of "

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_0

    if-ne p1, v5, :cond_2

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v7

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p0, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for a token that isn\'t current"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p2, :cond_3

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Can\'t review consent with no ongoing projection."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :cond_3
    iget-object p2, p2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo p2, "MediaProjectionManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    iget-object v7, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    :goto_1
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskId:I

    invoke-static {v7, p1}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    invoke-static {p1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p1, :cond_9

    const-string/jumbo p1, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :cond_9
    :goto_2
    monitor-exit v4

    return-void

    :cond_a
    :goto_3
    const-string/jumbo p0, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " if not waiting for the result."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
