.class public final Lcom/android/server/vibrator/VendorVibrationSession;
.super Landroid/os/vibrator/IVibrationSession$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/CancellationSignal$OnCancelListener;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCancellationSignal:Landroid/os/ICancellationSignal;

.field public mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

.field public mEndTime:J

.field public mEndUptime:J

.field public mEndedByVendor:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

.field public final mSessionId:J

.field public mStartTime:J

.field public mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field public final mVibrations:Ljava/util/List;

.field public final mVibratorIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "VendorVibrationSession"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Vibrator_All"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/vibrator/IVibrationSession$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession;->sNextSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    iget-object v1, p4, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-direct {v1, p5, p2}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;-><init>(Landroid/os/vibrator/IVibrationSessionCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iput-object p3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    iput-object p4, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string/jumbo v1, "Session binder died, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public final cancelSession()V
    .locals 2

    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string/jumbo v1, "Session cancel requested, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public final clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {v3}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finishSession()V
    .locals 3

    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string/jumbo v1, "Session finish requested, ending vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public final getCallerToken()Landroid/os/IBinder;
    .locals 1

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getCreateUptimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    return-wide v0
.end method

.method public final getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    iget-object v3, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v4, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-wide v5, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    iget-wide v7, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    iget-wide v9, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    iget-wide v11, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndUptime:J

    iget-wide v13, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    iget-boolean v15, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndedByVendor:Z

    iget-object v0, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getSessionId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method public getVibrations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSession$DebugInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isEnded()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isRepeating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final maybeSetStatusToRequestedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session end request applied for status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndUptime:J

    return-void
.end method

.method public final maybeSetVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .locals 5

    const-string/jumbo v0, "Session still dispatching previous vibration, new vibration "

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v2, :cond_1

    sget-boolean p0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "VendorVibrationSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v3, p1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ignored"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :cond_1
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VendorVibrationSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session end request accepted for status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-boolean p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndedByVendor:Z

    iget-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinishing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p2, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinishing:Z

    iget-object v0, p2, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_0
    monitor-exit p2

    :goto_1
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_5

    new-instance p2, Lcom/android/server/vibrator/Vibration$EndInfo;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, p2, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    :cond_5
    :goto_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final notifySessionCallback()V
    .locals 5

    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string/jumbo v1, "Session callback received, ending vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetStatusToRequestedLocked()V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/android/server/vibrator/VibrationSession$Status;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-boolean v1, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VendorVibrationSession"

    const-string/jumbo v3, "Session started at the HAL"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_3
    iput-boolean v2, v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z

    iget-object v2, v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Lcom/android/server/vibrator/VendorVibrationSession;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1

    :goto_1
    const/4 v2, 0x0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_4

    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "VendorVibrationSession"

    const-string/jumbo v1, "Session already ended after starting the HAL, aborting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final notifySyncedVibratorsCallback(J)V
    .locals 1

    sget-boolean p0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Synced vibration callback received for vibration "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VendorVibrationSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final notifyVibratorCallback(IJJ)V
    .locals 1

    sget-boolean p0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "Vibration callback received for vibration "

    const-string v0, " step "

    invoke-static {p0, p2, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on vibrator "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring..."

    const-string/jumbo p2, "VendorVibrationSession"

    invoke-static {p0, p1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onCancel()V
    .locals 2

    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string/jumbo v1, "Session cancellation signal received, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public final requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .locals 0

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    return-void
.end method

.method public final requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V
    .locals 7

    const-string/jumbo v0, "Requesting HAL session end with abort="

    sget-boolean v1, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "VendorVibrationSession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Session end request received with status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_3

    if-eqz v1, :cond_2

    :try_start_2
    const-string/jumbo p1, "VendorVibrationSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetStatusToRequestedLocked()V

    iget-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V

    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "createTime: "

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    const/4 v0, 0x1

    invoke-static {v3, v4, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x0

    if-nez v7, :cond_0

    move-object v3, v8

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", endTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callerInfo: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", vibratorIds: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", vibrations: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unlinkToDeath()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v1}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo v1, "VendorVibrationSession"

    const-string v2, "Failed to unlink session to token death"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V
    .locals 12

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-object v2, v1

    iget-object v1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    move-object v3, v2

    iget v2, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    move-object v4, v3

    iget v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "VibrationSession invalid on session vibrate. currentSession="

    const-string/jumbo v3, "Starting vibrate for vibration "

    const-string/jumbo v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Vibration session "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " vibration requested"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sessionVibrate"

    const-wide/32 v5, 0x800000

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v4, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v8, v7, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v8, :cond_8

    check-cast v7, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-wide v8, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    cmp-long p0, v8, v1

    if-eqz p0, :cond_1

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo p1, "SessionId mismatch on vendor vibration session vibrate. expected=%d, released=%d"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/vibrator/VendorVibrationSession;->wasEndRequested()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo p2, "session vibrate; session is ending, vibration ignored"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p1, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p0

    iget-object p1, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_3
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p1, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p0

    iget-object p1, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    cmp-long p0, v8, v10

    if-nez p0, :cond_4

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p1, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p0

    iget-object p1, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_4
    :try_start_5
    new-instance p0, Lcom/android/server/vibrator/HalVibration;

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    iget-object v8, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v8, v8, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iget-object v8, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    iget-object v8, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v8, v8, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    :cond_5
    const-string/jumbo v8, "VibratorManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " in session "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v2, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {p1, v1}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HalVibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    invoke-virtual {v7}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p1, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p0

    iget-object p1, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_8
    :try_start_6
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_9

    const-string/jumbo p1, "VibratorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final wasEndRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
