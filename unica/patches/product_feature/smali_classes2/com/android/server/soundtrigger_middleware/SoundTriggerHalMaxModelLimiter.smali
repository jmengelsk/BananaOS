.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field public final mMaxModels:I

.field public mNumLoadedModels:I


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public final detach()V
    .registers 1

    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->forceRecognitionEvent(I)V

    return-void
.end method

.method public final getModelParameter(II)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    goto :goto_1d

    :cond_17
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p1

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_15

    throw p1
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    goto :goto_1d

    :cond_17
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p1

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_15

    throw p1
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public final reboot()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->reboot()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    return-void
.end method

.method public final setModelParameter(III)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->setModelParameter(III)V

    return-void
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    return-void
.end method

.method public final stopRecognition(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->stopRecognition(I)V

    return-void
.end method

.method public final unloadSoundModel(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_29

    :try_start_10
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->unloadSoundModel(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1d

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    :cond_1c
    return-void

    :catch_1d
    move-exception p1

    monitor-enter p0

    :try_start_1f
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    throw p1

    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method
