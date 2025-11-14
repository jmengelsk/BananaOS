.class public Lcom/android/server/wearable/WearableSensingManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataRequestObserverContexts:Ljava/util/Set;

.field public volatile mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public volatile mIsServiceEnabled:Z

.field public final mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static -$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V
    .locals 3

    const-string/jumbo v0, "Service not available for userId "

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-nez p0, :cond_1

    const-string/jumbo p0, "WearableSensingManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    invoke-static {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    if-ne v2, p2, :cond_0

    iget-object v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x104034e

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-direct {v0, p1, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result p1

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)V

    new-instance p1, Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v0, v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    const-string/jumbo v1, "WearableSensingManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const/16 p0, 0x7530

    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    new-instance p2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public final onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    const-string/jumbo v1, "wearable_sensing"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo p1, "service_enabled"

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_0
    return-void
.end method

.method public final onServicePackageRestartedLocked(I)V
    .locals 0

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p1, "onServicePackageRestartedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServicePackageUpdatedLocked(I)V
    .locals 0

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p1, "onServicePackageUpdatedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p2, "onServiceRemoved"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string/jumbo p2, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    iget-object p0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object p1, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    const-string/jumbo v1, "wearable_sensing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetDataRequestRateLimitWindowSize()V
    .locals 3

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "Resetting the data request rate limit window size back to the default value. This also resets the current limit and should only be callable from a test."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result v1

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)V

    new-instance v1, Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v0, v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method

.method public setDataRequestRateLimitWindowSize(Ljava/time/Duration;)V
    .locals 3

    const-string/jumbo v0, "Setting the data request rate limit window size to %s. This also resets the current limit and should only be callable from a test."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WearableSensingManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)V

    new-instance p1, Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v0, v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method
