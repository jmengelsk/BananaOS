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
    .registers 4

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
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "notifyVibrationComplete"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_10
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyVibrationComplete(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1e
    return-void
.end method

.method public isRunningVibrationId(J)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_13

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p0, v1, p1

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final playVibration()V
    .registers 7

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "playVibration"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->prepareToStart()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_20

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v4, 0x0

    if-nez v2, :cond_22

    :try_start_14
    new-instance v2, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v2, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_20
    move-exception p0

    goto :goto_73

    :cond_22
    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->waitUntilNextStepIsDue()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->runNextStep()V

    :cond_37
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_48

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_48
    iget-object v5, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v5, :cond_4d

    goto :goto_69

    :cond_4d
    iget v5, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    if-gtz v5, :cond_68

    iget v5, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    if-lez v5, :cond_56

    goto :goto_68

    :cond_56
    iget v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    if-lez v2, :cond_62

    new-instance v5, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v5, v2, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    goto :goto_69

    :cond_62
    new-instance v5, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v5, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    goto :goto_69

    :cond_68
    :goto_68
    move-object v5, v4

    :goto_69
    if-eqz v5, :cond_22

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_6e
    .catchall {:try_start_22 .. :try_end_6e} :catchall_20

    goto :goto_22

    :cond_6f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_73
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final run()V
    .registers 13

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_18d

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_18b

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

    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_176

    :try_start_2e
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_174

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v1

    if-nez v1, :cond_51

    const-string/jumbo v1, "VibrationThread"

    const-string/jumbo v3, "VibrationThread terminated with unfinished vibration"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_54
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_171

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

    :try_start_86
    iget-object v7, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_16c

    :try_start_8b
    iget-object v10, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v10, v10, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v11, v10, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v11, :cond_da

    check-cast v10, Lcom/android/server/vibrator/SingleVibrationSession;

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_be

    iget-object v5, v10, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v10, v5, v3

    if-eqz v10, :cond_be

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

    goto :goto_be

    :catchall_bb
    move-exception p0

    goto/16 :goto_16a

    :cond_be
    :goto_be
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

    goto :goto_13d

    :cond_da
    instance-of v0, v10, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v0, :cond_123

    check-cast v10, Lcom/android/server/vibrator/VendorVibrationSession;

    invoke-virtual {v10}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_13d

    if-nez v0, :cond_101

    const-string/jumbo v0, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    :cond_101
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_13d

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

    goto :goto_13d

    :cond_123
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_13d

    const-string/jumbo v0, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13d
    :goto_13d
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v1

    if-eqz v1, :cond_156

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14c
    .catchall {:try_start_8b .. :try_end_14c} :catchall_bb

    :try_start_14c
    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v1

    goto :goto_156

    :catchall_153
    move-exception p0

    monitor-exit v1
    :try_end_155
    .catchall {:try_start_14c .. :try_end_155} :catchall_153

    :try_start_155
    throw p0

    :cond_156
    :goto_156
    monitor-exit v7
    :try_end_157
    .catchall {:try_start_155 .. :try_end_157} :catchall_bb

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15d
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_163
    .catchall {:try_start_15d .. :try_end_163} :catchall_167

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    goto/16 :goto_4

    :catchall_167
    move-exception p0

    :try_start_168
    monitor-exit v0
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw p0

    :goto_16a
    :try_start_16a
    monitor-exit v7
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_bb

    :try_start_16b
    throw p0
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16c

    :catchall_16c
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :catchall_171
    move-exception p0

    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw p0

    :catchall_174
    move-exception v0

    goto :goto_180

    :catchall_176
    move-exception v0

    :try_start_177
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    throw v0
    :try_end_180
    .catchall {:try_start_177 .. :try_end_180} :catchall_174

    :goto_180
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    throw v0

    :catchall_18b
    move-exception p0

    goto :goto_19f

    :cond_18d
    :try_start_18d
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_192
    .catch Ljava/lang/InterruptedException; {:try_start_18d .. :try_end_192} :catch_193
    .catchall {:try_start_18d .. :try_end_192} :catchall_18b

    goto :goto_19c

    :catch_193
    :try_start_193
    const-string/jumbo v1, "VibrationThread"

    const-string/jumbo v2, "VibrationThread interrupted waiting to start, continuing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19c
    monitor-exit v0

    goto/16 :goto_4

    :goto_19f
    monitor-exit v0
    :try_end_1a0
    .catchall {:try_start_193 .. :try_end_1a0} :catchall_18b

    throw p0
.end method

.method public final runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 6

    const-string/jumbo v0, "runVibrationOnVibrationThread"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2f

    :try_start_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v3, :cond_20

    const-string/jumbo p0, "VibrationThread"

    const-string p1, "Attempt to start vibration when one already running"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :catchall_1e
    move-exception p0

    goto :goto_2d

    :cond_20
    :try_start_20
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_1e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_1e

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final waitForThreadIdle(J)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v3, :cond_10

    monitor-exit v2

    return-void

    :catchall_e
    move-exception p0

    goto :goto_2c

    :cond_10
    cmp-long v3, v0, p1

    if-ltz v3, :cond_16

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_e

    return-void

    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1d} :catch_1e
    .catchall {:try_start_16 .. :try_end_1d} :catchall_e

    goto :goto_27

    :catch_1e
    :try_start_1e
    const-string/jumbo v0, "VibrationThread"

    const-string/jumbo v1, "VibrationThread interrupted waiting to stop, continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_8

    :goto_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_e

    throw p0
.end method
