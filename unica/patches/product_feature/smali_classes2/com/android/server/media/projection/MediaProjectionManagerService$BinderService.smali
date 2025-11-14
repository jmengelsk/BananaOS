.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->addCallback_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createProjection(ILjava/lang/String;IZI)Landroid/media/projection/IMediaProjection;
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/projection/MediaProjectionManagerService;->createProjectionInternal(ILjava/lang/String;IZLandroid/os/UserHandle;I)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "package name must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "MediaProjectionManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    const-string/jumbo p1, "MEDIA PROJECTION MANAGER (dumpsys media_projection)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo p3, "Media Projection: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Requires MANAGE_MEDIA_PROJECTION in order to get active projection info"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProjection(ILjava/lang/String;)Landroid/media/projection/IMediaProjection;
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->getProjection_enforcePermission()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "package name must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasProjectionPermission(ILjava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string/jumbo v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v3, v3, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2e

    invoke-virtual {p0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->isCurrentProjection_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public final notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyActiveProjectionCapturedContentVisibilityChanged_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchVisibilityChanged(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Z)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final notifyAppSelectorDisplayed(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyAppSelectorDisplayed_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyAppSelectorDisplayed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyCaptureBoundsChanged_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v4, v3, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchResize(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;II)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final notifyPermissionRequestCancelled(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestCancelled_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyPermissionRequestCancelled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyPermissionRequestDisplayed(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestDisplayed_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyPermissionRequestDisplayed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyPermissionRequestInitiated(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestInitiated_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyPermissionRequestInitiated(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyWindowingModeChanged(III)V
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyWindowingModeChanged_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyWindowingModeChanged(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestConsentForInvalidProjection(Landroid/media/projection/IMediaProjection;)V
    .locals 4

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->requestConsentForInvalidProjection_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Won\'t request consent again for a token that isn\'t current"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    iget-object p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v2, v1, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    const-string/jumbo p0, "MediaProjectionManagerService"

    const-string/jumbo p1, "Reusing token: Won\'t request consent while MediaProjection is restricted"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->requestConsentForInvalidProjection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->setContentRecordingSession_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result p2

    if-eqz p2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Unable to set ContentRecordingSession on non-current MediaProjection"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .locals 2

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->setUserReviewGrantedConsentResult_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final stopActiveProjection(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->stopActiveProjection_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v3, v3, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "MediaProjectionManagerService"

    const-string v4, "Content Recording: Stopping active projection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
