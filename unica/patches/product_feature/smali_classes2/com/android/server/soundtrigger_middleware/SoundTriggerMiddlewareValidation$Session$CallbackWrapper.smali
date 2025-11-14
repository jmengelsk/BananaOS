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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    :try_start_7
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final binderDied()V
    .registers 7

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

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

    goto :goto_18

    :catchall_3a
    move-exception p0

    goto/16 :goto_d9

    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3a

    const/4 v1, 0x0

    :goto_3f
    const/4 v2, 0x0

    :try_start_40
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_6b

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v3, v4, :cond_5d

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    goto :goto_5d

    :catch_5a
    move-exception p0

    goto/16 :goto_d5

    :cond_5d
    :goto_5d
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_68} :catch_5a

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_6b
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v1

    :try_start_70
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7e
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

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

    if-eq v5, v4, :cond_7e

    const-string/jumbo v4, "SoundTriggerMiddlewareValidation"

    const-string/jumbo v5, "Unexpected state update in binderDied. Race occurred!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :catchall_ac
    move-exception p0

    goto :goto_d3

    :cond_ae
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eq v3, v0, :cond_c7

    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string/jumbo v3, "Unexpected state update in binderDied. Race occurred!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_70 .. :try_end_c7} :catchall_ac

    :cond_c7
    :try_start_c7
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->detachInternal()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cc} :catch_ce
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_ac

    :try_start_cc
    monitor-exit v1

    return-void

    :catch_ce
    move-exception p0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)V

    throw v2

    :goto_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_ac

    throw p0

    :goto_d5
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)V

    throw v2

    :goto_d9
    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_3a

    throw p0
.end method

.method public final onModelUnloaded(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_5
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
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2a

    :try_start_1a
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    const-string/jumbo p1, "SoundTriggerMiddlewareValidation"

    const-string v0, "Client callback exception."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final onModuleDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1c

    :try_start_c
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_5
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

    if-nez v2, :cond_24

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_35

    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_22

    :try_start_25
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    const-string/jumbo p1, "SoundTriggerMiddlewareValidation"

    const-string p2, "Client callback exception."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_22

    throw p0
.end method

.method public final onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    :try_start_5
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

    if-nez v2, :cond_22

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_33

    :cond_22
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_20

    :try_start_23
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    const-string/jumbo p1, "SoundTriggerMiddlewareValidation"

    const-string p2, "Client callback exception."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_20

    throw p0
.end method

.method public final onResourcesAvailable()V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
