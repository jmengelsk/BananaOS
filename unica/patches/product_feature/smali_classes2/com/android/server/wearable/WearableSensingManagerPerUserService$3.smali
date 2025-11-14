.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    return-void
.end method


# virtual methods
.method public final onDetected()V
    .locals 3

    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "hotwordDetectionCallback onDetected."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "Wearable sensing service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "hotwordDetectionCallback onError. ErrorMessage: "

    const-string/jumbo v1, "WearableSensingManagerPerUserService"

    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public final onRejected()V
    .locals 2

    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "hotwordDetectionCallback onRejected."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method
