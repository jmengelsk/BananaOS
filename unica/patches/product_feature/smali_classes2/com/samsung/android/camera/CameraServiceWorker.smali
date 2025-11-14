.class public Lcom/samsung/android/camera/CameraServiceWorker;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

.field public static final DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

.field public static final SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;


# instance fields
.field public final mActiveCameraUsage:Landroid/util/ArrayMap;

.field public mBootCompleted:Z

.field public mCameraServiceRaw:Landroid/hardware/ICameraService;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

.field public final mContext:Landroid/content/Context;

.field public mDeviceState:J

.field public final mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

.field public final mEnableSurveyMode:Z

.field public final mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCameraOpened:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOpenCameraUsage:Landroid/util/ArrayMap;

.field public mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

.field public final mOrientationLock:Ljava/lang/Object;

.field public final mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

.field public final mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

.field public final mServiceLock:Ljava/lang/Object;

.field public final mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

.field public final mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    sput-boolean v1, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    const-string/jumbo v0, "com.samsung.android.sead"

    const-string/jumbo v1, "com.samsung.sightcare"

    const-string/jumbo v2, "com.sec.android.app.camera"

    const-string/jumbo v3, "com.samsung.android.smartface"

    const-string/jumbo v4, "com.samsung.adaptivebrightnessgo"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.camera.test"

    const-string/jumbo v1, "injector.test"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    const-string/jumbo v0, "injector.test.phone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$3;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-string v1, "CameraService_worker"

    const/4 v2, -0x4

    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    sget-boolean v4, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v4, :cond_7b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enable survey mode is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    new-instance v1, Lcom/samsung/android/camera/ShakeEventListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/camera/ShakeEventListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    new-instance v1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    new-instance v1, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    new-instance v1, Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_PREWARMING_LEVEL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b7

    new-instance v0, Lcom/samsung/android/camera/CameraPrewarmReceiver;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/camera/CameraPrewarmReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    :cond_b7
    return-void
.end method

.method public static getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;
    .registers 14

    const-string v0, "CameraService_worker"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p0}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_6d

    if-eqz p0, :cond_66

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_21

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    new-instance v5, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    iget v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iget-object p0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v3, :cond_44

    const/4 v4, 0x1

    :cond_44
    move v9, v4

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v10

    iget-object p0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v11

    iget v7, v2, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iget v8, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;-><init>(IIIZZZ)V

    goto :goto_5c

    :cond_5b
    move-object v5, v1

    :goto_5c
    if-nez v5, :cond_65

    const-string/jumbo p0, "Recent tasks don\'t include camera client package name: "

    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_65
    return-object v5

    :cond_66
    const-string/jumbo p0, "Recent task list is empty!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_6d
    const-string p0, "Failed to query recent tasks!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public final binderDied()V
    .registers 4

    const-string v0, "CameraService_worker"

    const-string/jumbo v1, "Native camera service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_3b

    const/4 v2, 0x0

    :try_start_f
    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_3f

    :try_start_12
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_3b

    :try_start_22
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_3d

    :cond_2c
    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2a

    :try_start_2d
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    const-string v2, "Close all camera, camera service died"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_42

    :goto_3d
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_2a

    :try_start_3e
    throw p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p0

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3b

    throw p0
.end method

