.class public final Lcom/android/server/vibrator/ExternalVibrationSession;
.super Lcom/android/server/vibrator/Vibration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mExternalVibration:Landroid/os/ExternalVibration;

.field public final mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

.field public final mScale:Landroid/os/ExternalVibrationScale;

.field public final mSessionId:J


# direct methods
.method public constructor <init>(Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;)V
    .registers 9

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession;->sNextSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    new-instance v0, Landroid/os/ExternalVibrationScale;

    invoke-direct {v0}, Landroid/os/ExternalVibrationScale;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iput-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    iput-object p2, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    const-string v0, "ExternalVibrationSession"

    const-string v1, "Binder died, cancelling external vibration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public final getCallerToken()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final getCreateUptimeMillis()J
    .registers 3

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    return-wide v0
.end method

.method public final getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .registers 10

    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v7, v2, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    iget v8, v2, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v0
.end method

.method public final getSessionId()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method public final isRepeating()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_15

    const/16 v0, 0x11

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final notifySessionCallback()V
    .registers 1

    return-void
.end method

.method public final notifySyncedVibratorsCallback(J)V
    .registers 3

    return-void
.end method

.method public final notifyVibratorCallback(IJJ)V
    .registers 6

    return-void
.end method

.method public final requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .registers 11

    new-instance p3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {p3, p1, p2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-super {p0, p3}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide p1, p1, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_cc

    iget-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->mute()Z

    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide p2, p1, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    iget-wide v2, p1, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    sub-long/2addr p2, v2

    iget v2, p1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    cmp-long v0, p2, v0

    if-lez v0, :cond_2e

    iget v0, p1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    :cond_2e
    iget-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    iget-wide p2, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "VibrationSession invalid on external vibration release. currentSession="

    const-string/jumbo v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "External vibration "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onExternalVibrationReleased"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5a
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_c7

    :try_start_5f
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v4, v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v4, :cond_a6

    check-cast v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_8f

    iget-wide v4, v3, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p0, v4, p2

    if-eqz p0, :cond_8f

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo v6, "VibrationId mismatch on external vibration release. expected=%d, released=%d"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catchall_8d
    move-exception p0

    goto :goto_c5

    :cond_8f
    :goto_8f
    iget-object p0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p2, v3, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    const/4 p3, 0x0

    invoke-static {p0, p3, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V

    iget-object p0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    iget-object p0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_5f .. :try_end_a2} :catchall_8d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_a6
    :try_start_a6
    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p2, :cond_c0

    const-string/jumbo p2, "VibratorManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_a6 .. :try_end_c1} :catchall_8d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_c5
    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_8d

    :try_start_c6
    throw p0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_cc
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExternalVibrationSession{sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vibrationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalVibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public final wasEndRequested()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
