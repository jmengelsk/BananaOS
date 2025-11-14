.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$statusCallback:Landroid/os/RemoteCallback;

.field public final synthetic val$wrappedWearableSensingCallback:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$wrappedWearableSensingCallback:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onError()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_40

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_36

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_3e

    :cond_36
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_34

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_34

    throw p0

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "calling over to remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$wrappedWearableSensingCallback:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;)V

    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw p0
.end method
