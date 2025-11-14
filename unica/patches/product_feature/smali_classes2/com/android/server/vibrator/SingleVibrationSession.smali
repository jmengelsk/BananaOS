.class public final Lcom/android/server/vibrator/SingleVibrationSession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallerToken:Landroid/os/IBinder;

.field public mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mLock:Ljava/lang/Object;

.field public final mSessionId:J

.field public final mVibration:Lcom/android/server/vibrator/HalVibration;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;ILandroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;Landroid/os/VibrationEffect$Composed;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession;->sNextSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mSessionId:J

    iput-object p1, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {p7}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v0, Landroid/os/vibrator/SemHapticSegment;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/os/vibrator/SemHapticSegment;

    new-instance v2, Lcom/android/server/vibrator/SemVibrationBundle;

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getType()I

    move-result v3

    invoke-virtual {p7}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p7

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    iput-object p3, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    iput v3, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    iput p7, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    iput p4, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    iget-object p1, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    iput-object p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    iget p1, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iput p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    iget p1, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    iput p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    iget-object p1, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getMagnitude()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getMagnitude()I

    move-result p1

    iput p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    new-instance p1, Landroid/os/VibrationAttributes$Builder;

    iget-object p2, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-direct {p1, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    const-string p2, "INDIVIDUAL_INTENSITY"

    invoke-virtual {p1, p2}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    :cond_0
    sget-boolean p1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->isCustomIndexValid()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/server/vibrator/SemCustomVibration;

    invoke-direct {p1, p5, v2, v0, p6}, Lcom/android/server/vibrator/SemCustomVibration;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;)V

    goto :goto_1

    :cond_1
    sget p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const p1, 0xc3cc

    if-ne v3, p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x12

    invoke-virtual {p6, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    move-result p1

    iput p1, v2, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    new-instance p1, Lcom/android/server/vibrator/SemDcVibration;

    invoke-direct {p1, v2}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/android/server/vibrator/SemPatternVibration;

    invoke-direct {p1, v2}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    const-string p2, ""

    iput-object p2, p1, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    iput-boolean v1, p1, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p1, Lcom/android/server/vibrator/SemIndexVibration;

    invoke-direct {p1, v2}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibration;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    const-string/jumbo p0, "SingleVibrationSession"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p1, Lcom/android/server/vibrator/HalVibration;

    invoke-direct {p1, p2, p3}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    iput-object p1, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iput p4, p1, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string/jumbo v0, "SingleVibrationSession"

    const-string v1, "Binder died, cancelling vibration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/SingleVibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    return-void
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public final getCallerToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mCallerToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getCreateUptimeMillis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    return-wide v0
.end method

.method public final getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {p0}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method public final isRepeating()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifySessionCallback()V
    .locals 0

    return-void
.end method

.method public final notifySyncedVibratorsCallback(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v0, v0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->notifySyncedVibrationComplete()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyVibratorCallback(IJJ)V
    .locals 0

    iget-object p4, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide p4, p4, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p2, p2, p4

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p3, "VibrationThread"

    const-string/jumbo p4, "Vibration complete reported by vibrator "

    invoke-static {p1, p4, p3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {p4, p1}, Landroid/util/IntArray;->add(I)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {v1, p0, p3}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    new-instance p3, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {p3, p1, p2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/HalVibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SingleVibrationSession{sessionId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callerToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mCallerToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "SingleVibrationSession"

    const-string v1, "Failed to unlink vibration to token death"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final wasEndRequested()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/SingleVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_4

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    monitor-exit v1

    if-eqz p0, :cond_4

    move v2, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_4
    :goto_2
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
