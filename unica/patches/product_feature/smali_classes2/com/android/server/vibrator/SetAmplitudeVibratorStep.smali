.class public final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final acceptVibratorCompleteCallback(I)Z
    .registers 8

    invoke-super {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->acceptVibratorCompleteCallback(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Amplitude step received completion callback from "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", accepted = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VibrationThread"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .registers 15

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const-wide/16 v3, 0x0

    move v5, p2

    move-wide v6, v3

    :cond_10
    if-ge v5, v1, :cond_49

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v9, v8, Landroid/os/vibrator/StepSegment;

    if-eqz v9, :cond_49

    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-lez v9, :cond_31

    move-object v9, v8

    check-cast v9, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v9}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_31

    goto :goto_49

    :cond_31
    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_40

    if-ltz v2, :cond_40

    const/4 v5, -0x1

    move v11, v5

    move v5, v2

    move v2, v11

    :cond_40
    if-ne v5, p2, :cond_10

    const-wide/16 p0, 0x1388

    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_49
    :goto_49
    if-ne v5, v1, :cond_5d

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p1

    if-gez p1, :cond_5d

    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v6, p0

    :cond_5d
    return-wide v6
.end method

.method public final play()Ljava/util/List;
    .registers 15

    const-string/jumbo v0, "VibrationThread"

    const-string v1, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    const-string/jumbo v2, "Running amplitude step with "

    const-wide/32 v3, 0x800000

    const-string/jumbo v5, "SetAmplitudeVibratorStep"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long v7, v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms latency."

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_5c

    cmp-long v2, v7, v9

    if-gez v2, :cond_5c

    neg-long v0, v7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)V

    new-instance v5, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v7, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v9, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v10, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v11, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-wide v12, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    invoke-direct/range {v5 .. v13}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    filled-new-array {v5}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_59

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_59
    move-exception v0

    move-object p0, v0

    goto :goto_d1

    :cond_5c
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    iget v7, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v7, v2, Landroid/os/vibrator/StepSegment;

    const/4 v8, 0x1

    if-nez v7, :cond_88

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(IJ)Ljava/util/List;

    move-result-object p0
    :try_end_84
    .catchall {:try_start_5c .. :try_end_84} :catchall_59

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_88
    :try_start_88
    move-object v0, v2

    check-cast v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v11

    cmp-long v1, v11, v9

    if-nez v1, :cond_9d

    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(IJ)Ljava/util/List;

    move-result-object p0
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_59

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_9d
    :try_start_9d
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_b0

    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_c2

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    goto :goto_c2

    :cond_b0
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v1, v5}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v5

    cmp-long v1, v5, v9

    if-lez v1, :cond_c2

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(JLandroid/os/vibrator/StepSegment;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    :cond_c2
    :goto_c2
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {v2}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v5

    add-long/2addr v0, v5

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(IJ)Ljava/util/List;

    move-result-object p0
    :try_end_cd
    .catchall {:try_start_9d .. :try_end_cd} :catchall_59

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_d1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVibrating(J)J
    .registers 14

    const-string/jumbo v0, "VibrationThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Turning on vibrator "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-static {v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v1, Lcom/android/server/vibrator/Vibration;->id:J

    const/4 v1, 0x0

    int-to-long v7, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "VibratorController#on"

    const-wide/32 v9, 0x800000

    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_42
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7d

    :try_start_45
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJ)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_5f

    const/high16 v3, -0x40800000  # -1.0f

    iput v3, v0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_5f

    :catchall_5c
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :cond_5f
    :goto_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_5c

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    if-lez v2, :cond_7a

    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    :cond_7a
    return-wide p1

    :goto_7b
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_5c

    :try_start_7c
    throw p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVibrating(JLandroid/os/vibrator/StepSegment;)J
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Turning on vibrator "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    const-string/jumbo v2, "VibrationThread"

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-boolean v0, v0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    :cond_3d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final turnVibratorBackOn(J)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    goto :goto_3c

    :cond_f
    add-long/2addr v0, p1

    const-string/jumbo v4, "Turning the vibrator back ON using the remaining duration of "

    const-string/jumbo v5, "ms, for a total of "

    invoke-static {v4, p1, p2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "VibrationThread"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget p1, p1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-lez p2, :cond_3c

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    :cond_3c
    :goto_3c
    return-void
.end method
