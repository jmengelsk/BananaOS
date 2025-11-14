.class public final Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

.field public mEgressingData:Z

.field public mEnableAccessibilityDataEgress:Z

.field public mQueryStreaming:Z


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/io/PrintWriter;)V

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final informRestartProcessLocked()V
    .registers 4

    const-string/jumbo v0, "informRestartProcessLocked"

    const-string/jumbo v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_f
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    const-string v2, "Failed to communicate #onProcessRestarted"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    return-void
.end method

.method public final startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 5

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "HotwordDetectionService method should not be called from VisualQueryDetectorSession."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
