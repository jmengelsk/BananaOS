.class public final synthetic Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    check-cast p1, Ljava/util/List;

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
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string/jumbo p0, "WearableSensingSecureChannel"

    const-string/jumbo p1, "mAssociationId is null when transport changed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p1, "WearableSensingSecureChannel"

    const-string/jumbo v0, "Transport available"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {v0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p1, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;->onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "WearableSensingSecureChannel"

    const-string v0, "CDM transport is detached. This is not recoverable."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    :cond_3
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
