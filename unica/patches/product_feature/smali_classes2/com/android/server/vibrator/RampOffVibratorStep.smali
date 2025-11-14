.class public final Lcom/android/server/vibrator/RampOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAmplitudeDelta:F

.field public final mAmplitudeTarget:F


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V
    .registers 16

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p6

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    iput p4, v0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    iput p5, v0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .registers 7

    new-instance v0, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isCleanUp()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final play()Ljava/util/List;
    .registers 16

    const-string/jumbo v0, "Ramp down the vibrator amplitude, step with "

    const-wide/32 v1, 0x800000

    const-string/jumbo v3, "RampOffVibratorStep"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long/2addr v3, v5

    const-string/jumbo v5, "VibrationThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms latency."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_38

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    :cond_3b
    :try_start_3b
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    iget v3, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    sub-float v8, v0, v3

    const v0, 0x3a83126f  # 0.001f

    cmpg-float v0, v8, v0

    if-gez v0, :cond_65

    new-instance v9, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v10, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    iget-object v13, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    filled-new-array {v9}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_38

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_65
    :try_start_65
    new-instance v4, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v0, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v6, v9

    iget v9, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    iget-object v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    filled-new-array {v4}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_38

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_8a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
