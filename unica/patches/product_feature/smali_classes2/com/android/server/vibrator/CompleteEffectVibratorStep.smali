.class public final Lcom/android/server/vibrator/CompleteEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCancelled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V
    .registers 15

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    iput-boolean p4, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    filled-new-array {v1}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-super {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->cancel()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isCleanUp()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return p0
.end method

.method public final play()Ljava/util/List;
    .registers 22

    move-object/from16 v0, p0

    const-string/jumbo v1, "VibrationThread"

    const-string/jumbo v2, "Ramping down vibrator "

    const-string/jumbo v3, "Running "

    const-wide/32 v4, 0x800000

    const-string v6, "CompleteEffectVibratorStep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v3, :cond_23

    const-string/jumbo v3, "cancel"

    goto :goto_26

    :catchall_20
    move-exception v0

    goto/16 :goto_fd

    :cond_23
    const-string/jumbo v3, "complete"

    :goto_26
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vibration step on vibrator "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v3, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_4d
    :try_start_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget v3, v3, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    iget-wide v8, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v10, v10, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v10}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v10, v10, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v10}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result v10

    int-to-long v10, v10

    const v12, 0x3a83126f  # 0.001f

    cmpg-float v12, v3, v12

    if-ltz v12, :cond_d8

    cmp-long v12, v8, v10

    if-gtz v12, :cond_81

    goto :goto_d8

    :cond_81
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from amplitude "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v1, :cond_b6

    add-long/2addr v6, v8

    :goto_b3
    move-wide/from16 v19, v6

    goto :goto_b9

    :cond_b6
    iget-wide v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    goto :goto_b3

    :goto_b9
    div-long/2addr v8, v10

    long-to-float v1, v8

    div-float v17, v3, v1

    sub-float v16, v3, v17

    new-instance v12, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v13, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v14, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v20}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    filled-new-array {v12}, [Lcom/android/server/vibrator/Step;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_d4
    .catchall {:try_start_4d .. :try_end_d4} :catchall_20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_d8
    :goto_d8
    :try_start_d8
    iget-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v1, :cond_e5

    invoke-virtual {v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_e5
    :try_start_e5
    new-instance v6, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v7, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v8, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    iget-object v10, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    filled-new-array {v6}, [Lcom/android/server/vibrator/Step;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_f9
    .catchall {:try_start_e5 .. :try_end_f9} :catchall_20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :goto_fd
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
