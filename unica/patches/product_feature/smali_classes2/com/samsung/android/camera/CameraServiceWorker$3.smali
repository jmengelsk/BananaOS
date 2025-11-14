.class public final Lcom/samsung/android/camera/CameraServiceWorker$3;
.super Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireRequestInjector()Landroid/os/IBinder;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    return-object p0

    :cond_0
    const-string p0, "CameraService_worker"

    const-string/jumbo v0, "Only system user is allowed to call acquireRequestInjector"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "CameraService_worker is up and running"

    const-string p3, "\tCamera is opened: "

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-boolean p3, p3, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    invoke-static {p1, p3, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    const-string p1, "\n\tFold Event"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\t\tLast fold state: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-wide v0, p3, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    const-string p3, "\tLast event: "

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    monitor-enter p1

    monitor-exit p1

    const-string v1, "\n\tShake EventListener: false"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-enter p1

    monitor-exit p1

    sget-object p3, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p3, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p1

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p3, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    const-string p1, "\t\tTotal # of ExtraRequest: "

    monitor-enter p3

    :try_start_2
    iget-object v0, p3, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "\n\tDump of Request Injector Service Activity"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p3, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "key.tagName"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", i32 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "key.i32"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", u8 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "key.u8"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string/jumbo v3, "null"

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p3

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->dump(Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->dump(Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    return-void

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .locals 5

    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "CameraService_worker"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    invoke-static {p2, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-eqz p0, :cond_6

    return v3

    :cond_6
    return v1
.end method

.method public final getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p0, "CameraService_worker"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Calling UID: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t match expected camera service UID!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {p2, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    if-eqz p2, :cond_5

    iget v0, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "CameraService_worker"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid display id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-static {p2, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    if-nez p0, :cond_3

    monitor-exit p2

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-eqz p1, :cond_4

    monitor-exit p2

    return v2

    :cond_4
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    monitor-exit p2

    return p0

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    const-string p0, "CameraService_worker"

    const-string p1, "Failed to query display manager!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final notifyCameraSessionEvent(ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "Non acceptable event type event "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x417

    if-eq v1, v2, :cond_0

    const-string p0, "CameraService_worker"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Calling UID: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CameraService_worker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", details : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v1, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string p0, "CameraService_worker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", details : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7508"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7507"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7506"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7505"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7504"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7503"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x417

    if-eq v5, v6, :cond_0

    const-string v0, "CameraService_worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling UID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v5, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    const/4 v5, 0x2

    const/16 v6, 0x65

    const/16 v7, 0x64

    const/4 v8, 0x3

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    const-string v9, "CAMERA_STATE_UNKNOWN"

    goto :goto_0

    :cond_1
    const-string v9, "CAMERA_STATE_OPENING_FAILED"

    goto :goto_0

    :cond_2
    const-string v9, "CAMERA_STATE_OPENING"

    goto :goto_0

    :cond_3
    const-string v9, "CAMERA_STATE_CLOSED"

    goto :goto_0

    :cond_4
    const-string v9, "CAMERA_STATE_IDLE"

    goto :goto_0

    :cond_5
    const-string v9, "CAMERA_STATE_ACTIVE"

    goto :goto_0

    :cond_6
    const-string v9, "CAMERA_STATE_OPEN"

    :goto_0
    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_8

    if-eq v2, v5, :cond_7

    const-string/jumbo v10, "UnknownCamera"

    goto :goto_1

    :cond_7
    const-string v10, "ExternalCamera"

    goto :goto_1

    :cond_8
    const-string v10, "FrontCamera"

    goto :goto_1

    :cond_9
    const-string v10, "BackCamera"

    :goto_1
    sget-boolean v11, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v11, :cond_a

    const-string v12, "CameraService_worker"

    const-string v13, "Camera "

    const-string v14, " facing "

    const-string v15, " state now "

    invoke-static {v13, v0, v14, v10, v15}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " for client "

    const-string v14, " API Level "

    invoke-static {v10, v9, v13, v3, v14}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v9, p5

    invoke-static {v10, v9, v12}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_a
    move-object/from16 v9, p0

    iget-object v9, v9, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string/jumbo v10, "Non acceptable state "

    const-string/jumbo v12, "Open camera("

    const-string v13, "Can\'t save wifi info : "

    const-string v14, "Close camera("

    iget-object v15, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v15

    if-eqz v1, :cond_11

    if-eq v1, v4, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v8, :cond_b

    if-eq v1, v7, :cond_15

    if-eq v1, v6, :cond_15

    :try_start_0
    const-string v0, "CameraService_worker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_b
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_c
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_d
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/camera/rear/cam_wifi_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v3, "00000"

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v3, "%4d%1d"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_e
    if-eqz v11, :cond_f

    const-string v0, "CameraService_worker"

    const-string/jumbo v5, "wifiInfo is null So, can not save wifi info."

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    :goto_2
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v0, "/sys/class/camera/rear/cam_wifi_info"

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    sget-boolean v3, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "CameraService_worker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :cond_11
    iget-boolean v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_6
    if-ge v7, v5, :cond_13

    aget-object v8, v1, v7

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v6, v4

    goto :goto_7

    :cond_12
    add-int/2addr v7, v4

    goto :goto_6

    :cond_13
    :goto_7
    if-nez v6, :cond_14

    const-string v1, "7501"

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2, v1, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :cond_15
    :goto_8
    iget-object v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    monitor-exit v15

    return-void

    :goto_9
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final pingForUpdate()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "CameraService_worker"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling UID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->updateCameraService()V

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CameraService/ScpmReceiver"

    const-string/jumbo v4, "initialize"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x1e

    if-ge v5, v4, :cond_1

    aget-object v7, v3, v5

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendAllExtraRequestsToRequestInjector()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "CameraService_worker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pingForUpdate exception happen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0, v6}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final queryPackageName(II)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const-string v2, ""

    const-string v3, "CameraService_worker"

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Calling UID: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p2, :cond_2

    iget-object p0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz p0, :cond_3

    array-length p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "Package name = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object p0, p0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDeviceOrientationListener(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    const-string p0, "CameraService_worker"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Calling UID: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match expected camera service UID!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v0, v0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final storeLoggingData(ILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object p0

    array-length p0, p0

    if-le p0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "CameraService_worker"

    const-string/jumbo p1, "storeLoggingData : type has Inacceptable"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
