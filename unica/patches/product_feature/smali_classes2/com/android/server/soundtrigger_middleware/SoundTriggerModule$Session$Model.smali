.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public mHandle:I

.field public mIsStopping:Z

.field public mRecognitionToken:Landroid/os/IBinder;

.field public mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

.field public mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;


# direct methods
.method public static -$$Nest$mstartRecognition(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mIsStopping:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SoundTriggerModule"

    const-string/jumbo v1, "STHAL startRecognition called"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v3, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mDeviceHandle:I

    iget v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mIoHandle:I

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p1, 0x5

    const-string/jumbo v0, "Race occurred"

    invoke-direct {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mIsStopping:Z

    return-void
.end method


# virtual methods
.method public final modelUnloaded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 2

    const-string/jumbo p1, "SoundTriggerModule"

    const-string/jumbo v0, "phraseRecognitionCallback called"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    iget-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-object v0, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p1, "SoundTriggerModule"

    const-string/jumbo v1, "phraseRecognitionCallback called to upper layer"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-interface {p1, v0, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    return-void

    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 2

    const-string/jumbo p1, "SoundTriggerModule"

    const-string/jumbo v0, "recognitionCallback called"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-object v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->token:Landroid/os/IBinder;

    iget-object v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p1, "SoundTriggerModule"

    const-string/jumbo v1, "recognitionCallback called to upper layer"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    :try_start_1
    iget p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-interface {v0, p1, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    return-void

    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
