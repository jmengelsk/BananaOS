.class public final Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 8

    const-string v0, "Egressed detected result: "

    const-string v1, "Egressed "

    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-static {v5, v4, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-boolean v6, v3, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    if-nez v6, :cond_0

    const-string/jumbo p1, "SoftwareTrustedHotwordDetectorSession"

    const-string v0, "Hotword detection has already completed"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p1, 0x7

    invoke-static {v5, p1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xf

    :try_start_1
    new-instance v7, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    invoke-direct {v7, v3}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v3, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string/jumbo v3, "SoftwareTrustedHotwordDetectorSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits from hotword trusted process"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "SoftwareTrustedHotwordDetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v0, 0x11

    invoke-static {v5, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    throw p1

    :catch_1
    move-exception p1

    const-string/jumbo v0, "SoftwareTrustedHotwordDetectorSession"

    const-string v1, "Ignoring #onDetected due to a IOException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v1, "Copy audio stream failure."

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v2

    goto :goto_0

    :catch_2
    move-exception p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v5, v6, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    throw p1

    :catch_3
    move-exception p1

    const-string/jumbo v0, "SoftwareTrustedHotwordDetectorSession"

    const-string v1, "Ignoring #onDetected due to a SecurityException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p1, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v0, 0x8

    invoke-static {v5, v0, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string/jumbo v1, "Security exception occurs in #onDetected method."

    invoke-direct {v0, v4, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v2

    :goto_0
    return-void

    :catch_4
    move-exception p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v5, v6, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    throw p1

    :goto_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p1, 0x2

    const/4 v0, 0x6

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    return-void
.end method
