.class public final Lcom/android/server/vibrator/SemHapticStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mNextOffTime:J


# virtual methods
.method public final acceptVibratorCompleteCallback(I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_13

    iput-boolean v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    :cond_13
    iget-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_25

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_25

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public final play()Ljava/util/List;
    .registers 15

    const-string/jumbo v0, "sepIndex="

    const-string v1, "Ignoring wrong segment for a SemHapticSegment: "

    const-wide/32 v2, 0x800000

    const-string/jumbo v4, "SemHapticStep"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_e
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v6, v5, Landroid/os/vibrator/SemHapticSegment;

    const/4 v7, 0x1

    if-nez v6, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_38

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_9f

    :cond_3b
    :try_start_3b
    check-cast v5, Landroid/os/vibrator/SemHapticSegment;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget v10, v1, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    invoke-virtual {v5}, Landroid/os/vibrator/SemHapticSegment;->getSepIndex()I

    move-result v9

    iget-wide v11, v1, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_54

    move v13, v7

    goto :goto_56

    :cond_54
    const/4 v5, 0x0

    move v13, v5

    :goto_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", intensity="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", repeat="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/vibrator/SemHapticStep;->startVibrating(IIJZ)V

    if-eqz v13, :cond_90

    iget-object p0, v1, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    if-nez p0, :cond_90

    const-wide v0, 0x7fffffffffffec77L

    iput-wide v0, v8, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    move v7, v6

    goto :goto_95

    :cond_90
    iget-wide v0, v8, Lcom/android/server/vibrator/Step;->startTime:J

    add-long/2addr v0, v11

    iput-wide v0, v8, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    :goto_95
    iget-wide v0, v8, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    invoke-virtual {v8, v7, v0, v1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(IJ)Ljava/util/List;

    move-result-object p0
    :try_end_9b
    .catchall {:try_start_3b .. :try_end_9b} :catchall_38

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_9f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVibrating(IIJZ)V
    .registers 12

    const-string/jumbo v0, "SemHapticStep"

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

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ms"

    invoke-static {v1, p3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p3, p3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    move-result p4

    if-eqz p4, :cond_7a

    iget-object p4, p3, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    if-eqz p4, :cond_7a

    array-length p1, p4

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [I

    array-length p4, p4

    const/4 v1, 0x0

    aput p4, p1, v1

    :goto_3d
    iget-object p4, p3, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    array-length v2, p4

    if-ge v1, v2, :cond_65

    add-int/lit8 v2, v0, 0x1

    aget-object p4, p4, v1

    iget v3, p4, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->type:I

    aput v3, p1, v0

    add-int/lit8 v3, v0, 0x2

    iget v4, p4, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->index:I

    aput v4, p1, v2

    add-int/lit8 v2, v0, 0x3

    iget v4, p4, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->scale:I

    aput v4, p1, v3

    add-int/lit8 v3, v0, 0x4

    iget v4, p4, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->duration:I

    aput v4, p1, v2

    add-int/lit8 v0, v0, 0x5

    iget p4, p4, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->frequency:I

    aput p4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_65
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object p4, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_6a
    iget-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p3, p1, p5, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performCommonInputff([IZI)V

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit p4

    return-void

    :catchall_76
    move-exception v0

    move-object p0, v0

    monitor-exit p4
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_76

    throw p0

    :cond_7a
    iget-object p3, p3, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    if-nez p3, :cond_87

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    int-to-long v1, p1

    int-to-long v3, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController;->performPrebakedHapticPattern(JJZ)V

    return-void

    :cond_87
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_92
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine([II)V

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit p3

    return-void

    :catchall_9e
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_a1
    .catchall {:try_start_92 .. :try_end_a1} :catchall_9e

    throw p0
.end method
