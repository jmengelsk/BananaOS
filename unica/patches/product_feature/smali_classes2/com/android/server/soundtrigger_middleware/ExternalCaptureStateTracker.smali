.class Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# static fields
.field public static final TAG:Ljava/lang/String; = "CaptureStateTracker"


# instance fields
.field public mCaptureActive:Z

.field public final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNeedToConnect:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native connect()V
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    const-string v0, "CaptureStateTracker"

    const-string v1, "Audio policy service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final registerListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final run()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->connect()V

    goto :goto_0
.end method

.method public final setCaptureState(Z)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_37

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_31

    if-eqz p1, :cond_24

    :try_start_1e
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->abortAllActiveModels()V

    goto :goto_2b

    :catchall_22
    move-exception p0

    goto :goto_2f

    :cond_24
    iget-object v3, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;->onResourcesAvailable()V

    :cond_2b
    :goto_2b
    iput-boolean p1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    monitor-exit v2

    goto :goto_b

    :goto_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_22

    :try_start_30
    throw p0

    :catchall_31
    move-exception p0

    goto :goto_35

    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_31

    :try_start_36
    throw p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception p0

    const-string p1, "CaptureStateTracker"

    const-string v0, "Exception caught while setting capture state"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final unregisterListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
