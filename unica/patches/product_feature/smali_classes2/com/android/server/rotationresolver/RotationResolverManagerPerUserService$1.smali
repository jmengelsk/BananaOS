.class public final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

.field public final synthetic val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {p0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final onSuccess(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {p0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onSuccess(I)V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
