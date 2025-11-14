.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/SharedMemory;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/app/wearable/IWearableSensingCallback;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/app/wearable/IWearableSensingCallback;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "WearableSensingManagerPerUserService"

    const-string/jumbo v3, "onProvideConnection in per user service."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo p1, "WearableSensingManagerPerUserService"

    const-string v0, "Detection service is not available at this moment."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v4, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/CompanionDeviceManager;

    new-instance v5, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    invoke-direct {v5, p1, v1, p0, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v4, v0, v5}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "Unable to create the secure channel."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x7

    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    :goto_1
    monitor-exit v3

    :goto_2
    return-void

    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
