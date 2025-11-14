.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-void
.end method


# virtual methods
.method public final detach()V
    .registers 2

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public final forceRecognitionEvent(I)V
    .registers 3

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public final getModelParameter(II)I
    .registers 4

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public final loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 3

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public final loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 3

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public final queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return-object p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public final setModelParameter(III)V
    .registers 5

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public final startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    .registers 4

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return-object p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public final stopRecognition(I)V
    .registers 3

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public final unloadModel(I)V
    .registers 3

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method
