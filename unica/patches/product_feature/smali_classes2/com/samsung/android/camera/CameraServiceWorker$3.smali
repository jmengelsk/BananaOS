.class public final Lcom/samsung/android/camera/CameraServiceWorker$3;
.super Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireRequestInjector()Landroid/os/IBinder;
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_11

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    return-object p0

    :cond_11
    const-string p0, "CameraService_worker"

    const-string/jumbo v0, "Only system user is allowed to call acquireRequestInjector"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

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

    :try_start_3a
    iget-object v0, p1, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_12d

    :try_start_3d
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
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_12a

    monitor-exit p1

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p3, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    const-string p1, "\t\tTotal # of ExtraRequest: "

    monitor-enter p3

    :try_start_65
    iget-object v0, p3, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_127

    :try_start_68
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

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_100

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

    goto :goto_8c

    :catchall_fe
    move-exception p0

    goto :goto_125

    :cond_100
    monitor-exit v0
    :try_end_101
    .catchall {:try_start_68 .. :try_end_101} :catchall_fe

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

    :goto_125
    :try_start_125
    monitor-exit v0
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_fe

    :try_start_126
    throw p0

    :catchall_127
    move-exception p0

    monitor-exit p3
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_127

    throw p0

    :catchall_12a
    move-exception p0

    :try_start_12b
    monitor-exit v0
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    :try_start_12c
    throw p0

    :catchall_12d
    move-exception p0

    monitor-exit p1
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_12d

    throw p0
.end method

.method public final getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .registers 8

    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_14

    aget-object v4, p0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    return v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_26

    aget-object v4, p0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_26
    const-string p0, "CameraService_worker"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_30

    return v3

    :cond_30
    invoke-static {p2, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p0

    if-nez p0, :cond_37

    return v1

    :cond_37
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-eqz p0, :cond_3c

    return v3

    :cond_3c
    return v1
.end method

.method public final getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

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

    :cond_26
    invoke-static {p2, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    if-eqz p2, :cond_6d

    iget v0, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    if-nez p2, :cond_52

    const-string p0, "CameraService_worker"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid display id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-static {p2, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v2

    :cond_52
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_57
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    if-nez p0, :cond_61

    monitor-exit p2

    return v2

    :catchall_5f
    move-exception p0

    goto :goto_6b

    :cond_61
    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-eqz p1, :cond_67

    monitor-exit p2

    return v2

    :cond_67
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    monitor-exit p2

    return p0

    :goto_6b
    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_5f

    throw p0

    :cond_6d
    const-string p0, "CameraService_worker"

    const-string p1, "Failed to query display manager!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final notifyCameraSessionEvent(ILjava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "Non acceptable event type event "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x417

    if-eq v1, v2, :cond_28

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

    :cond_28
    sget-boolean v1, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v1, :cond_48

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

    :cond_48
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v1, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_a0

    :try_start_51
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

    goto :goto_9c

    :catchall_6b
    move-exception p0

    goto :goto_9e

    :pswitch_6d  #0x6
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7508"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :pswitch_75  #0x5
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7507"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :pswitch_7d  #0x4
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7506"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :pswitch_85  #0x3
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7505"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :pswitch_8d  #0x2
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7504"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :pswitch_95  #0x1
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7503"

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    monitor-exit v1

    return-void

    :goto_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_51 .. :try_end_9f} :catchall_6b

    throw p0

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_95  #00000001
        :pswitch_8d  #00000002
        :pswitch_85  #00000003
        :pswitch_7d  #00000004
        :pswitch_75  #00000005
        :pswitch_6d  #00000006
    .end packed-switch
.end method

.method public final notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x417

    if-eq v5, v6, :cond_2e

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

    :cond_2e
    sget-boolean v5, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    const/4 v5, 0x2

    const/16 v6, 0x65

    const/16 v7, 0x64

    const/4 v8, 0x3

    if-eqz v1, :cond_54

    if-eq v1, v4, :cond_51

    if-eq v1, v5, :cond_4e

    if-eq v1, v8, :cond_4b

    if-eq v1, v7, :cond_48

    if-eq v1, v6, :cond_45

    const-string v9, "CAMERA_STATE_UNKNOWN"

    goto :goto_56

    :cond_45
    const-string v9, "CAMERA_STATE_OPENING_FAILED"

    goto :goto_56

    :cond_48
    const-string v9, "CAMERA_STATE_OPENING"

    goto :goto_56

    :cond_4b
    const-string v9, "CAMERA_STATE_CLOSED"

    goto :goto_56

    :cond_4e
    const-string v9, "CAMERA_STATE_IDLE"

    goto :goto_56

    :cond_51
    const-string v9, "CAMERA_STATE_ACTIVE"

    goto :goto_56

    :cond_54
    const-string v9, "CAMERA_STATE_OPEN"

    :goto_56
    if-eqz v2, :cond_66

    if-eq v2, v4, :cond_63

    if-eq v2, v5, :cond_60

    const-string/jumbo v10, "UnknownCamera"

    goto :goto_68

    :cond_60
    const-string v10, "ExternalCamera"

    goto :goto_68

    :cond_63
    const-string v10, "FrontCamera"

    goto :goto_68

    :cond_66
    const-string v10, "BackCamera"

    :goto_68
    sget-boolean v11, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v11, :cond_84

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

    :cond_84
    move-object/from16 v9, p0

    iget-object v9, v9, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string/jumbo v10, "Non acceptable state "

    const-string/jumbo v12, "Open camera("

    const-string v13, "Can\'t save wifi info : "

    const-string v14, "Close camera("

    iget-object v15, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v15

    if-eqz v1, :cond_17b

    if-eq v1, v4, :cond_e3

    if-eq v1, v5, :cond_dc

    if-eq v1, v8, :cond_b7

    if-eq v1, v7, :cond_1c5

    if-eq v1, v6, :cond_1c5

    :try_start_a1
    const-string v0, "CameraService_worker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c5

    :catchall_b4
    move-exception v0

    goto/16 :goto_1d0

    :cond_b7
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

    goto/16 :goto_1c5

    :cond_dc
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c5

    :cond_e3
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/camera/rear/cam_wifi_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c5

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

    if-eqz v5, :cond_13c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_132

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

    goto :goto_13c

    :cond_132
    if-eqz v11, :cond_13c

    const-string v0, "CameraService_worker"

    const-string/jumbo v5, "wifiInfo is null So, can not save wifi info."

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_a1 .. :try_end_13c} :catchall_b4

    :cond_13c
    :goto_13c
    :try_start_13c
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v0, "/sys/class/camera/rear/cam_wifi_info"

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_143} :catch_155
    .catchall {:try_start_13c .. :try_end_143} :catchall_b4

    :try_start_143
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_151
    .catchall {:try_start_143 .. :try_end_151} :catchall_157

    :try_start_151
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_154} :catch_155
    .catchall {:try_start_151 .. :try_end_154} :catchall_b4

    goto :goto_177

    :catch_155
    move-exception v0

    goto :goto_162

    :catchall_157
    move-exception v0

    move-object v3, v0

    :try_start_159
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_15d

    goto :goto_161

    :catchall_15d
    move-exception v0

    :try_start_15e
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_161
    throw v3
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_162} :catch_155
    .catchall {:try_start_15e .. :try_end_162} :catchall_b4

    :goto_162
    :try_start_162
    sget-boolean v3, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v3, :cond_177

    const-string v3, "CameraService_worker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_177
    :goto_177
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c5

    :cond_17b
    iget-boolean v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    if-eqz v1, :cond_1a2

    iget-boolean v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    if-eqz v1, :cond_1a2

    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_188
    if-ge v7, v5, :cond_196

    aget-object v8, v1, v7

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_194

    move v6, v4

    goto :goto_196

    :cond_194
    add-int/2addr v7, v4

    goto :goto_188

    :cond_196
    :goto_196
    if-nez v6, :cond_1a2

    const-string v1, "7501"

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2, v1, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a2
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

    :cond_1c5
    :goto_1c5
    iget-object v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    monitor-exit v15

    return-void

    :goto_1d0
    monitor-exit v15
    :try_end_1d1
    .catchall {:try_start_162 .. :try_end_1d1} :catchall_b4

    throw v0
