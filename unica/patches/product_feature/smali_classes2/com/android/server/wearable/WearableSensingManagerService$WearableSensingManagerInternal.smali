.class public final Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;
.super Landroid/app/wearable/IWearableSensingManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAvailableConnectionCount()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-le v2, v3, :cond_25

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string/jumbo v2, "mMaxNumberOfConcurrentConnections exceeded. This should not be possible!"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :catchall_23
    move-exception p0

    goto :goto_30

    :cond_25
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    sub-int/2addr v3, p0

    monitor-exit v1

    return v3

    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_23

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingShellCommand;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .registers 15

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal provideConcurrentConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object v3

    const/4 p0, -0x1

    if-nez v3, :cond_1e

    goto/16 :goto_d5

    :cond_1e
    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "onProvideConcurrentConnection in per user service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
    invoke-virtual {v3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v0

    if-nez v0, :cond_42

    const-string/jumbo p1, "WearableSensingManagerPerUserService"

    const-string p2, "Detection service is not available at this moment."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    invoke-static {p1, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    monitor-exit v1

    return p0

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_da

    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_3e

    iget-object v2, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_46
    iget-object v0, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    const/4 v8, 0x1

    if-lt v0, v1, :cond_55

    move v0, v8

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_d6

    const/16 v1, 0x9

    if-eqz v0, :cond_68

    const-string/jumbo p1, "WearableSensingManagerPerUserService"

    const-string/jumbo p2, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return p0

    :cond_68
    iget-object v2, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v3, v7, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;)V

    invoke-direct {v6, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    :try_start_78
    iget-object v2, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/companion/CompanionDeviceManager;

    new-instance v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    invoke-static {v9, p1, v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object p1
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_92} :catch_c6

    iget-object p2, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter p2

    :try_start_95
    iget-object p3, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    iget v2, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-lt p3, v2, :cond_a2

    goto :goto_ae

    :cond_a2
    iget-object p3, v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v0

    :goto_ae
    monitor-exit p2
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_c2

    if-eqz v8, :cond_c1

    const-string/jumbo p2, "WearableSensingManagerPerUserService"

    const-string/jumbo p3, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    return p0

    :cond_c1
    return v7

    :catchall_c2
    move-exception v0

    move-object p0, v0

    :try_start_c4
    monitor-exit p2
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c2

    throw p0

    :catch_c6
    move-exception v0

    move-object p1, v0

    const-string/jumbo p2, "WearableSensingManagerPerUserService"

    const-string/jumbo p3, "Unable to create the secure channel."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x7

    invoke-static {p1, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    :goto_d5
    return p0

    :catchall_d6
    move-exception v0

    move-object p0, v0

    :try_start_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d6

    throw p0

    :goto_da
    :try_start_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_3e

    throw p0
.end method

.method public final provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 7

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal provideConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_2a

    const-string/jumbo p0, "Service not available."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_2a
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .registers 7

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal provideData."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_2a

    const-string/jumbo p0, "Service not available."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_2a
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 7

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal provideDataStream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_2a

    const-string/jumbo p0, "Service not available."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_2a
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .registers 7

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal provideReadOnlyParcelFileDescriptor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_10

    return-void

    :cond_10
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_4a

    :cond_2f
    const-string/jumbo v1, "WearableSensingManagerPerUserService"

    const-string/jumbo v2, "calling over to remote servvice."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_2d

    throw p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Provided ParcelFileDescriptor is not read-only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 13

    const-string/jumbo v1, "WearableSensingManagerService"

    const-string/jumbo v2, "WearableSensingManagerInternal registerDataRequestObserver."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    const-string/jumbo v3, "WearableSensingManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_2d

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_2d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v7, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    monitor-enter v7

    :try_start_36
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1, p1, v3, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object v1

    if-eqz v1, :cond_50

    const-string/jumbo v3, "WearableSensingManagerService"

    const-string/jumbo v5, "Received duplicate data request observer."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    iget v1, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    move-object v2, v3

    move v3, v1

    goto :goto_77

    :catchall_4e
    move-exception v0

    goto :goto_86

    :cond_50
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v3, p2}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;)V

    invoke-direct {v6, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v8, v5, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    move v4, v1

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;-><init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v2, v6

    :goto_77
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_36 .. :try_end_78} :catchall_4e

    iget-object v6, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;-><init>(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-static {v6, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void

    :goto_86
    :try_start_86
    monitor-exit v7
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_4e

    throw v0
.end method

.method public final removeAllConnections()V
    .registers 4

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal removeAllConnections."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_3c

    :cond_11
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_14
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_3d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, p0, :cond_3c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_2e

    :cond_3c
    :goto_3c
    return-void

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final removeConnection(I)Z
    .registers 4

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal removeConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    move-result p0

    return p0
.end method

.method public final startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal startHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_27

    const-string/jumbo p0, "Service not available."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_27
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .registers 5

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal stopHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_27

    const-string/jumbo p0, "Service not available."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_27
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 7

    const-string/jumbo v0, "WearableSensingManagerService"

    const-string/jumbo v1, "WearableSensingManagerInternal unregisterDataRequestObserver."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    const-string/jumbo v2, "WearableSensingManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_30

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_30
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    monitor-enter v1

    :try_start_39
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v2, p1, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object p2

    if-nez p2, :cond_4e

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo p1, "Previous observer not found, cannot unregister."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_4c
    move-exception p0

    goto :goto_6b

    :cond_4e
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v0, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    iget-object p2, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_39 .. :try_end_60} :catchall_4c

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void

    :goto_6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_4c

    throw p0
.end method

.method public final validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .registers 6

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    const-string/jumbo v2, "WearableSensingManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_24

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo v0, "Service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_23

    invoke-static {v2, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    :cond_23
    return-object v1

    :cond_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2d
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_48

    if-nez p0, :cond_47

    const-string/jumbo p0, "WearableSensingManagerService"

    const-string/jumbo v3, "Service not available for userId "

    invoke-static {v0, v3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_46

    invoke-static {v2, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    :cond_46
    return-object v1

    :cond_47
    return-object p0

    :catchall_48
    move-exception p0

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method
