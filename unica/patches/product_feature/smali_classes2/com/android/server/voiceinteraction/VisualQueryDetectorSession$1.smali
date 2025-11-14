.class public final Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;
.super Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    .registers 5

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onAttentionGained"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    if-nez v1, :cond_1a

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p0

    goto :goto_3f

    :cond_1a
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_18

    goto :goto_3d

    :catch_1e
    move-exception p1

    :try_start_1f
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v2, "Error delivering attention gained event."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_18

    :try_start_27
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Attention listener fails to switch to GAINED state."

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_35
    .catchall {:try_start_27 .. :try_end_34} :catchall_18

    goto :goto_3d

    :catch_35
    :try_start_35
    const-string/jumbo p0, "VisualQueryDetectorSession"

    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_18

    throw p0
.end method

.method public final onAttentionLost(I)V
    .registers 5

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onAttentionLost"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    if-nez v1, :cond_1a

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p0

    goto :goto_3f

    :cond_1a
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionLost(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_18

    goto :goto_3d

    :catch_1e
    move-exception p1

    :try_start_1f
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v2, "Error delivering attention lost event."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_18

    :try_start_27
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Attention listener fails to switch to LOST state."

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_35
    .catchall {:try_start_27 .. :try_end_34} :catchall_18

    goto :goto_3d

    :catch_35
    :try_start_35
    const-string/jumbo p0, "VisualQueryDetectorSession"

    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_18

    throw p0
.end method

.method public final onQueryDetected(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    const/4 v3, 0x4

    if-nez v2, :cond_30

    const-string/jumbo p1, "VisualQueryDetectorSession"

    const-string/jumbo v1, "Query should not be egressed within the unattention state."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream queries without attention signals."

    invoke-direct {p1, v3, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_6f

    :cond_30
    :try_start_30
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    const/16 v5, 0x1b

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_3d} :catch_51
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2e

    :try_start_3d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryDetected(Ljava/lang/String;)V

    const-string/jumbo p0, "VisualQueryDetectorSession"

    const-string p1, "Egressed from visual query detection process."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catch_51
    move-exception p1

    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v2, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_2e

    :try_start_5a
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Cannot stream queries without audio permission."

    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_66} :catch_68
    .catchall {:try_start_5a .. :try_end_66} :catchall_2e

    :try_start_66
    monitor-exit v0

    return-void

    :catch_68
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_2e

    throw p0
.end method

.method public final onQueryFinished()V
    .registers 5

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    if-nez v1, :cond_2d

    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string/jumbo v2, "Query streaming state signal FINISHED is block since there is no active query being streamed."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Cannot send FINISHED signal with no query streamed."

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryFinished()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_2b

    throw p0
.end method

.method public final onQueryRejected()V
    .registers 5

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    if-nez v1, :cond_2d

    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string/jumbo v2, "Query streaming state signal REJECTED is block since there is no active query being streamed."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Cannot send REJECTED signal with no query streamed."

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryRejected()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_2b

    throw p0
.end method

.method public final onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 8

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onResultDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    const/4 v2, 0x4

    if-nez v1, :cond_31

    const-string/jumbo p1, "VisualQueryDetectorSession"

    const-string/jumbo v1, "Result should not be egressed within the unattention state."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream results without attention signals."

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto/16 :goto_d4

    :cond_31
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    if-eqz v1, :cond_3e

    goto :goto_54

    :cond_3e
    const-string/jumbo p1, "VisualQueryDetectorSession"

    const-string v1, "Accessibility data can be egressed only when the isAccessibilityDetectionEnabled() is true."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream accessibility data without enabling the setting."

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    monitor-exit v0

    return-void

    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    move-result-object v1
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_2e

    if-eqz v1, :cond_88

    :try_start_5a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string/jumbo v3, "android.permission.CAMERA"

    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    const/16 v5, 0x1a

    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_69} :catch_6a
    .catchall {:try_start_5a .. :try_end_69} :catchall_2e

    goto :goto_88

    :catch_6a
    move-exception p1

    :try_start_6b
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_2e

    :try_start_73
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream visual only accessibility data without camera permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7f} :catch_81
    .catchall {:try_start_73 .. :try_end_7f} :catchall_2e

    :try_start_7f
    monitor-exit v0

    goto :goto_b8

    :catch_81
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :cond_88
    :goto_88
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getPartialQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_90
    .catchall {:try_start_7f .. :try_end_90} :catchall_2e

    if-nez v1, :cond_c0

    :try_start_92
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    const/16 v5, 0x1b

    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_a1
    .catch Ljava/lang/SecurityException; {:try_start_92 .. :try_end_a1} :catch_a2
    .catchall {:try_start_92 .. :try_end_a1} :catchall_2e

    goto :goto_c0

    :catch_a2
    move-exception p1

    :try_start_a3
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_2e

    :try_start_ab
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream queries without audio permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b7} :catch_b9
    .catchall {:try_start_ab .. :try_end_b7} :catchall_2e

    :try_start_b7
    monitor-exit v0

    :goto_b8
    return-void

    :catch_b9
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :cond_c0
    :goto_c0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    const-string/jumbo p0, "VisualQueryDetectorSession"

    const-string p1, "Egressed from visual query detection process."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_b7 .. :try_end_d5} :catchall_2e

    throw p0
.end method
