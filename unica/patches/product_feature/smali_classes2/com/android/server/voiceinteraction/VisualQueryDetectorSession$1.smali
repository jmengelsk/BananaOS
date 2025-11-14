.class public final Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;
.super Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    .locals 3

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onAttentionGained"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v2, "Error delivering attention gained event."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Attention listener fails to switch to GAINED state."

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_4
    const-string/jumbo p0, "VisualQueryDetectorSession"

    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onAttentionLost(I)V
    .locals 3

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onAttentionLost"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionLost(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v2, "Error delivering attention lost event."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Attention listener fails to switch to LOST state."

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_4
    const-string/jumbo p0, "VisualQueryDetectorSession"

    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onQueryDetected(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    const/4 v3, 0x4

    if-nez v2, :cond_0

    const-string/jumbo p1, "VisualQueryDetectorSession"

    const-string/jumbo v1, "Query should not be egressed within the unattention state."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream queries without attention signals."

    invoke-direct {p1, v3, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    const/16 v5, 0x1b

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
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

    :catch_0
    move-exception p1

    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v2, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Cannot stream queries without audio permission."

    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-void

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onQueryFinished()V
    .locals 4

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    if-nez v1, :cond_0

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

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryFinished()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onQueryRejected()V
    .locals 4

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    if-nez v1, :cond_0

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

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryRejected()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .locals 6

    const-string/jumbo v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onResultDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    const/4 v2, 0x4

    if-nez v1, :cond_0

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

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
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

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string/jumbo v3, "android.permission.CAMERA"

    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    const/16 v5, 0x1a

    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream visual only accessibility data without camera permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    goto :goto_2

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getPartialQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_4

    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    const/16 v5, 0x1b

    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_6
    const-string/jumbo v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream queries without audio permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0

    :goto_2
    return-void

    :catch_3
    move-exception p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    throw p1

    :cond_4
    :goto_3
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

    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method
