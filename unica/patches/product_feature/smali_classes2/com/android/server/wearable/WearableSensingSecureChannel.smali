.class public final Lcom/android/server/wearable/WearableSensingSecureChannel;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAssociationId:Ljava/lang/Integer;

.field public mClosed:Z

.field public final mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field public final mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mLocalIn:Ljava/io/InputStream;

.field public final mLocalOut:Ljava/io/OutputStream;

.field public final mLock:Ljava/lang/Object;

.field public final mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

.field public final mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

.field public final mRemoteFd:Landroid/os/ParcelFileDescriptor;

.field public final mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

.field public final mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .locals 8

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, Lcom/android/server/wearable/WearableSensingSecureChannel;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    const/4 v7, 0x1

    aget-object v6, v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingSecureChannel;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    const-string/jumbo p2, "WearableSensingSecureChannel"

    const-string/jumbo v0, "Requesting CDM association."

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, v1, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    new-instance v0, Landroid/companion/AssociationRequest$Builder;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$Builder;-><init>()V

    const-string/jumbo v2, "PlaceholderDisplayNameFromWSM"

    invoke-virtual {v0, v2}, Landroid/companion/AssociationRequest$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/companion/AssociationRequest$Builder;->setSelfManaged(Z)Landroid/companion/AssociationRequest$Builder;

    move-result-object v0

    const-string/jumbo v2, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-virtual {v0, v2}, Landroid/companion/AssociationRequest$Builder;->setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v3, Lcom/android/server/wearable/WearableSensingSecureChannel$1;

    invoke-direct {v3, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/companion/CompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const-string/jumbo v1, "WearableSensingSecureChannel"

    const-string v2, "Closing WearableSensingSecureChannel."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->removeOnTransportsChangedListener(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    const v5, 0x43708287

    invoke-virtual {v3, v5, v4}, Landroid/companion/CompanionDeviceManager;->removeOnMessageReceivedListener(ILjava/util/function/BiConsumer;)V

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->disassociate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v2, "WearableSensingSecureChannel"

    const-string v3, "Encountered IOException when closing local input stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    const-string/jumbo v2, "WearableSensingSecureChannel"

    const-string v3, "Encountered IOException when closing local output stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final onError()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    invoke-interface {v0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;->onError()V

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
