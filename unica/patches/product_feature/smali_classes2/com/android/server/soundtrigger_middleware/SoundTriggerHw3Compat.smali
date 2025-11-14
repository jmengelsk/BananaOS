.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

.field public final mRebootRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public clientAttached(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public clientDetached(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public detach()V
    .registers 1

    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->forceRecognitionEvent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getModelParameter(II)I
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getParameter(II)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 5

    const-string/jumbo v0, "SoundTriggerHw3Compat"

    :try_start_3
    const-string/jumbo v1, "loadPhraseSoundModel()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    invoke-direct {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p0, p1, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    goto :goto_19

    :catch_17
    move-exception p0

    goto :goto_31

    :goto_19
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2a

    const-string/jumbo p0, "loadPhraseSoundModel() RecoverableException"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    :cond_2a
    const-string/jumbo p1, "loadPhraseSoundModel() ServiceSpecificException"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :goto_31
    const-string/jumbo p1, "loadPhraseSoundModel() rethrowAsRuntimeException"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 5

    const-string/jumbo v0, "SoundTriggerHw3Compat"

    :try_start_3
    const-string/jumbo v1, "loadSoundModel()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    invoke-direct {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p0, p1, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    goto :goto_19

    :catch_17
    move-exception p0

    goto :goto_31

    :goto_19
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2a

    const-string/jumbo p0, "loadSoundModel() RecoverableException"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    :cond_2a
    const-string/jumbo p1, "loadSoundModel() ServiceSpecificException"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :goto_31
    const-string/jumbo p1, "loadSoundModel() rethrowAsRuntimeException"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final reboot()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    invoke-interface {p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setModelParameter(III)V
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->setParameter(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_12

    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    :cond_12
    throw p0

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final stopRecognition(I)V
    .registers 4

    const-string/jumbo v0, "SoundTriggerHw3Compat"

    :try_start_3
    const-string/jumbo v1, "stopRecognition()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->stopRecognition(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    const-string/jumbo p1, "stopRecognition() rethrowAsRuntimeException"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final unloadSoundModel(I)V
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->unloadSoundModel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
