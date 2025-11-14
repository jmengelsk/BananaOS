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
    .locals 1

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
    .locals 1

    const-string/jumbo p0, "SoundTriggerInjection"

    const-string/jumbo v0, "Unexpected asBinder!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling asBinder on a fake binder object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final binderDied()V
    .locals 1

    const-string/jumbo p0, "SoundTriggerInjection"

    const-string v0, "Binder died without params"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onClientDetached(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onPreempted()V
    .locals 1

    const-string/jumbo p0, "SoundTriggerInjection"

    const-string/jumbo v0, "Unexpected preempted!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerClient(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onPreempted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "SoundTriggerInjection"

    const-string/jumbo v4, "RemoteException when handling preemption"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    const/4 p1, 0x0

    :try_start_4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
