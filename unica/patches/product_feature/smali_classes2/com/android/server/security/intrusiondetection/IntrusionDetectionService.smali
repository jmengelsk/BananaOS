.class public Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

.field public final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field public final mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

.field public final mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

.field public volatile mState:I

.field public final mStateCallbacks:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mdisable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 5

    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v3, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {v3, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->release(Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v4, "Remote Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object v0, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->notifyStateMonitors()V

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    throw p0
.end method

.method public static -$$Nest$menable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 9

    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v3, "initialize"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, " is not declared with the permission \"android.permission.BIND_INTRUSION_DETECTION_EVENT_TRANSPORT_SERVICE\""

    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    const v5, 0x1040384

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "debug.intrusiondetection_package_name"

    invoke-static {v3}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mIntrusionDetectionEventTransportConfig: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    const-string v5, "IntrusionDetectionEventTransportConnection"

    invoke-static {v3, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    const-string/jumbo v2, "Unable to find a valid config for the transport service"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v2, v6

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v2, "Can\'t get serviceComponent name"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v7, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    const-string/jumbo v8, "android.permission.BIND_INTRUSION_DETECTION_EVENT_TRANSPORT_SERVICE"

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    goto :goto_1

    :catch_0
    const-string/jumbo v2, "Unable to find serviceComponent"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    :goto_2
    move v0, v6

    goto :goto_4

    :cond_6
    monitor-enter v0

    :catch_1
    :goto_3
    :try_start_1
    iget-object v2, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    if-nez v2, :cond_7

    const-string v2, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v3, "waiting for connection to service..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_7
    :try_start_3
    const-string v2, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v3, "connected to service"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_4
    iget-object v3, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {v3, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->initialize(Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v2}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v4, :cond_8

    move v0, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v5, "Remote Exception"

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    goto :goto_2

    :goto_4
    if-nez v0, :cond_9

    const/4 p0, 0x3

    invoke-interface {p1, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onFailure(I)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object v2, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    iget-object v5, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mContext:Landroid/content/Context;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    const-class v7, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, v3, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-class v5, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v5, v3, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    new-instance v5, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    invoke-direct {v5, v3}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;-><init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)V

    iput-object v5, v3, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-direct {v3, v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;-><init>(Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    new-instance v2, Lcom/android/server/ServiceThread;

    const-string v3, "IntrusionDetection DataAggregator"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    new-instance v2, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    iget-object v3, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    iput-object v2, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    iget-object v0, v0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    if-ge v6, v2, :cond_b

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    check-cast v3, Lcom/android/server/security/intrusiondetection/DataSource;

    invoke-interface {v3}, Lcom/android/server/security/intrusiondetection/DataSource;->enable()V

    goto :goto_5

    :cond_b
    iput v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->notifyStateMonitors()V

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    :goto_6
    return-void

    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;-><init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;)V
    .locals 5

    check-cast p1, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;

    iget-object v0, p1, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    new-instance v1, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    new-instance v2, Lcom/android/server/ServiceThread;

    const/4 v3, -0x2

    const-string v4, "IntrusionDetectionService"

    invoke-direct {v2, v4, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V

    iput-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    iget-object v1, p1, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    new-instance v0, Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-direct {v0, v1, p0}, Lcom/android/server/security/intrusiondetection/DataAggregator;-><init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    iget-object p1, p1, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;-><init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/os/PermissionEnforcer;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    return-void
.end method


# virtual methods
.method public getBinderService()Landroid/security/intrusiondetection/IIntrusionDetectionService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    return-object p0
.end method

.method public final notifyStateMonitors()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    iget v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-interface {v1, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->onStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "intrusion_detection"

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "IntrusionDetectionService"

    const-string v1, "Could not start the IntrusionDetectionService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    return-void
.end method
