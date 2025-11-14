.class public final Lcom/android/server/soundtrigger/DeviceStateHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field public final mCallbackSet:Ljava/util/Set;

.field public final mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mIsPhoneCallOngoing:Z

.field public final mLock:Ljava/lang/Object;

.field public mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

.field public mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public mSoundTriggerPowerSaveMode:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/utils/EventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method


# virtual methods
.method public final evaluateStateChange()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received unexpected power state code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    new-instance v0, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateEvent;

    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateEvent;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    iget-object v3, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, v5}, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public final onPhoneCallStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler$1;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler;)V

    invoke-direct {p1, v1}, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$1;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPowerModeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerListener(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3}, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
