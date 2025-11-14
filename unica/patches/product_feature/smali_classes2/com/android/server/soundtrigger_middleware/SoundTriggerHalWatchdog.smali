.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    new-instance p1, Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    invoke-direct {p1}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->clientAttached(Landroid/os/IBinder;)V

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->clientDetached(Landroid/os/IBinder;)V

    return-void
.end method

.method public final detach()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->detach()V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->forceRecognitionEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final getModelParameter(II)I
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final reboot()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->reboot()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final setModelParameter(III)V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->setModelParameter(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final stopRecognition(I)V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->stopRecognition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final unloadSoundModel(I)V
    .locals 1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->unloadSoundModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
