.class public final Lcom/android/server/voiceinteraction/DetectorSession$3;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$audioSource:Ljava/io/InputStream;

.field public final synthetic val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field public final synthetic val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$shouldCheckPermissionsAndAppOpsOnDetected:Z

.field public final synthetic val$shouldCloseAudioStreamWithDelayOnDetect:Z


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    iput-boolean p5, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCloseAudioStreamWithDelayOnDetect:Z

    iput-boolean p6, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 9

    const-string v0, "Egressed detected result: "

    const-string v1, "Egressed "

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v5, 0xb

    invoke-static {v3, v5, v4}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCloseAudioStreamWithDelayOnDetect:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    new-instance v6, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x7d0

    invoke-interface {v3, v6, v7, v8, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "DetectorSession"

    const-string v1, "Ignoring #onDetected due to a SecurityException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0xd

    invoke-static {p1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string/jumbo v1, "Security exception occurs in #onDetected method"

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    goto :goto_2

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-boolean v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v3, "DetectorSession"

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

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_2

    const-string p0, "DetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v2

    return-void

    :catch_2
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :catch_3
    move-exception p1

    const-string v0, "DetectorSession"

    const-string v1, "Ignoring #onDetected due to a IOException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v1, "Copy audio stream failure."

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v2

    :goto_2
    return-void

    :catch_4
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :goto_3
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 8

    const-string v0, "Egressed detected result: "

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v4, 0xc

    invoke-static {v2, v4, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    new-instance v5, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;I)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-interface {v2, v5, v6, v7, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-interface {v2, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    const-string v2, "DetectorSession"

    const-string v3, "Egressed \'hotword rejected result\' from hotword trusted process"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_0

    const-string p0, "DetectorSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