.method public final getCameraService()Landroid/hardware/ICameraService;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v1, :cond_30

    const-string/jumbo v1, "media.camera"

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const-string p0, "CameraService_worker"

    const-string v1, "Could not notify mediaserver, camera service not available."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception p0

    goto :goto_34

    :cond_1c
    const/4 v3, 0x0

    :try_start_1d
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_27
    .catchall {:try_start_1d .. :try_end_20} :catchall_1a

    :try_start_20
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_30

    :catch_27
    const-string p0, "CameraService_worker"

    const-string v1, "Could not link to death of native camera service"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object p0

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_1a

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const-string p0, "CameraService_worker"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraServiceWorker error, invalid message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1d

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    monitor-exit v0

    :goto_1d
    const/4 p0, 0x1

    return p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "insertDMALog: trackingId=4K3-399-1014897, feature="

    const-string v1, ", extra="

    const-string v2, ", value="

    invoke-static {v0, p2, v1, p3, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    const-string v2, "4K3-399-1014897"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_36

    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    if-eqz p1, :cond_42

    const-string/jumbo v1, "value"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_42
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pkg_name"

    const-string/jumbo v2, "com.samsung.android.camera"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "7501"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    if-eqz p1, :cond_a6

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    if-eqz p1, :cond_7b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_78

    const/4 v1, 0x2

    if-eq p1, v1, :cond_75

    const-string/jumbo p1, "UnknownCamera"

    goto :goto_7d

    :cond_75
    const-string p1, "ExternalCamera"

    goto :goto_7d

    :cond_78
    const-string p1, "FrontCamera"

    goto :goto_7d

    :cond_7b
    const-string p1, "BackCamera"

    :goto_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "_"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "MainDisplay"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "3PApp_Camera_Display"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "dimension"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_a6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p2, "com.sec.android.diagmonagent"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final notifyDeviceChange(J)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_13

    iput-wide p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    goto :goto_1b

    :catchall_11
    move-exception p0

    goto :goto_1d

    :cond_13
    const-string p0, "CameraService_worker"

    const-string/jumbo p1, "Same device state has coming. skip"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_11

    throw p0
.end method

.method public final notifyDeviceChangeLocked(JZ)Landroid/util/Pair;
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    const-string v0, "CameraService_worker"

    if-nez p0, :cond_19

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "Could not notify mediaserver, camera service not available."

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "NotifyDeviceStateChange 0x%X, sync(%b)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_37

    :try_start_31
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChangeSync(J)V

    goto :goto_3a

    :catch_35
    move-exception p0

    goto :goto_51

    :cond_37
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChange(J)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_35

    :goto_3a
    new-instance p0, Landroid/util/Pair;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "NotifyDeviceStateChange success: 0x%X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :goto_51
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Could not notify device state change, remote exception: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final notifyDeviceChangeRetryLocked(I)V
    .registers 5

    iget-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move p1, v2

    :cond_12
    if-gtz p1, :cond_15

    return-void

    :cond_15
    const-string v0, "CameraService_worker"

    const-string v1, "Could not notify camera service of device state change, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 7

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2b

    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void

    :cond_2b
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_60

    :try_start_2f
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1

    const/4 v0, 0x0

    :goto_3a
    array-length v1, p1

    if-ge v0, v1, :cond_4e

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    aget v2, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_44} :catch_47

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :catch_47
    const-string p1, "CameraService_worker"

    const-string v0, "Failed to register display window listener!"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_51
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    monitor-exit v0

    goto/16 :goto_e3

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_5d

    throw p0

    :cond_60
    const/16 v0, 0x258

    if-ne p1, v0, :cond_e3

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    monitor-enter p1

    monitor-exit p1

    const-string p1, "CameraService_worker"

    const-string/jumbo v0, "Shake event is not supported."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v1, "RequestInjectorService"

    const-string/jumbo v2, "com.samsung.android.vtcamerasettings"

    iget-object v3, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x4

    :try_start_81
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_98

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_93} :catch_96

    if-eqz v2, :cond_be

    goto :goto_98

    :catch_96
    move-exception p1

    goto :goto_b8

    :cond_98
    :goto_98
    const-string/jumbo v2, "VT Camera Setting exists. Register camera listener."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;-><init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V

    iget-object p1, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;Z)V

    goto :goto_c7

    :goto_b8
    const-string/jumbo v2, "pkgInstalledOrNot "

    invoke-static {p1, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    const-string/jumbo p1, "VT Camera Setting does not exist. Skip register camera listener."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :goto_c7
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    iget-object v0, p1, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;

    invoke-direct {v1, p1}, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;-><init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V

    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    :cond_e3
    :goto_e3
    return-void
.end method

.method public final onStart()V
    .registers 3

    const-string v0, "CameraService_worker"

    const-string v1, "CameraServiceWorker is started."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

    const-string/jumbo v1, "media.camera.worker"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
