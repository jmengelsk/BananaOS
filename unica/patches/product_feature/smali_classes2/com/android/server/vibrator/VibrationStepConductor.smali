.class public final Lcom/android/server/vibrator/VibrationStepConductor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final EMPTY_STEP_LIST:Ljava/util/List;


# instance fields
.field public final isInSession:Z

.field public mCancelledImmediately:Z

.field public mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

.field public final mComposed:Landroid/os/VibrationEffect$Composed;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public mDynamicEffectLoop:I

.field public final mLock:Ljava/lang/Object;

.field public final mNextSteps:Ljava/util/PriorityQueue;

.field public final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

.field public mPendingVibrateSteps:I

.field public mRemainingStartSequentialEffectSteps:I

.field public final mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

.field public mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

.field public mSignalCancelImmediate:Z

.field public final mSignalVibratorsComplete:Landroid/util/IntArray;

.field public final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mSuccessfulVibratorOnSteps:I

.field public final mVibration:Lcom/android/server/vibrator/HalVibration;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/HalVibration;ZLcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->isInSession:Z

    iput-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iput-object p4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iput-object p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iput-object p6, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iput-object p7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    iput-object p8, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    iget-object p2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p2, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    if-eqz p2, :cond_5c

    const-string p3, "DynamicEffect_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5c

    :try_start_43
    iget-object p2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p2, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_53} :catch_54

    goto :goto_5c

    :catch_54
    const-string/jumbo p2, "VibrationThread"

    const-string p3, "Failed to parse DynamicEffect reason."

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    new-instance p2, Landroid/util/IntArray;

    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object p3, p3, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    array-length p3, p3

    invoke-direct {p2, p3}, Landroid/util/IntArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    new-instance p2, Landroid/util/SparseIntArray;

    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object p3, p3, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    array-length p3, p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iget-object p1, p1, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    instance-of p2, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz p2, :cond_83

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    goto :goto_95

    :cond_83
    instance-of p2, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz p2, :cond_95

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    :cond_95
    :goto_95
    return-void
.end method

.method public static expectIsVibrationThread(Z)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/vibrator/VibrationThread;

    if-eq v0, p0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Thread caller assertion failed, expected isVibrationThread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "VibrationStepConductor"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method


# virtual methods
.method public final isFinished()Z
    .registers 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_d

    goto :goto_1d

    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;
    .registers 17

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p5, v0, :cond_1a

    iget p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    if-le p5, v1, :cond_1c

    sub-int/2addr p5, v1

    iput p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    const/4 p5, 0x0

    :cond_1a
    :goto_1a
    move v6, p5

    goto :goto_21

    :cond_1c
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p5

    goto :goto_1a

    :goto_21
    if-gez v6, :cond_2e

    new-instance v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    return-object v0

    :cond_2e
    move-wide v7, p6

    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v0, p5, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v0

    :cond_4a
    instance-of v0, p5, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v0, :cond_5b

    new-instance v0, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v0

    :cond_5b
    instance-of v0, p5, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/android/server/vibrator/ComposePwleVibratorStep;

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v0

    :cond_6c
    instance-of v0, p5, Landroid/os/vibrator/PwleSegment;

    if-eqz v0, :cond_7d

    new-instance v0, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v0

    :cond_7d
    instance-of p5, p5, Landroid/os/vibrator/SemHapticSegment;

    if-eqz p5, :cond_8e

    new-instance v0, Lcom/android/server/vibrator/SemHapticStep;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    iput-wide v7, v0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    return-object v0

    :cond_8e
    move-wide v7, p6

    new-instance v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v0
.end method

.method public final notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V
    .registers 8

    const-string/jumbo v0, "Vibration cancel request new signal="

    const-string/jumbo v1, "Vibration cancel request ignored as the vibration "

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_e
    const-string/jumbo v2, "VibrationThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Vibration cancel requested with signal="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", immediate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string/jumbo v2, "VibrationThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Vibration cancel requested with bad signal="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", using CANCELLED_UNKNOWN_REASON to ensure cancellation."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    :cond_5b
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_67

    :try_start_60
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v3, :cond_6b

    goto :goto_67

    :catchall_65
    move-exception p0

    goto :goto_d7

    :cond_67
    :goto_67
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v3, :cond_98

    :cond_6b
    const-string/jumbo p1, "VibrationThread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v0, v0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "is already being cancelled with signal="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", immediate="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_98
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    or-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v3, :cond_a2

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    goto :goto_c8

    :cond_a2
    const-string/jumbo p2, "VibrationThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored as the vibration was already cancelled with signal="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but immediate flag was updated to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c8
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_d0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_d0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    return-void

    :goto_d7
    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_60 .. :try_end_d8} :catchall_65

    throw p0
.end method

.method public final notifySyncedVibrationComplete()V
    .registers 7

    const-string/jumbo v0, "VibrationThread"

    const-string/jumbo v1, "Synced vibration complete reported by vibrator manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v1, v1, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :catchall_1e
    move-exception p0

    goto :goto_27

    :cond_20
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_1e

    throw p0
.end method

