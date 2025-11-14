.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    :try_start_0
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final binderDied()V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v4, v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-eq v5, v4, :cond_3

    const-string/jumbo v4, "SoundTriggerMiddlewareValidation"

    const-string/jumbo v5, "Unexpected state update in binderDied. Race occurred!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eq v3, v0, :cond_5

    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string/jumbo v3, "Unexpected state update in binderDied. Race occurred!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :try_start_3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->detachInternal()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1

    return-void

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)V

    throw v2

    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_5
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)V

    throw v2

    :goto_6
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onModelUnloaded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->PREEMPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "SoundTriggerMiddlewareValidation"

    const-string v0, "Client callback exception."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onModuleDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v2, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-object v2, v2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "SoundTriggerMiddlewareValidation"

    const-string p2, "Client callback exception."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v2, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "SoundTriggerMiddlewareValidation"

    const-string p2, "Client callback exception."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onResourcesAvailable()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
