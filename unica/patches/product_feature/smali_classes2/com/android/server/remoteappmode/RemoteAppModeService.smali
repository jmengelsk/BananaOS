.class public final Lcom/android/server/remoteappmode/RemoteAppModeService;
.super Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAnrCollector:Lcom/android/server/remoteappmode/AnrCollector;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

.field public mIsBootComplete:Z

.field public mIsRemoteAppModeEnabled:Z

.field public mIsStartActivityListenerRegistered:Z

.field public mLTWProtocolVersion:I

.field public mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

.field public final mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

.field public final mRemoteAppControllerCallbacks:Lcom/android/server/remoteappmode/RemoteAppModeService$1;

.field public final mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

.field public final mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

.field public final mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

.field public final mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

.field public final mTransferTaskMap:Ljava/util/HashMap;

.field public mUserSetupCompleteObserver:Lcom/android/server/remoteappmode/RemoteAppModeService$2;

.field public final mVirtualDisplayMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/remoteappmode/RemoteAppModeService;

    const-string/jumbo v0, "RAMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsRemoteAppModeEnabled:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/remoteappmode/RemoteAppModeService$1;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppControllerCallbacks:Lcom/android/server/remoteappmode/RemoteAppModeService$1;

    const-string/jumbo v1, "remoteappmode"

    const/4 v2, -0x4

    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v0

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    invoke-direct {v1}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    new-instance v1, Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    new-instance v1, Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-direct {v1}, Lcom/android/server/remoteappmode/SecureAppNotifier;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    new-instance v1, Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-direct {v1}, Lcom/android/server/remoteappmode/RotationChangeNotifier;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    new-instance v1, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-direct {v1}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    new-instance v1, Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-direct {v1}, Lcom/android/server/remoteappmode/InterceptedActivityRepo;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    new-instance v1, Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    new-instance v1, Lcom/android/server/remoteappmode/AnrCollector;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/AnrCollector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mAnrCollector:Lcom/android/server/remoteappmode/AnrCollector;

    new-instance v1, Lcom/android/server/remoteappmode/ProximityManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/android/server/remoteappmode/ProximityManager;->mContext:Landroid/content/Context;

    iput-object v6, v1, Lcom/android/server/remoteappmode/ProximityManager;->mHandler:Landroid/os/Handler;

    iput-object v0, v1, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    new-instance v2, Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver;

    invoke-direct {v2, p0}, Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    const-string/jumbo p0, "android.intent.action.PHONE_STATE"

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {p0, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getTaskInfo(I)Landroid/app/TaskInfo;
    .locals 4

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final checkPermissionAndAAoWFeature(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string/jumbo p1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_LTW_REMOTE_APP"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LTW_REMOTE_APP feature is not enabled in this device."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkRemoteAppModeEnabled()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v2, v2, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsRemoteAppModeEnabled:Z

    if-eq v2, v0, :cond_3

    sget-boolean v2, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "[RAMS]RemoteAppModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkRemoteAppModeEnabled, isEnabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsRemoteAppModeEnabled:Z

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;

    :try_start_1
    iget-object v2, v2, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->onRemoteAppModeStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final clearAll()V
    .locals 6

    const-string/jumbo v0, "Permission required to clear all resources"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v2, v2, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, v0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_4

    const-string/jumbo v0, "TaskChangeNotifier"

    const-string/jumbo v2, "releaseAllListeners"

    invoke-static {v0, v2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v4, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    monitor-exit v1

    goto :goto_6

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_4
    :goto_6
    return-void

    :goto_7
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I
    .locals 10

    const-string/jumbo v0, "createVirtualDisplay"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const v9, 0x80501

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p2, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-interface/range {p6 .. p6}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/hardware/display/VirtualDisplay;Landroid/os/IBinder;)V

    :try_start_1
    invoke-interface/range {p6 .. p6}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p3, p2, p4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p3, v0

    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object p3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p1, :cond_0

    :try_start_2
    iget-object p4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/Display;->getDisplayId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :goto_2
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final disableSendingUserPresentIntent()V
    .locals 5

    const-string v0, " SecurityException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v3, "disableSendingUserPresentIntent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->disableSendingUserPresentIntent()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo v3, "[RAMS]RemoteAppModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "[RAMS]RemoteAppModeService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_2

    array-length v0, p3

    if-eqz v0, :cond_2

    const-string v0, "-a"

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo p2, "RemoteAppModeService (dumpsys remoteappmode):"

    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 p2, 0x56

    const-string/jumbo v0, "[RAMS]StateStart"

    const-string v1, "=========================================================================="

    invoke-static {p2, v0, v1}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-virtual {v0, p3}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "[RAMS]StateEnd"

    invoke-static {p2, v0, v1}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "[RAMS]SavedLogsStart"

    invoke-static {p2, v0, v1}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-virtual {v0, p3}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "[RAMS]SavedLogsEnd"

    invoke-static {p2, v0, v1}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "mCurrentUserId"

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "Configuration"

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "display_size_forced"

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "DISPLAY_SIZE_FORCED"

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "display_density_forced"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DISPLAY_DENSITY_FORCED"

    invoke-virtual {p3, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "screen_off_timeout"

    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "SCREEN_OFF_TIMEOUT"

    invoke-virtual {p3, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SHOW_IME_WITH_HARD_KEYBOARD"

    invoke-virtual {p3, p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final enableSendingUserPresentIntent(Ljava/lang/String;)V
    .locals 4

    const-string v0, " SecurityException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v3, "enableSendingUserPresentIntent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/ProximityManager;->enableSendingUserPresentIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final forceStopPackage(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "[RAMS]RemoteAppModeService"

    const-string v1, " removeTask: RemoteException "

    const-string v2, " removeTask: SecurityException "

    const-string/jumbo v3, "Permission Denied"

    invoke-virtual {p0, v3}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-interface {v5, p1, p0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    const-string v0, " removeTask: SecurityException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v3, "Permission Denied"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mAnrCollector:Lcom/android/server/remoteappmode/AnrCollector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/AnrCollector;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getProtocolVersion()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final getSendingUserPresentExpiredTime()J
    .locals 5

    const-string v0, " SecurityException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v3, "setExpiredTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo v3, "[RAMS]RemoteAppModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v0, 0x0

    return-wide v0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final initializeStates()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Lcom/android/server/remoteappmode/RemoteAppModeService$2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RemoteAppModeService$2;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Lcom/android/server/remoteappmode/RemoteAppModeService$2;

    :cond_0
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Lcom/android/server/remoteappmode/RemoteAppModeService$2;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    return-void
.end method

.method public final isAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "isAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    const-string/jumbo v1, "[RAMS]RemoteAppModeService"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isAllowed = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final isSendingUserPresentEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "isSendingUserPresentEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_5
    const-string/jumbo v3, "[RAMS]RemoteAppModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SecurityException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isUserSetupComplete()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "[RAMS]RemoteAppModeService"

    const-string/jumbo v0, "isUserSetupComplete()=false"

    invoke-static {p0, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public final launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo p2, "launchApplication"

    invoke-virtual {p0, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p4}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const-string/jumbo p4, "[RAMS]RemoteAppModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launchApplication  - intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p4, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p4, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p4, p4, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/remoteappmode/InterceptedActivityInfo;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    move-object p4, p2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "[RAMS]RemoteAppModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "launchApplication  - interceptedActivityInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    if-eqz p4, :cond_2

    iget-object p2, p4, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->callerInfo:Lcom/android/server/wm/RemoteAppController$CallerInfo;

    iget v1, p4, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->userId:I

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "mInterceptedActivityInfoMap size = "

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string/jumbo v5, "[RAMS] InterceptedActivityRepo"

    const-string/jumbo v6, "mInterceptedActivityInfoMap.remove - hashcode : "

    const-string v7, ", intent : "

    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, v2, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "[RAMS] InterceptedActivityRepo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    :goto_2
    const-string/jumbo v2, "exception  = "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-nez v0, :cond_3

    :try_start_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    if-eqz p4, :cond_5

    if-eqz p2, :cond_4

    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, p2, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startRemoteActivityAsCaller(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;ILandroid/os/Bundle;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_5
    :try_start_3
    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final moveDisplayToTop(I)V
    .locals 2

    const-string/jumbo v0, "moveDisplayToTop"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppModeService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService$3;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUserChanged(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    const-string/jumbo v1, "[RAMS]RemoteAppModeService"

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUserChanged(), userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->initializeStates()V

    return-void
.end method

.method public final registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "registerRemoteAppModeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    iget-object p0, v4, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v3, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-le v2, v5, :cond_0

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v6, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeNotifier;Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;II)V

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, v4, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    monitor-exit p0

    return p1

    :catch_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z
    .locals 8

    const-string/jumbo v0, "registerRotationChangeListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    iget-object p0, v2, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v4, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;-><init>(Lcom/android/server/remoteappmode/RotationChangeNotifier;Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;II)V

    invoke-virtual {v1, p3}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->registerRotationWatcher(I)V

    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, v2, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    monitor-exit p0

    return p1

    :catch_0
    monitor-exit p0

    return v7

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "registerSecureAppChangedListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    const-class v1, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    iget-object p0, v3, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v5, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;-><init>(Lcom/android/server/remoteappmode/SecureAppNotifier;Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;II)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, v3, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    monitor-exit p0

    return p1

    :catch_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z
    .locals 9

    const-string/jumbo v0, "Permission required to register StartActivityInterceptListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppControllerCallbacks:Lcom/android/server/remoteappmode/RemoteAppModeService$1;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerRemoteAppControllerCallbacks(Lcom/android/server/remoteappmode/RemoteAppModeService$1;)V

    iput-boolean v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    iget-object p0, v4, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    new-instance v3, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    invoke-virtual {p2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v6, p2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;-><init>(Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;II)V

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, v4, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0

    return v2

    :catch_0
    monitor-exit p0

    return v1

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "registerTaskChangeListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final releaseVirtualDisplay(I)V
    .locals 5

    const-string/jumbo v0, "releaseVirtualDisplay"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v1, v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v4, p1, :cond_0

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v1, v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resizeVirtualDisplay(IIIILandroid/view/Surface;)V
    .locals 3

    const-string/jumbo v0, "resizeVirtualDisplay"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v1, v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v1, v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p0, p5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z
    .locals 12

    const-string/jumbo v0, "sendNotificationAction"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-gt v0, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez p3, :cond_1

    :try_start_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_1
    move-object v7, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {v7, p3}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object p1, p1, p2

    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v5, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p3

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_3
    return v1
.end method

.method public final sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 11

    const-string/jumbo v0, "sendNotificationContent"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :goto_0
    move-object v3, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendPendingIntent(Landroid/app/PendingIntent;)V
    .locals 9

    const-string/jumbo v0, "sendPendingIntent"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    return-void
.end method

.method public final setLTWProtocolVersion(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    return-void
.end method

.method public final setSendingUserPresentExpiredTime(J)V
    .locals 4

    const-string v0, " SecurityException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v3, "setExpiredTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v3, "ltw_proximity_expired_time"

    invoke-interface {p0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 4

    const-string/jumbo v0, "profile"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exception  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[RAMS]RemoteAppModeService"

    invoke-static {v3, v2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    invoke-virtual {p3, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_1
    return-void
.end method

.method public final startRFCommService()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "Permission Denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->bindService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final stopRFCommService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "Permission Denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unbindService - mBounded : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v2, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RFCommServiceLauncher"

    invoke-static {v4, v3}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mConnection:Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;

    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    iput-boolean p0, v2, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final transferTaskUsingIntent(Landroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "transferTaskUsingIntent"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/remoteappmode/RemoteAppModeService;->transferTaskWithoutInterceptInternal(Landroid/content/Intent;IILandroid/os/Bundle;Landroid/app/TaskInfo;)V

    return-void
.end method

.method public final transferTaskWithoutIntercept(IILandroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "transferTaskWithoutIntercept"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/remoteappmode/RemoteAppModeService;->transferTaskWithoutInterceptInternal(Landroid/content/Intent;IILandroid/os/Bundle;Landroid/app/TaskInfo;)V

    return-void
.end method

.method public final transferTaskWithoutInterceptInternal(Landroid/content/Intent;IILandroid/os/Bundle;Landroid/app/TaskInfo;)V
    .locals 2

    if-eqz p5, :cond_2

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_0

    new-instance p2, Landroid/app/ActivityOptions;

    invoke-direct {p2, p4}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p2, :cond_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    iget p3, p5, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    return-void
.end method

.method public final unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "unregisterRemoteAppModeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z
    .locals 3

    const-string/jumbo v0, "unregisterRotationChangeListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z
    .locals 2

    const-string/jumbo v0, "unregisterSecureAppChangedListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z
    .locals 3

    const-string/jumbo v0, "Permission required to unregister StartActivityInterceptListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppControllerCallbacks:Lcom/android/server/remoteappmode/RemoteAppModeService$1;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->unregisterRemoteAppControllerCallbacks(Lcom/android/server/remoteappmode/RemoteAppModeService$1;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    iget-object v2, v0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    iget-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z
    .locals 2

    const-string/jumbo v0, "unregisterTaskChangeListener"

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