.method public final notifyVibrationComplete(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .registers 5

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Vibration "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " finished with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VibrationThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HalVibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    return-void
.end method

.method public final pollNext()Lcom/android/server/vibrator/Step;
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Step;

    return-object p0

    :cond_1b
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Step;

    return-object p0
.end method

.method public final prepareToStart()Z
    .registers 11

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    const-string/jumbo v2, "VibrationThread"

    if-eqz v0, :cond_10

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_15

    goto :goto_4e

    :cond_15
    :try_start_15
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_23} :catch_28
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_23} :catch_26
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_4e

    :catchall_24
    move-exception v0

    goto :goto_2a

    :catch_26
    move-exception v0

    goto :goto_30

    :catch_28
    move-exception v0

    goto :goto_37

    :goto_2a
    const-string v3, "Failed to retrieve vibration params."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    :goto_30
    const-string/jumbo v3, "Request for vibration params cancelled, maybe superseded or vibrator controller unregistered. Skipping params..."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    :goto_37
    const-string/jumbo v3, "Request for vibration params timed out"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "vibrator.value_vibration_param_request_timeout"

    invoke-static {v2, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :goto_4e
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/HalVibration;->scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v3, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v3, v2}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_63

    return v3

    :cond_63
    iget-object v4, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    iput-object v2, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    :cond_6d
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v0, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    instance-of v2, v0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v2, :cond_79

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    :goto_77
    move-object v8, v0

    goto :goto_88

    :cond_79
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    goto :goto_77

    :goto_88
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    invoke-virtual {v8}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v8}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v5, v2

    const/4 v9, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    iget-object p0, v5, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide v2, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_c5

    goto :goto_d8

    :cond_c5
    iget-wide v2, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_cc

    goto :goto_d8

    :cond_cc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    :goto_d8
    return v1
.end method

.method public final runNextStep()V
    .registers 8

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    if-eqz v0, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Playing vibration id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v3, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    instance-of v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;

    const-string v4, ""

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " on vibrator "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lcom/android/server/vibrator/AbstractVibratorStep;

    invoke-virtual {v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :cond_39
    move-object v3, v4

    :goto_3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v4, " (cleanup)"

    :cond_55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VibrationThread"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibratorOnDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_75

    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    :cond_75
    instance-of v3, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    if-eqz v3, :cond_7e

    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    :cond_7e
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v0

    if-nez v0, :cond_89

    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    :cond_89
    const/4 v0, 0x0

    :goto_8a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a3

    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Step;

    invoke-virtual {v4}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v4

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_a3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    :cond_a8
    return-void
.end method

.method public final waitUntilNextStepIsDue()Z
    .registers 10

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    if-eqz v0, :cond_d

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_d
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v3, :cond_26

    const-string/jumbo v3, "VibrationThread"

    const-string v6, "Immediate cancellation signal processed twice"

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :catchall_23
    move-exception p0

    goto/16 :goto_124

    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    move v6, v1

    goto :goto_2c

    :cond_2a
    move v6, v4

    move-object v3, v5

    :goto_2c
    iget-object v7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v7, :cond_35

    iget-object v8, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-nez v8, :cond_35

    move-object v3, v7

    :cond_35
    if-nez v6, :cond_4a

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v7

    if-lez v7, :cond_4a

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v7}, Landroid/util/IntArray;->clear()V

    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_23

    if-eqz v6, :cond_63

    if-eqz v0, :cond_52

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_52
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    iput-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    :goto_56
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    goto :goto_56

    :cond_60
    iput v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    goto :goto_ba

    :cond_63
    if-eqz v3, :cond_86

    if-eqz v0, :cond_6a

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_6a
    iput-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_71
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v2

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Lcom/android/server/vibrator/Step;->cancel()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_71

    :cond_7f
    iput v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    :cond_86
    if-eqz v5, :cond_ba

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8f

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8f
    array-length v0, v5

    move v2, v4

    :goto_91
    if-ge v2, v0, :cond_ba

    aget v3, v5, v2

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/Step;

    invoke-virtual {v7, v3}, Lcom/android/server/vibrator/Step;->acceptVibratorCompleteCallback(I)Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_ba
    :goto_ba
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_bf

    goto :goto_121

    :cond_bf
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    goto :goto_f4

    :cond_c8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Step;

    if-nez v0, :cond_d3

    goto :goto_f4

    :cond_d3
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->isInSession:Z

    if-eqz v2, :cond_d8

    goto :goto_f4

    :cond_d8
    iget-wide v2, v0, Lcom/android/server/vibrator/Step;->startTime:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v2, v5

    const-wide/16 v5, 0x0

    if-nez v0, :cond_e7

    move-wide v2, v5

    goto :goto_f0

    :cond_e7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v2, v7

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_f0
    cmp-long v0, v2, v5

    if-gtz v0, :cond_f5

    :goto_f4
    return v1

    :cond_f5
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f8
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_ff

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_ff
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v1, :cond_107

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    if-eqz v1, :cond_117

    :cond_107
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-eqz v1, :cond_10f

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v1, :cond_117

    :cond_10f
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_11b

    :cond_117
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_f8 .. :try_end_118} :catchall_119

    return v4

    :catchall_119
    move-exception p0

    goto :goto_122

    :cond_11b
    :try_start_11b
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_120
    .catch Ljava/lang/InterruptedException; {:try_start_11b .. :try_end_120} :catch_120
    .catchall {:try_start_11b .. :try_end_120} :catchall_119

    :catch_120
    :try_start_120
    monitor-exit v0

    :goto_121
    return v4

    :goto_122
    monitor-exit v0
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_119

    throw p0

    :goto_124
    :try_start_124
    monitor-exit v2
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_23

    throw p0
.end method