.end method

.method public final pingForUpdate()V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_2f

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_2f

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

    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_33
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

    :goto_4f
    const/16 v6, 0x1e

    if-ge v5, v4, :cond_5b

    aget-object v7, v3, v5

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_63

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendAllExtraRequestsToRequestInjector()V
    :try_end_62
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5b .. :try_end_62} :catch_65
    .catchall {:try_start_5b .. :try_end_62} :catchall_63

    goto :goto_7d

    :catchall_63
    move-exception p0

    goto :goto_8f

    :catch_65
    move-exception v2

    :try_start_66
    const-string v3, "CameraService_worker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pingForUpdate exception happen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_63

    :try_start_82
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0, v6}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_8c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8c
    move-exception p0

    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_63

    :goto_8f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final queryPackageName(II)Ljava/lang/String;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const-string v2, ""

    const-string v3, "CameraService_worker"

    if-eq v0, v1, :cond_27

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

    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_2b
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_43

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_89

    :cond_43
    :goto_43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_47

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p2, :cond_47

    iget-object p0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz p0, :cond_85

    array-length p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_85

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
    :try_end_81
    .catchall {:try_start_2b .. :try_end_81} :catchall_41

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDeviceOrientationListener(Z)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_25

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

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object v0, v0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2a
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    if-nez p0, :cond_34

    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    goto :goto_3f

    :cond_34
    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_32

    throw p0
.end method

.method public final storeLoggingData(ILjava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object p0

    array-length p0, p0

    if-le p0, p1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    :cond_a
    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :cond_14
    :goto_14
    const-string p0, "CameraService_worker"

    const-string/jumbo p1, "storeLoggingData : type has Inacceptable"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
