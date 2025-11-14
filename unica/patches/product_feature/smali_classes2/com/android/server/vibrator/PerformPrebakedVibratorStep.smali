.class public final Lcom/android/server/vibrator/PerformPrebakedVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final play()Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "Playing fallback for effect "

    const-string/jumbo v2, "Perform "

    const-string v3, "Ignoring wrong segment for a PerformPrebakedVibratorStep: "

    const-wide/32 v4, 0x800000

    const-string/jumbo v6, "PerformPrebakedVibratorStep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v6, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    iget v7, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v7, v6, Landroid/os/vibrator/PrebakedSegment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x1

    const-string/jumbo v9, "VibrationThread"

    if-nez v7, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_2
    move-object v11, v6

    check-cast v11, Landroid/os/vibrator/PrebakedSegment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on vibrator "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {v11}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v3

    iget-object v2, v2, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    iget-object v3, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v3, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v12, v3, Lcom/android/server/vibrator/Vibration;->id:J

    const/4 v3, 0x0

    int-to-long v14, v3

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/vibrator/VibratorController;->on(Landroid/os/vibrator/PrebakedSegment;JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v10, v10, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget v12, v10, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    add-int/2addr v12, v8

    iput v12, v10, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_1

    iget-object v3, v10, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v13

    invoke-virtual {v3, v13, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget v3, v10, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v6, v6

    add-int/2addr v3, v6

    iput v3, v10, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    goto :goto_0

    :cond_1
    iget-object v6, v10, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    if-nez v12, :cond_2

    invoke-virtual {v11}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Landroid/os/VibrationEffect$Composed;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    invoke-static {v1}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v11, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v13, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    move-result-object v14

    iget v15, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-wide v1, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-wide/from16 v16, v1

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v2

    iget-wide v6, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    invoke-virtual {v0, v6, v7}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_2
    :try_start_3
    invoke-virtual {v0, v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p0

    if-ge v2, p0, :cond_0

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    add-int/2addr v1, p0

    :cond_0
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p0
.end method
