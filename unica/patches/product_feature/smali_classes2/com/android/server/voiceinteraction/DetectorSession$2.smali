.class public final Lcom/android/server/voiceinteraction/DetectorSession$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    const-string p2, "DetectorSession"

    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-interface {p3}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onDetected()V

    :try_start_7
    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p3, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_20

    :catch_f
    move-exception p3

    const-string/jumbo v0, "RemoteException when sending HotwordDetectedResult to VoiceInteractionService."

    invoke-static {p2, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-interface {p3, v0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    :goto_20
    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordAudioStream;

    :try_start_34
    invoke-virtual {p1}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_28

    :catch_3c
    move-exception p1

    const-string/jumbo p3, "Unable to close audio stream parcel file descriptor,"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :cond_44
    return-void
.end method

.method public final onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onHotwordDetectionServiceFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-interface {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onRejected()V

    return-void
.end method
