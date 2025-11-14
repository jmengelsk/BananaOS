.class public final Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;
.super Landroid/service/rotationresolver/IRotationResolverCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRequestWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/rotationresolver/IRotationResolverCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellation:Landroid/os/ICancellationSignal;

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellationSignalInternal:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    if-eqz p0, :cond_25

    :try_start_15
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_25

    :catchall_19
    move-exception p0

    goto :goto_27

    :catch_1b
    :try_start_1b
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteRotationResolverService"

    const-string p1, "Failed to cancel the remote request."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_19

    throw p0
.end method

.method public final onFailure(I)V
    .registers 16

    const-string/jumbo v0, "timeToCalculate:"

    const-string/jumbo v1, "onFailure:"

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-eqz v3, :cond_24

    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteRotationResolverService"

    const-string p1, "Callback received after the rotation request is fulfilled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_87

    :cond_24
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    iget-object v4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-virtual {v4, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->onFailure(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRequestStartTimeMillis:J

    sub-long v12, v4, v6

    iget-object v4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    invoke-virtual {v4}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result v4

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    invoke-virtual {p0}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result p0

    if-eqz p1, :cond_50

    if-eq p1, v3, :cond_50

    const/4 v3, 0x2

    if-eq p1, v3, :cond_50

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4e

    const/16 v3, 0x8

    :goto_4c
    move v11, v3

    goto :goto_52

    :cond_4e
    const/4 v3, 0x7

    goto :goto_4c

    :cond_50
    const/4 v3, 0x0

    goto :goto_4c

    :goto_52
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v9

    invoke-static {v4}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v10

    const/16 v8, 0x148

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteRotationResolverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "RemoteRotationResolverService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_11 .. :try_end_88} :catchall_21

    throw p0
.end method

.method public final onSuccess(I)V
    .registers 15

    const-string/jumbo v0, "timeToCalculate:"

    const-string/jumbo v1, "onSuccess:"

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-eqz v3, :cond_24

    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteRotationResolverService"

    const-string p1, "Callback received after the rotation request is fulfilled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_79

    :cond_24
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    iget-object v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-virtual {v3, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->onSuccess(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRequestStartTimeMillis:J

    sub-long v11, v3, v5

    iget-object v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    invoke-virtual {v3}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    invoke-virtual {p0}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result p0

    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v10

    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v8

    invoke-static {v3}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v9

    const/16 v7, 0x148

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteRotationResolverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "RemoteRotationResolverService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_11 .. :try_end_7a} :catchall_21

    throw p0
.end method
