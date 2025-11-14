.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic val$connectionId:I

.field public final synthetic val$metadata:Landroid/os/PersistableBundle;

.field public final synthetic val$wearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

.field public final synthetic val$wrappedStatusCallback:Landroid/os/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$metadata:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedStatusCallback:Landroid/os/RemoteCallback;

    iput p5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$connectionId:I

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$connectionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedStatusCallback:Landroid/os/RemoteCallback;

    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "calling over to remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$metadata:Landroid/os/PersistableBundle;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedStatusCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda11;

    invoke-direct {v4, p1, v2, v3, p0}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda11;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
