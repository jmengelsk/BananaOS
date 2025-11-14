.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    iget p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    const-string v1, "DetectorSession"

    if-eqz v0, :cond_56

    const-string/jumbo p2, "updateState timed out"

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_69

    :cond_1e
    const/4 p2, 0x3

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v2

    if-eq v2, p2, :cond_69

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v2

    if-eq v2, v0, :cond_36

    const/4 v0, 0x2

    if-eq v2, v0, :cond_36

    const/4 v0, 0x0

    :cond_36
    const/16 v2, 0x1af

    const/4 v3, 0x4

    invoke-static {v2, v0, v3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    const-string v2, "Failed to report initialization status UNKNOWN"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    if-eq v0, p2, :cond_52

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p2

    const/16 v0, 0xe

    invoke-static {p2, v0, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_52
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    goto :goto_69

    :cond_56
    if-eqz p2, :cond_69

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to update state: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-void
.end method
