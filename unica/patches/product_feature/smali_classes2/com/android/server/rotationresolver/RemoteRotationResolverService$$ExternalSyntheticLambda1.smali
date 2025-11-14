.class public final synthetic Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    packed-switch v1, :pswitch_data_50

    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-eqz v2, :cond_13

    monitor-exit v1

    goto :goto_2b

    :catchall_11
    move-exception p0

    goto :goto_2c

    :cond_13
    iput-boolean v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_11

    :try_start_15
    iget-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellation:Landroid/os/ICancellationSignal;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellation:Landroid/os/ICancellationSignal;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_20
    .catchall {:try_start_15 .. :try_end_1f} :catchall_11

    goto :goto_2a

    :catch_20
    :try_start_20
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteRotationResolverService"

    const-string v0, "Failed to cancel request in remote service."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    monitor-exit v1

    :goto_2b
    return-void

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_11

    throw p0

    :pswitch_2e  #0x0
    sget v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_33
    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-virtual {v2, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->onFailure(I)V

    const-string/jumbo v0, "RemoteRotationResolverService"

    const-string/jumbo v2, "Trying to cancel the remote request. Reason: Timed out."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_4d

    :cond_4b
    :goto_4b
    monitor-exit v1

    return-void

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_49

    throw p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2e  #00000000
    .end packed-switch
.end method
