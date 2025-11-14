.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic f$1:Ljava/io/InputStream;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$1:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$3:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$1:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$3:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_c
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3d

    const/16 v2, 0x400

    :try_start_13
    new-array v5, v2, [B

    :goto_15
    invoke-virtual {v1, v5, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_41

    const-string v2, "DetectorSession"

    const-string/jumbo v5, "Reached end of stream for external hotword"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_3f

    :try_start_23
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3d

    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3b
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2c
    iput-boolean v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    const-string/jumbo v1, "start external source"

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw v0

    :catchall_39
    move-exception p0

    goto :goto_a7

    :catch_3b
    move-exception v1

    goto :goto_59

    :catchall_3d
    move-exception v2

    goto :goto_4e

    :catchall_3f
    move-exception v2

    goto :goto_45

    :cond_41
    :try_start_41
    invoke-virtual {v4, v5, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3f

    goto :goto_15

    :goto_45
    :try_start_45
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v4

    :try_start_4a
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_3d

    :goto_4e
    if-eqz v1, :cond_58

    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v1

    :try_start_55
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw v2
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_3b
    .catchall {:try_start_55 .. :try_end_59} :catchall_39

    :goto_59
    :try_start_59
    const-string v2, "DetectorSession"

    const-string v4, "Failed supplying audio data to validator"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_39

    const/4 v1, 0x3

    :try_start_61
    new-instance v2, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v4, "Copy audio data failure for external source detection."

    invoke-direct {v2, v1, v4}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6b} :catch_6c
    .catchall {:try_start_61 .. :try_end_6b} :catchall_39

    goto :goto_97

    :catch_6c
    move-exception p0

    :try_start_6d
    const-string v2, "DetectorSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to report onHotwordDetectionServiceFailure status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p0

    if-eq p0, v1, :cond_94

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p0

    iget v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v2, 0xf

    invoke-static {p0, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_94
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V
    :try_end_97
    .catchall {:try_start_6d .. :try_end_97} :catchall_39

    :goto_97
    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_9a
    iput-boolean v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    const-string/jumbo v1, "start external source"

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_a4
    move-exception v0

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_a4

    throw v0

    :goto_a7
    iget-object v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_aa
    iput-boolean v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    const-string/jumbo v2, "start external source"

    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b4

    throw p0

    :catchall_b4
    move-exception p0

    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0
.end method
