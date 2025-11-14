.class final Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

.field public mCancellation:Landroid/os/ICancellationSignal;

.field public final mCancellationSignalInternal:Landroid/os/CancellationSignal;

.field public final mIRotationResolverCallback:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

.field public mIsDispatched:Z

.field public mIsFulfilled:Z

.field public final mLock:Ljava/lang/Object;

.field final mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

.field public final mRequestStartTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    iput-object p2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    new-instance p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

    invoke-direct {p1, p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIRotationResolverCallback:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

    iput-object p3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellationSignalInternal:Landroid/os/CancellationSignal;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRequestStartTimeMillis:J

    iput-object p4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancelInternal()V
    .locals 3

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->onFailure(I)V

    return-void
.end method
