.class public final Lcom/android/server/wearable/WearableSensingSecureChannel$1;
.super Landroid/companion/CompanionDeviceManager$Callback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    const-string/jumbo v0, "WearableSensingSecureChannel"

    const-string v1, "CDM association created."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_19

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_4a

    :cond_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    const v4, 0x43708287

    invoke-virtual {v1, v2, v4, v3}, Landroid/companion/CompanionDeviceManager;->addOnMessageReceivedListener(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v3}, Landroid/companion/CompanionDeviceManager;->addOnTransportsChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p1, v2, v3, p0}, Landroid/companion/CompanionDeviceManager;->attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;I)V

    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_17

    throw p0
.end method

.method public final onFailure(Ljava/lang/CharSequence;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create CompanionDeviceManager association: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "WearableSensingSecureChannel"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void
.end method
