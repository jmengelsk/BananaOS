.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
.implements Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;


# instance fields
.field public final mActiveModels:Ljava/util/Set;

.field public final mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

.field public mCaptureState:Z

.field public final mDeathRecipientMap:Ljava/util/Map;

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;

.field public final mLoadedModels:Ljava/util/Map;

.field public final mNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

.field public final mStartStopLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDeathRecipientMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    check-cast p2, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    invoke-virtual {p2, p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->registerListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    return-void
.end method


# virtual methods
.method public final abortAllActiveModels()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_41

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_13

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->stopRecognition(I)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    goto :goto_0

    :goto_41
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_13

    throw p0
.end method

.method public final clientAttached(Landroid/os/IBinder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final detach()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    check-cast v0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->unregisterListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_12
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mQuitting:Z

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final forceRecognitionEvent(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->forceRecognitionEvent(I)V

    return-void
.end method

.method public final getModelParameter(II)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Landroid/os/IBinder$DeathRecipient;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDeathRecipientMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;-><init>(ILcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;-><init>(ILcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public final reboot()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->reboot()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    return-void
.end method

.method public final setModelParameter(III)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->setModelParameter(III)V

    return-void
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1d

    :try_start_6
    iget-boolean v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_2a

    :catchall_1f
    move-exception p0

    goto :goto_28

    :cond_21
    :try_start_21
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1f

    :try_start_29
    throw p0

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_1d

    throw p0
.end method

.method public final stopRecognition(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    :try_start_6
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_39

    if-eqz v2, :cond_1d

    :try_start_15
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->stopRecognition(I)V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_3c

    :cond_1d
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1b

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_23
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    monitor-enter p1
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_38

    :try_start_26
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mPushCount:I

    :goto_28
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mProcessedCount:I

    if-ge v1, v0, :cond_34

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_28

    :catchall_32
    move-exception p0

    goto :goto_36

    :cond_34
    monitor-exit p1

    return-void

    :goto_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_32

    :try_start_37
    throw p0
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    return-void

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p0

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_1b

    throw p0
.end method

.method public final unloadSoundModel(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->unloadSoundModel(I)V

    return-void
.end method
