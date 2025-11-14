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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final detach()V
    .locals 0

    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->forceRecognitionEvent(I)V

    return-void
.end method

.method public final getModelParameter(II)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public final reboot()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->reboot()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    return-void
.end method

.method public final setModelParameter(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->setModelParameter(III)V

    return-void
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    return-void
.end method

.method public final stopRecognition(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->stopRecognition(I)V

    return-void
.end method

.method public final unloadSoundModel(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-virtual {v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->unloadSoundModel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
