.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method


# virtual methods
.method public final modelUnloaded(I)V
    .locals 5

    const-string/jumbo v0, "Trying to unload an active model: "

    const-string/jumbo v1, "Unexpected unload event for model: "

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-nez v3, :cond_0

    const-string/jumbo v0, "SoundTriggerHalEnforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-ne v3, v1, :cond_1

    const-string/jumbo v1, "SoundTriggerHalEnforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 4

    const-string/jumbo v0, "Unexpected recognition event for model: "

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-nez v2, :cond_0

    const-string/jumbo p2, "SoundTriggerHalEnforcer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-object v0, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-eqz v2, :cond_1

    iget v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const-string/jumbo p1, "SoundTriggerHalEnforcer"

    const-string/jumbo p2, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    monitor-exit v1

    return-void

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 4

    const-string/jumbo v0, "Unexpected recognition event for model: "

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-nez v2, :cond_0

    const-string/jumbo p2, "SoundTriggerHalEnforcer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-eqz v2, :cond_1

    iget v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const-string/jumbo p1, "SoundTriggerHalEnforcer"

    const-string/jumbo p2, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    monitor-exit v1

    return-void

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
