.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z


# instance fields
.field public final mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

.field public mAudioFlinger:Landroid/os/IBinder;

.field public final mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

.field public final mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mContext:Landroid/content/Context;

.field public mDebugHotwordLogging:Z

.field public mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mDetectorSessions:Landroid/util/SparseArray;

.field public mDetectorType:I

.field public final mHotwordDetectionComponentName:Landroid/content/ComponentName;

.field public final mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field public mLastRestartInstant:Ljava/time/Instant;

.field public final mLock:Ljava/lang/Object;

.field public final mOnOpChangedListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

.field public final mReStartPeriodSeconds:I

.field public mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

.field public mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRestartCount:I

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mUserId:I

.field public final mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

.field public final mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;Landroid/content/ComponentName;IILcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-direct {v4, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mOnOpChangedListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    iput p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    iput p8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    iput-object p9, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    const-string/jumbo p3, "voice_interaction"

    const-string/jumbo p7, "restart_period_in_seconds"

    invoke-static {p3, p7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    new-instance p7, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    invoke-direct {p7, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    new-instance p7, Landroid/content/Intent;

    const-string/jumbo p8, "android.service.voice.HotwordDetectionService"

    invoke-direct {p7, p8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance p5, Landroid/content/Intent;

    const-string/jumbo p8, "android.service.voice.VisualQueryDetectionService"

    invoke-direct {p5, p8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    new-instance p6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-direct {p6, p0, p7, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;I)V

    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    new-instance p6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    const/4 p7, 0x2

    invoke-direct {p6, p0, p5, p7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;I)V

    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    const-class p5, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    const/16 p5, 0x88

    iget-object p4, p4, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p5, p4, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    if-gtz p3, :cond_90

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_90
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    new-instance p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    int-to-long p3, p3

    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide p5, p3

    invoke-virtual/range {p1 .. p7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final cancelLocked()V
    .registers 5

    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "cancelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_13
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_45

    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_45
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_50

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    :cond_50
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mOnOpChangedListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public final detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 13

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v2, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_1a

    :cond_16
    check-cast p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    move-object v5, p0

    goto :goto_23

    :cond_1a
    :goto_1a
    const-string p0, "HotwordDetectionConnection"

    const-string/jumbo v3, "Not found the Dsp detector"

    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    :goto_23
    if-eqz v5, :cond_64

    iget-object p0, v5, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_5f

    const/4 v3, 0x0

    if-nez p2, :cond_31

    :try_start_2b
    monitor-exit p0

    move v4, v3

    goto :goto_40

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_62

    :cond_31
    iget-object v4, v5, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v4}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_2e

    :goto_40
    if-nez v4, :cond_43

    goto :goto_64

    :cond_43
    :try_start_43
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v9, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;

    invoke-direct {v9, v5, v6, p1, p2}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    iput-boolean v0, v5, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    iput-object v2, v5, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    iget-object p0, v5, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;

    move-object v8, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_5f

    return-void

    :catchall_5f
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    :goto_62
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_2e

    :try_start_63
    throw p1

    :cond_64
    :goto_64
    const-string p0, "HotwordDetectionConnection"

    const-string/jumbo p1, "Not found the Dsp detector by callback"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_5f

    throw p0
.end method

.method public final getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;
    .registers 7

    if-nez p1, :cond_3

    goto :goto_2f

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1e
    iget-object v4, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    if-ne v4, p1, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    move v4, v0

    :goto_25
    monitor-exit v3

    if-eqz v4, :cond_2c

    return-object v2

    :catchall_29
    move-exception p0

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
    .registers 2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_15

    :cond_12
    check-cast p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    return-object p0

    :cond_15
    :goto_15
    const-string p0, "HotwordDetectionConnection"

    const-string/jumbo v0, "Not found the visual query detector"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initAudioFlinger()V
    .registers 4

    const-string/jumbo v0, "media.audio_flinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_25

    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_19

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_16

    throw p0

    :catch_19
    move-exception v0

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_29
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_35

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Service media.audio_flinger wasn\'t found."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final resetDetectionProcessIdentityIfEmptyLocked()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v0, :cond_2e

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v0

    const-class v2, Landroid/media/AudioManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManagerInternal;

    if-eqz v2, :cond_2c

    invoke-virtual {v2, v0}, Landroid/media/AudioManagerInternal;->removeAssistantServiceUid(I)V

    :cond_2c
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    :cond_2e
    return-void
.end method

.method public final restartProcessLocked()V
    .registers 6

    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "Restarting hotword detection process"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    if-eqz v1, :cond_24

    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_24
    if-eqz v2, :cond_2e

    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_2e
    const-string/jumbo v4, "Started the new process, dispatching processRestarted to detector"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v0, v4, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    :cond_45
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    :cond_4d
    if-eqz v3, :cond_60

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p0

    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_60

    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->removeAssistantServiceUid(I)V

    :cond_60
    return-void
.end method

.method public final runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final safelyShutdownHotwordDetectionOnVoiceActivationDisabledLocked()V
    .registers 6

    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "safelyShutdownHotwordDetectionOnVoiceActivationDisabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_13
    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_35
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_42

    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_42

    :catch_40
    move-exception p0

    goto :goto_4e

    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v2, :cond_59

    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    invoke-interface {v2, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_40

    return-void

    :goto_4e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Swallowing error while shutting down hotword detection.Error message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_59
    return-void
.end method

.method public final updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
    .registers 7

    invoke-virtual {p0, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;

    move-result-object p3

    if-nez p3, :cond_f

    const-string p0, "HotwordDetectionConnection"

    const-string/jumbo p1, "Not found the detector by token"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/16 v1, 0x8

    iget v2, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_23
    iget-object v0, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_5f

    const-string/jumbo p0, "call updateStateAfterProcessStartLocked"

    const-string v0, "DetectorSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    if-nez p0, :cond_5e

    const-string p0, "Failed to create AndroidFuture"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void

    :cond_5f
    iget-object p0, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance p3, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
