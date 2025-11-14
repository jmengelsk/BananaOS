.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "android.app.wearable.HotwordAudioStreamBundleKey"

    const-class v1, Landroid/service/voice/HotwordAudioStream;

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/HotwordAudioStream;

    if-nez p0, :cond_0

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string/jumbo p1, "No hotword audio stream received, unable to process hotword."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-virtual {p0}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/voice/HotwordAudioStream;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {p0}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v4

    iget v6, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    new-instance v7, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    invoke-direct {v7, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    invoke-virtual/range {v1 .. v7}, Landroid/service/voice/VoiceInteractionManagerInternal;->startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
