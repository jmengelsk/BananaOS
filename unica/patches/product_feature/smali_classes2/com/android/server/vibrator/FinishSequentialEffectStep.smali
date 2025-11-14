.class public final Lcom/android/server/vibrator/FinishSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    iput-object p1, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;->cancelImmediately()V

    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final cancelImmediately()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->noteVibratorOff(I)V

    return-void
.end method

.method public final play()Ljava/util/List;
    .locals 5

    const-string v0, "FinishSequentialEffectStep for effect #"

    const-wide/32 v1, 0x800000

    const-string v3, "FinishSequentialEffectStep"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v3, "VibrationThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget v0, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->noteVibratorOff(I)V

    iget-object p0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    filled-new-array {p0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
