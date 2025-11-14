.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

.field public final mClientLock:Ljava/lang/Object;

.field public mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    const-string/jumbo p0, "SoundTriggerInjection"

    const-string/jumbo v0, "Unexpected asBinder!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling asBinder on a fake binder object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final binderDied()V
    .registers 2

    const-string/jumbo p0, "SoundTriggerInjection"

    const-string v0, "Binder died without params"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public final onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onClientDetached(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onPreempted()V
    .registers 2

    const-string/jumbo p0, "SoundTriggerInjection"

    const-string/jumbo v0, "Unexpected preempted!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public final registerClient(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    :try_start_8
    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onPreempted()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_e
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_18

    :catchall_c
    move-exception p0

    goto :goto_39

    :catch_e
    move-exception v1

    :try_start_f
    const-string/jumbo v3, "SoundTriggerInjection"

    const-string/jumbo v4, "RemoteException when handling preemption"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_21
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_c

    :try_start_23
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz p1, :cond_37

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_33} :catch_34
    .catchall {:try_start_23 .. :try_end_33} :catchall_c

    goto :goto_37

    :catch_34
    const/4 p1, 0x0

    :try_start_35
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :cond_37
    :goto_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_c

    throw p0
.end method

.method public final registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_d

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception p0

    goto :goto_16

    :cond_d
    :try_start_d
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_b

    goto :goto_14

    :catch_11
    const/4 p1, 0x0

    :try_start_12
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_b

    throw p0
.end method
