.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;
    .registers 13

    const-string/jumbo v0, "onExternalVibrationStart"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    new-instance v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    invoke-direct {v0, p1, v3}, Lcom/android/server/vibrator/ExternalVibrationSession;-><init>(Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;)V

    iget-object v3, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    const/16 v4, -0x64

    iput v4, v3, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_153

    const/4 v5, 0x0

    move v6, v5

    :goto_1f
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_43

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v9, 0x8

    invoke-virtual {v7, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v7

    if-eqz v7, :cond_40

    move v6, v8

    goto :goto_44

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_43
    move v6, v5

    :goto_44
    const/4 v7, 0x0

    if-nez v6, :cond_58

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, v0, p1, v7}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_55

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_55
    move-exception p0

    goto/16 :goto_255

    :cond_58
    :try_start_58
    const-string/jumbo v6, "android.permission.VIBRATE"

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v9

    const/4 v10, -0x1

    invoke-static {v6, v9, v10, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v6

    if-eqz v6, :cond_a1

    const-string/jumbo v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, v0, p1, v7}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_58 .. :try_end_9d} :catchall_55

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_a1
    :try_start_a1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v9, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v6, v9}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v6

    if-eqz v6, :cond_b7

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_a1 .. :try_end_b3} :catchall_55

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_b7
    :try_start_b7
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v9, v6, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v9, :cond_d0

    check-cast v6, Lcom/android/server/vibrator/ExternalVibrationSession;

    iget-object v9, v6, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v9, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    iget-object p0, v6, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_b7 .. :try_end_cc} :catchall_55

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_d0
    :try_start_d0
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v6

    if-eqz v6, :cond_e8

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, v6, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v4, v6, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_e4
    .catchall {:try_start_d0 .. :try_end_e4} :catchall_55

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_e8
    :try_start_e8
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v9, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v10, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v6, v9, v10}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iput-object v0, v6, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v6, :cond_123

    iget-object v5, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-interface {v6}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v6

    iget v9, v5, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    if-gez v9, :cond_10b

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v6

    iput v6, v5, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    :cond_10b
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v9, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-interface {v5, v6, v9, v8}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz v5, :cond_122

    const-string/jumbo v6, "cancel"

    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_122
    move v5, v8

    :cond_123
    monitor-exit v3
    :try_end_124
    .catchall {:try_start_e8 .. :try_end_124} :catchall_55

    if-eqz v5, :cond_156

    :try_start_126
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService;->waitForCurrentSessionEnd()Z

    move-result v3

    if-nez v3, :cond_156

    const-string/jumbo p1, "VibratorManagerService"

    const-string/jumbo v3, "Timed out waiting for vibration to cancel"

    invoke-static {p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_13c
    .catchall {:try_start_126 .. :try_end_13c} :catchall_153

    :try_start_13c
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-ne v3, v0, :cond_144

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    :cond_144
    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, v0, v3, v7}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit p1
    :try_end_14c
    .catchall {:try_start_13c .. :try_end_14c} :catchall_150

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_150
    move-exception p0

    :try_start_151
    monitor-exit p1
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    :try_start_152
    throw p0

    :catchall_153
    move-exception p0

    goto/16 :goto_257

    :cond_156
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15b
    .catchall {:try_start_152 .. :try_end_15b} :catchall_153

    :try_start_15b
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v5, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-ne v6, v0, :cond_24c

    iput-object v7, v5, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    iget-object v5, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5, v0}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    const-string/jumbo v5, "VibratorManagerService"

    const-string/jumbo v6, "Vibrator going under external control."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-static {v5, v8, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V

    const-string/jumbo v5, "VibratorManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Playing external vibration: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_1ac

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    goto :goto_1ac

    :catchall_1a9
    move-exception p0

    goto/16 :goto_253

    :cond_1ac
    :goto_1ac
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iput-object v0, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    iget-object v7, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {v6, v5}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v8

    iput v8, v7, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    iget-object v7, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v7, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    iget-object v5, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v5, v5, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1e5

    iput v5, v6, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    :cond_1e5
    sget-boolean v5, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    if-eqz v5, :cond_1ee

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetAchMagnitude(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/ExternalVibrationSession;)V

    :cond_1ee
    iget-object v5, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v5, v5, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    if-eq v5, v4, :cond_209

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz v4, :cond_209

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributesWithTags()Landroid/os/VibrationAttributes;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->playVirtualSoundIfNeeded(Ljava/lang/String;Landroid/os/VibrationAttributes;Z)V

    :cond_209
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mreportVibrationInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p1

    if-eqz p1, :cond_227

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_21d
    .catchall {:try_start_15b .. :try_end_21d} :catchall_1a9

    :try_start_21d
    sget-object v4, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit p1

    goto :goto_227

    :catchall_224
    move-exception p0

    monitor-exit p1
    :try_end_226
    .catchall {:try_start_21d .. :try_end_226} :catchall_224

    :try_start_226
    throw p0

    :cond_227
    :goto_227
    iget-object p0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide v4, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_232

    goto :goto_245

    :cond_232
    iget-wide v4, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    cmp-long p1, v4, v6

    if-eqz p1, :cond_239

    goto :goto_245

    :cond_239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    :goto_245
    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_248
    .catchall {:try_start_226 .. :try_end_248} :catchall_1a9

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_24c
    :try_start_24c
    iget-object p0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    monitor-exit v3
    :try_end_24f
    .catchall {:try_start_24c .. :try_end_24f} :catchall_1a9

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_253
    :try_start_253
    monitor-exit v3
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_1a9

    :try_start_254
    throw p0
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_153

    :goto_255
    :try_start_255
    monitor-exit v3
    :try_end_256
    .catchall {:try_start_255 .. :try_end_256} :catchall_55

    :try_start_256
    throw p0
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_153

    :goto_257
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 9

    const-string/jumbo v0, "VibrationSession invalid on external vibration stop. currentSession="

    const-string/jumbo v1, "Stopping external vibration: "

    const-string/jumbo v2, "onExternalVibrationStop"

    const-wide/32 v3, 0x800000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_f
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_a1

    :try_start_14
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v6, :cond_78

    check-cast v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    iget-object v5, v5, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v0, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_55

    const-string/jumbo p1, "VibratorManagerService"

    const-string v0, "Ach repeat vibration ended"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p1, :cond_55

    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_9f

    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_53

    :try_start_64
    sget-object v1, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p1, v1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v0

    goto :goto_6e

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p0

    :cond_6e
    :goto_6e
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_9a

    :cond_78
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_9a

    const-string/jumbo v1, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    :goto_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_6d .. :try_end_9b} :catchall_53

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_9f
    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_53

    :try_start_a0
    throw p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final shouldIgnoreExternalVibrationLocked(IIII)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method
