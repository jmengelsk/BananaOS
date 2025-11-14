.class public final Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

.field public mValidatingDspTrigger:Z


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/io/PrintWriter;)V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mValidatingDspTrigger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final informRestartProcessLocked()V
    .registers 8

    const-string v0, "DspTrustedHotwordDetectorSession"

    const-string/jumbo v1, "informRestartProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    const/16 v2, 0x1b2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    if-eqz v1, :cond_37

    :try_start_12
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v6, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v6}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    const/16 v1, 0x1b1

    const/16 v6, 0xa

    invoke-static {v1, v4, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_35

    :catch_28
    const-string v1, "Failed to call #rejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10

    invoke-static {v2, v4, v1, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    :goto_35
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    :cond_37
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_3c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_50

    :catch_42
    move-exception v1

    const-string v6, "Failed to communicate #onProcessRestarted"

    invoke-static {v0, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x12

    invoke-static {v2, v4, v0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    :goto_50
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    const-string/jumbo v0, "process restarted"

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    return-void
.end method
