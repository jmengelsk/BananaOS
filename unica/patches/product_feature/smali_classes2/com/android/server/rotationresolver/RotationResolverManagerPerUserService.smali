.class public final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field public mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is dispatched="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    const-string/jumbo v3, "is fulfilled:="

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isServiceAvailableLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    const-string v0, " requires android.permission.BIND_ROTATION_RESOLVER_SERVICE permission. Found "

    const-string/jumbo v1, "Service "

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v3, 0x80

    invoke-interface {v2, p1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v3, "android.permission.BIND_ROTATION_RESOLVER_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v0, "Could not get service for "

    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isServiceAvailableLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "RotationResolverManagerPerUserService"

    const-string/jumbo p3, "Service is not available at this moment."

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result p0

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result p1

    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result p0

    const/16 p2, 0x148

    const/4 p3, 0x7

    invoke-static {p2, p1, p0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    :cond_1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V

    new-instance p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    new-instance p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V

    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iget-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    iget-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {p1, p2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->resolveRotation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
