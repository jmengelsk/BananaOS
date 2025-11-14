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
    .registers 6

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_17
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_2a

    :try_start_1c
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2c

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_2f

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p0

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_2a

    throw p0
.end method

.method public static -$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped MediaProjection to start new incoming projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9b

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5b

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    if-eqz v0, :cond_70

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_92

    :cond_70
    const-string v0, "0"

    const-string/jumbo v1, "secmm.wfd.demo"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_92
    :goto_92
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :cond_9b
    invoke-virtual {p1}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a8
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

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

    goto :goto_b4

    :catchall_d4
    move-exception p0

    goto :goto_d8

    :cond_d6
    monitor-exit v0

    return-void

    :goto_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_a8 .. :try_end_d9} :catchall_d4

    throw p0
.end method

.method public static -$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V
    .registers 12

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped active MediaProjection and dispatching stop to callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v0

    :goto_10
    move v5, v0

    goto :goto_14

    :cond_12
    const/4 v0, -0x2

    goto :goto_10

    :goto_14
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget v0, v1, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
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

    if-eqz v0, :cond_74

    iget-object p2, v1, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    iget-object v1, p2, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_54
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

    goto :goto_74

    :catchall_70
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_54 .. :try_end_73} :catchall_70

    throw p0

    :cond_74
    :goto_74
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_7e
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/IMediaProjectionCallback;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    invoke-direct {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>()V

    iput-object v1, v3, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8a

    :catchall_a3
    move-exception v0

    move-object p0, v0

    goto :goto_d4

    :cond_a6
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

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

    goto :goto_b2

    :cond_d2
    monitor-exit p2

    return-void

    :goto_d4
    monitor-exit p2
    :try_end_d5
    .catchall {:try_start_7e .. :try_end_d5} :catchall_a3

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V
    .registers 10

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

    if-nez p2, :cond_d6

    new-instance p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    new-instance v0, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7a
    sget-object v2, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    const/4 v3, 0x0

    if-nez v2, :cond_9d

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

    goto :goto_9d

    :catchall_9b
    move-exception p0

    goto :goto_d4

    :cond_9d
    :goto_9d
    sget-object v2, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_7a .. :try_end_a0} :catchall_9b

    sget-object v4, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_a3
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    if-nez v1, :cond_c9

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

    goto :goto_c9

    :catchall_c7
    move-exception p0

    goto :goto_d2

    :cond_c9
    :goto_c9
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    monitor-exit v4
    :try_end_cc
    .catchall {:try_start_a3 .. :try_end_cc} :catchall_c7

    invoke-direct {p2, v0, v2, v1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;-><init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V

    sput-object p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    goto :goto_d6

    :goto_d2
    :try_start_d2
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_c7

    throw p0

    :goto_d4
    :try_start_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_9b

    throw p0

    :cond_d6
    :goto_d6
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
    .registers 7

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v3, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_3c

    :try_start_d
    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_41

    :try_start_19
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_29
    .catchall {:try_start_19 .. :try_end_28} :catchall_3c

    goto :goto_33

    :catch_29
    move-exception p1

    :try_start_2a
    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string/jumbo v2, "Unable to link to death for media projection monitoring callback"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    goto :goto_3f

    :catchall_3c
    move-exception p0

    goto :goto_44

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_3c

    return-object p0

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0

    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_3c

    throw p0
.end method

.method public createProjectionInternal(ILjava/lang/String;IZLandroid/os/UserHandle;I)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 19

    const-string/jumbo v1, "MediaProjectionManagerService"

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_9f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_15
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

    if-eqz p4, :cond_39

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x2e

    invoke-virtual {v0, v9, v4, v6, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_36

    goto :goto_39

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto :goto_9b

    :cond_39
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_3c
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_44} :catch_45

    goto :goto_59

    :catch_45
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Package not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_59
    if-eqz v0, :cond_9a

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9a

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHINA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :try_start_72
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
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_90} :catch_91

    goto :goto_9a

    :catch_91
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9a
    :goto_9a
    return-object p3

    :goto_9b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "No package matching :"

    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;

    invoke-direct {v4, v2, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;-><init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :catchall_28
    move-exception p0

    goto :goto_2c

    :cond_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_28

    throw p0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    goto :goto_12

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a

    throw p0
.end method

.method public getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 15

    const-string/jumbo v1, "Package not found: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_bb

    :try_start_a
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v5, 0x0

    if-eqz v0, :cond_ab

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_ab

    :cond_1b
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v6, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-ne v6, p1, :cond_9d

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string/jumbo v6, "Reusing token: getProjection can reuse the current projection"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_3b

    :try_start_32
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v0, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_3a} :catch_3f
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3b

    goto :goto_52

    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b9

    :catch_3f
    move-exception v0

    :try_start_40
    const-string/jumbo v6, "MediaProjectionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    if-eqz v5, :cond_96

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_96

    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_69
    .catchall {:try_start_40 .. :try_end_69} :catchall_3b

    if-eqz v0, :cond_96

    :try_start_6b
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
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_89} :catch_8a
    .catchall {:try_start_6b .. :try_end_89} :catchall_3b

    goto :goto_96

    :catch_8a
    move-exception v0

    move-object p1, v0

    :try_start_8c
    const-string/jumbo p2, "MediaProjectionManagerService"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_96
    :goto_96
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    monitor-exit v4
    :try_end_99
    .catchall {:try_start_8c .. :try_end_99} :catchall_3b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_9d
    :try_start_9d
    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Not possible to reuse the current projection instance due to package details mismatching"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_3b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_ab
    :goto_ab
    :try_start_ab
    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Not possible to reuse the current projection instance"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_3b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_b9
    :try_start_b9
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_3b

    :try_start_ba
    throw p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isCurrentProjection(Landroid/os/IBinder;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final monitor()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public notifyAppSelectorDisplayed(I)V
    .registers 10

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
    .registers 6

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_12

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_10
    move-exception p0

    goto :goto_1b

    :cond_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedCaptureBounds(IIILandroid/graphics/Rect;)V

    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_10

    throw p0
.end method

.method public notifyPermissionRequestCancelled(I)V
    .registers 10

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
    .registers 10

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
    .registers 11

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logInitiated"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "media_projection_timestamp_key"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_25

    move-object v2, v5

    goto :goto_29

    :cond_25
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    :goto_29
    if-nez v2, :cond_30

    monitor-exit v1

    goto :goto_3b

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :cond_30
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    invoke-interface {p0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v5

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_2d

    :goto_3b
    if-nez v5, :cond_40

    const/4 p0, -0x1

    :goto_3e
    move v5, p0

    goto :goto_46

    :cond_40
    invoke-virtual {v5}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v1

    long-to-int p0, v1

    goto :goto_3e

    :goto_46
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4b
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
    :try_end_62
    .catchall {:try_start_4b .. :try_end_62} :catchall_6b

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x2

    move v3, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void

    :catchall_6b
    move-exception v0

    move-object p0, v0

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6b

    throw p0

    :goto_6f
    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_2d

    throw p0
.end method

.method public notifyWindowingModeChanged(III)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_12

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_10
    move-exception p0

    goto :goto_1b

    :cond_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedWindowingMode(IIII)V

    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_10

    throw p0
.end method

.method public final onStart()V
    .registers 7

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

    :try_start_2d
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
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_4d

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p2, :cond_21

    const-string/jumbo p2, "MediaProjectionManagerService"

    const-string v0, "Content Recording: Stopped MediaProjection due to user switching"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    :cond_21
    :goto_21
    monitor-exit p1

    return-void

    :goto_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_1f

    throw p0
.end method

.method public requestConsentForInvalidProjection()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
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
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_4e

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string/jumbo v3, "Reusing token: Reshow dialog for due to invalid projection."

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z
    .registers 13

    const-string v0, "Content Recording: Stopped MediaProjection due to failing to set ContentRecordingSession - id= "

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_4b

    :try_start_d
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v1, :cond_48

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result p1

    invoke-static {p1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_80

    :cond_1f
    const-string/jumbo p1, "none"

    :goto_22
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

    :cond_48
    const/4 p0, 0x0

    monitor-exit v2

    return p0

    :cond_4b
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_7d

    iput-object p1, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz p1, :cond_74

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

    :cond_74
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    :cond_7d
    const/4 p0, 0x1

    monitor-exit v2

    return p0

    :goto_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_d .. :try_end_81} :catchall_1c

    throw p0
.end method

.method public final setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V
    .registers 4

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    :cond_d
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

    if-nez p0, :cond_2e

    const-string/jumbo p0, "Reusing token: Failed to set session for reused consent, so stop"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .registers 11

    const-string/jumbo v0, "Reusing token: Ignore consent result "

    const-string v1, "Content Recording: Stopped MediaProjection due to user consent result of CANCEL - id= "

    const-string/jumbo v2, "Reusing token: Handling user consent result "

    const-string/jumbo v3, "Reusing token: Ignore consent result of "

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_15

    if-ne p1, v5, :cond_3f

    :cond_15
    if-nez p2, :cond_19

    move-object p2, v7

    goto :goto_1d

    :cond_19
    :try_start_19
    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_1d
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    move-result p2

    if-nez p2, :cond_3f

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

    :catchall_3c
    move-exception p0

    goto/16 :goto_da

    :cond_3f
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p2, :cond_4e

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Can\'t review consent with no ongoing projection."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :cond_4e
    iget-object p2, p2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz p2, :cond_c1

    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result p2

    if-nez p2, :cond_59

    goto :goto_c1

    :cond_59
    const-string/jumbo p2, "MediaProjectionManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_9b

    if-eqz p1, :cond_9b

    if-eq p1, v6, :cond_92

    if-eq p1, v5, :cond_75

    goto :goto_bf

    :cond_75
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    if-nez p1, :cond_7e

    goto :goto_86

    :cond_7e
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    iget-object v7, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    :goto_86
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskId:I

    invoke-static {v7, p1}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_bf

    :cond_92
    const/4 p1, 0x0

    invoke-static {p1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_bf

    :cond_9b
    invoke-virtual {p0, v7}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p1, :cond_bf

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

    :cond_bf
    :goto_bf
    monitor-exit v4

    return-void

    :cond_c1
    :goto_c1
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

    :goto_da
    monitor-exit v4
    :try_end_db
    .catchall {:try_start_19 .. :try_end_db} :catchall_3c

    throw p0
.end method
