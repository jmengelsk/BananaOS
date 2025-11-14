.class public final Lcom/android/server/vibrator/VibrationThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCalledVibrationCompleteCallback:Z

.field public mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mLock:Ljava/lang/Object;

.field public mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    return-void
.end method


# virtual methods
.method public final clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "notifyVibrationComplete"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyVibrationComplete(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    return-void
.end method

.method public isRunningVibrationId(J)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p0, v1, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final playVibration()V
    .locals 6

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "playVibration"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->prepareToStart()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v2, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->waitUntilNextStepIsDue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->runNextStep()V

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_2
    iget-object v5, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    if-gtz v5, :cond_6

    iget v5, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    iget v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    if-lez v2, :cond_5

    new-instance v5, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v5, v2, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v5, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final run()V
    .locals 12

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v2, Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VibrationThread"

    const-string/jumbo v3, "VibrationThread terminated with unfinished vibration"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v3, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "VibrationSession invalid on vibration thread release. currentSession="

    const-string/jumbo v6, "Vendor session without ongoing vibration on thread release. currentSession="

    const-string/jumbo v7, "VibratorManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "VibrationThread released vibration "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "onVibrationThreadReleased"

    const-wide/32 v8, 0x800000

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_4
    iget-object v7, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v10, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v10, v10, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v11, v10, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v11, :cond_2

    check-cast v10, Lcom/android/server/vibrator/SingleVibrationSession;

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_1

    iget-object v5, v10, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v10, v5, v3

    if-eqz v10, :cond_1

    const-string/jumbo v10, "VibratorManagerService"

    const-string/jumbo v11, "VibrationId mismatch on vibration thread release. expected=%d, released=%d"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_1
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v3, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v4}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string/jumbo v3, "vibration"

    invoke-static {v8, v9, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    goto :goto_2

    :cond_2
    instance-of v0, v10, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v0, :cond_4

    check-cast v10, Lcom/android/server/vibrator/VendorVibrationSession;

    invoke-virtual {v10}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_5

    if-nez v0, :cond_3

    const-string/jumbo v0, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_5

    const-string/jumbo v0, "VibratorManagerService"

    const-string/jumbo v10, "VibrationId mismatch on vibration thread release. expected=%d, released=%d"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    :cond_6
    :goto_3
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :goto_4
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :catchall_4
    move-exception p0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p0

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    :try_start_d
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_5
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    throw v0

    :catchall_7
    move-exception p0

    goto :goto_7

    :cond_7
    :try_start_e
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_6

    :catch_0
    :try_start_f
    const-string/jumbo v1, "VibrationThread"

    const-string/jumbo v2, "VibrationThread interrupted waiting to start, continuing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    monitor-exit v0

    goto/16 :goto_0

    :goto_7
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw p0
.end method

.method public final runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .locals 4

    const-string/jumbo v0, "runVibrationOnVibrationThread"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v3, :cond_0

    const-string/jumbo p0, "VibrationThread"

    const-string p1, "Attempt to start vibration when one already running"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final waitForThreadIdle(J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    cmp-long v3, v0, p1

    if-ltz v3, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string/jumbo v0, "VibrationThread"

    const-string/jumbo v1, "VibrationThread interrupted waiting to stop, continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
