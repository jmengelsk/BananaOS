.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/voice/ISandboxedDetectionService;",
        ">;"
    }
.end annotation


# static fields
.field public static final mHandler:Landroid/os/HandlerThread;


# instance fields
.field private final mBindingFlags:I

.field private final mDetectionServiceType:I

.field private final mInstanceNumber:I

.field private final mIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private mIsLoggedFirstConnect:Z

.field private final mLock:Ljava/lang/Object;

.field private mRespectServiceConnectionStatusChanged:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public static $r8$lambda$E52jDMeAIM1fqsgeezf_xP2TouE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V
    .registers 5

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    const/4 v0, 0x1

    const-string v1, "Detection service is dead."

    const/4 v2, 0x2

    if-ne p0, v0, :cond_19

    instance-of v0, p1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    if-nez v0, :cond_10

    instance-of v0, p1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    if-eqz v0, :cond_19

    :cond_10
    new-instance p0, Landroid/service/voice/HotwordDetectionServiceFailure;

    invoke-direct {p0, v2, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void

    :cond_19
    if-ne p0, v2, :cond_28

    instance-of p0, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz p0, :cond_28

    new-instance p0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    invoke-direct {p0, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void

    :cond_28
    const-string p0, "Detection service is dead with unknown detection service type."

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static $r8$lambda$soeRIWrLUaITqTFZZ9ww9BHBGAM(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V
    .registers 5

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    const-string v0, "Bind detection service failure."

    const/4 v1, 0x1

    if-ne p0, v1, :cond_18

    instance-of v2, p1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    if-nez v2, :cond_f

    instance-of v2, p1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    if-eqz v2, :cond_18

    :cond_f
    new-instance p0, Landroid/service/voice/HotwordDetectionServiceFailure;

    invoke-direct {p0, v1, v0}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void

    :cond_18
    const/4 v2, 0x2

    if-ne p0, v2, :cond_28

    instance-of p0, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz p0, :cond_28

    new-instance p0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    invoke-direct {p0, v1, v0}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void

    :cond_28
    const-string p0, "Bind detection service failure with unknown detection service type."

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Sandbox detection connector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mHandler:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;II)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mBindingFlags:I

    iput p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mInstanceNumber:I

    iput p8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/ServiceConnection;)Z
    .registers 12

    const-string/jumbo v0, "bindService failure mDetectionServiceType = "

    const-string/jumbo v1, "hotword_detector_"

    const/4 v2, 0x3

    const/4 v3, 0x2

    :try_start_8
    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    if-eq v4, v3, :cond_1a

    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v5, v4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    iget v4, v4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    goto :goto_1a

    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_72

    :cond_1a
    :goto_1a
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mBindingFlags:I

    const v7, 0x4000001

    or-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mInstanceNumber:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string v1, "HotwordDetectionConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_53} :catch_17

    :try_start_53
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    new-instance v4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;I)V

    invoke-virtual {v0, v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_6d

    :try_start_5f
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    if-eq v0, v3, :cond_71

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    iget v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v1, v2, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_6c} :catch_17

    return p1

    :catchall_6d
    move-exception v0

    move-object p1, v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6d

    :try_start_70
    throw p1
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_71} :catch_17

    :cond_71
    return p1

    :goto_72
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    if-eq v0, v3, :cond_7f

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v2, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_7f
    const-string p0, "HotwordDetectionConnection"

    const-string v0, "Can\'t bind to the hotword detection service!"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final binderDied()V
    .registers 5

    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    const-string v0, "HotwordDetectionConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "binderDied mDetectionServiceType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    invoke-static {v1, v2, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    if-nez v1, :cond_24

    const-string p0, "HotwordDetectionConnection"

    const-string v1, "Ignored #binderDied event"

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    goto :goto_49

    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_22

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_46

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v1, 0x4

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0

    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_22

    throw p0
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getJobHandler()Landroid/os/Handler;
    .registers 1

    sget-object p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mHandler:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final ignoreConnectionStatusEvents()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final isBound()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 4

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    if-nez v0, :cond_14

    const-string p0, "HotwordDetectionConnection"

    const-string p2, "Ignored onServiceConnectionStatusChanged event"

    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_12
    move-exception p0

    goto :goto_3e

    :cond_14
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    const/4 v0, 0x2

    if-nez p2, :cond_28

    iget p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    if-eq p2, v0, :cond_3c

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    const/4 v0, 0x7

    invoke-static {p2, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    goto :goto_3c

    :cond_28
    iget-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    if-nez p2, :cond_3c

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    iget p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mDetectionServiceType:I

    if-eq p2, v0, :cond_3c

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {p2, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_3c
    :goto_3c
    monitor-exit p1

    return-void

    :goto_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_12

    throw p0
.end method
