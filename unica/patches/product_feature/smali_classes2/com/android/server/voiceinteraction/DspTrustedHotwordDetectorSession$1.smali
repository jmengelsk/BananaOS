.class public final Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

.field public final synthetic val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 11

    const-string v0, "Egressed detected result: "

    const-string v1, "Egressed "

    const-string v2, "Ignoring #onDetected due to a process restart or previous #onRejected result = "

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v5, 0x1

    if-eqz v4, :cond_19

    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_19

    :catchall_16
    move-exception p0

    goto/16 :goto_11d

    :cond_19
    :goto_19
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_23

    monitor-exit v3

    return-void

    :cond_23
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v6, 0x5

    const/16 v7, 0x1b1

    invoke-static {v7, v5, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-boolean v8, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    if-nez v8, :cond_52

    const-string p1, "DspTrustedHotwordDetectorSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p1, 0x7

    invoke-static {v7, v5, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    monitor-exit v3

    return-void

    :cond_52
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z
    :try_end_55
    .catchall {:try_start_b .. :try_end_55} :catchall_16

    const/16 v2, 0x1b2

    :try_start_57
    new-instance v8, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    invoke-direct {v8, v4}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    invoke-static {v8}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v8, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-virtual {v4, p1, v8}, Lcom/android/server/voiceinteraction/DetectorSession;->enforceExtraKeyphraseIdNotLeaked(Landroid/service/voice/HotwordDetectedResult;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_66} :catch_ed
    .catchall {:try_start_57 .. :try_end_66} :catchall_16

    :try_start_66
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v4, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_16

    :try_start_6b
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_cf
    .catchall {:try_start_6b .. :try_end_73} :catchall_16

    :try_start_73
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-interface {v4, v6, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v4, :cond_8d

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8d

    :catch_8b
    move-exception p1

    goto :goto_c0

    :cond_8d
    :goto_8d
    const-string v4, "DspTrustedHotwordDetectorSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits from hotword trusted process"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_a7} :catch_8b
    .catchall {:try_start_73 .. :try_end_a7} :catchall_16

    :try_start_a7
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_be

    const-string p0, "DspTrustedHotwordDetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    monitor-exit v3

    return-void

    :goto_c0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v0, 0x11

    invoke-static {v2, v5, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    throw p1
    :try_end_cf
    .catchall {:try_start_a7 .. :try_end_cf} :catchall_16

    :catch_cf
    move-exception p1

    :try_start_d0
    const-string v0, "DspTrustedHotwordDetectorSession"

    const-string v1, "Ignoring #onDetected due to a IOException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v1, "Copy audio stream failure."

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_e4} :catch_e6
    .catchall {:try_start_d0 .. :try_end_e4} :catchall_16

    :try_start_e4
    monitor-exit v3

    goto :goto_10c

    :catch_e6
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :catch_ed
    move-exception p1

    const-string v0, "DspTrustedHotwordDetectorSession"

    const-string v1, "Ignoring #onDetected due to a SecurityException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p1, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v0, 0x8

    invoke-static {v7, v5, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_fe
    .catchall {:try_start_e4 .. :try_end_fe} :catchall_16

    :try_start_fe
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string/jumbo v1, "Security exception occurs in #onDetected method."

    invoke-direct {v0, v6, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_10b} :catch_10d
    .catchall {:try_start_fe .. :try_end_10b} :catchall_16

    :try_start_10b
    monitor-exit v3

    :goto_10c
    return-void

    :catch_10d
    move-exception p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v0, 0xf

    invoke-static {v2, v5, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    throw p1

    :goto_11d
    monitor-exit v3
    :try_end_11e
    .catchall {:try_start_10b .. :try_end_11e} :catchall_16

    throw p0
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 8

    const-string v0, "Egressed rejected result: "

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_77

    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1e

    monitor-exit v1

    return-void

    :cond_1e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v4, 0x6

    const/16 v5, 0x1b1

    invoke-static {v5, v3, v4, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-boolean v4, v2, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    if-nez v4, :cond_40

    const-string p1, "DspTrustedHotwordDetectorSession"

    const-string v0, "Ignoring #onRejected due to a process restart"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 p1, 0x9

    invoke-static {v5, v3, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    monitor-exit v1

    return-void

    :cond_40
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_12

    :try_start_43
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_65
    .catchall {:try_start_43 .. :try_end_48} :catchall_12

    :try_start_48
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_63

    if-eqz p1, :cond_63

    const-string p0, "DspTrustedHotwordDetectorSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    monitor-exit v1

    return-void

    :catch_65
    move-exception p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v0, 0x1b2

    const/16 v2, 0x10

    invoke-static {v0, v3, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    throw p1

    :goto_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_48 .. :try_end_78} :catchall_12

    throw p0
.end method
