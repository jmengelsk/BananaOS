.class public Lcom/android/server/rotationresolver/RotationResolverManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsServiceEnabled:Z

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040341

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method public static surfaceRotationToProto(I)I
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    new-instance p2, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

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

    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    const-string/jumbo v1, "rotation_resolver"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo p1, "service_enabled"

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    :cond_0
    return-void
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 1

    check-cast p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string/jumbo v0, "RotationResolverManagerPerUserService"

    if-eqz p2, :cond_0

    const-string/jumbo p2, "destroyLocked()"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    iput-object v0, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    :goto_0
    iget-object p2, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    iput-object v0, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    const-string/jumbo v1, "resolver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/rotationresolver/RotationResolverInternal;

    new-instance v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
