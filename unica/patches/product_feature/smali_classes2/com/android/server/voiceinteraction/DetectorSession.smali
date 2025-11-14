.class public abstract Lcom/android/server/voiceinteraction/DetectorSession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

.field public final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field public final mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

.field public mDebugHotwordLogging:Z

.field public mDestroyed:Z

.field public final mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

.field public mInitialized:Z

.field public final mLock:Ljava/lang/Object;

.field public mPerformingExternalSourceHotwordDetection:Z

.field public final mProximityCallbackInternal:Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

.field public mProximityMeters:D

.field public mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mToken:Landroid/os/IBinder;

.field public final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUserId:I

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityCallbackInternal:Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iput-wide v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    iput-object p10, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    move/from16 p1, p11

    iput p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUserId:I

    iput-object p5, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput p6, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    iput-object p7, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    new-instance p2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p4

    iget p5, p7, Landroid/media/permission/Identity;->uid:I

    iget-object p6, p7, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object p7, p7, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-direct/range {p2 .. p7}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;-><init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    :goto_0
    iput-object p8, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p9, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    const-class p1, Landroid/attention/AttentionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/attention/AttentionManagerInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/attention/AttentionManagerInternal;->isProximitySupported()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v2}, Landroid/attention/AttentionManagerInternal;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    :cond_1
    return-void
.end method

.method public static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p3, "Failed to obtain permission %s for identity %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final closeExternalAudioStreamLocked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const-string v0, "Closing external audio stream to hotword detector: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method public final destroyLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityCallbackInternal:Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/attention/AttentionManagerInternal;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCallback="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUpdateStateAfterStartFinished="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mInitialized="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    const-string/jumbo v2, "mDestroyed="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "DetectorType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v1

    invoke-static {v1}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPerformingExternalSourceHotwordDetection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final enforceExtraKeyphraseIdNotLeaked(Landroid/service/voice/HotwordDetectedResult;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3

    const-wide/32 v0, 0xcd1a6bb

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->getKeyphraseId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    move-result v2

    if-ne v1, v2, :cond_1

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Ignoring #onDetected due to trusted service sharing a keyphrase ID which the DSP did not detect"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDetectorType()I
    .locals 1

    instance-of v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string p0, "DetectorSession"

    const-string/jumbo v0, "Unexpected detector type"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    const-string v2, "DetectorSession"

    if-eqz v0, :cond_0

    const-string v0, "Hotword validation is already in progress for external source."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to create audio stream pipe"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    iput-object v6, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v7, v6, p4}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v5, p2

    move-object v2, p3

    move-object v8, p4

    move/from16 v3, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Z)V

    invoke-virtual {v10, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/16 v2, 0xa

    iget v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    return-void
.end method

.method public abstract informRestartProcessLocked()V
.end method

.method public final isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyOnDetectorRemoteException()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyOnDetectorRemoteException: mRemoteExceptionListener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0, v1, p0}, Landroid/service/voice/IVoiceInteractionService;->detectorRemoteExceptionOccurred(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "VoiceInteractionServiceManager"

    const-string v0, "Fail to notify client detector remote exception occurred."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final reportErrorGetRemoteException()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    return-void
.end method

.method public final reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onHotwordDetectionServiceFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    return-void
.end method

.method public final reportErrorLocked(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onVisualQueryDetectionServiceFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    return-void
.end method

.method public final reportErrorLocked(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onUnknownFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onUnknownFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    return-void
.end method

.method public final saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double p0, v1, v3

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/service/voice/HotwordDetectedResult;->setProximity(D)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/DetectorSession;->handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    return-void
.end method
