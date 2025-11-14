.class public final Lcom/android/server/vibrator/ComposePwleVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, p2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, p2, :cond_5

    if-ne p1, v1, :cond_0

    if-ltz v2, :cond_5

    move p1, v2

    :cond_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v6, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v6, :cond_5

    check-cast v5, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    div-int/lit8 v8, p2, 0x2

    if-ge v7, v8, :cond_3

    goto :goto_2

    :cond_3
    cmpg-float v6, v6, v3

    if-gtz v6, :cond_4

    :goto_1
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p2, :cond_6

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final play()Ljava/util/List;
    .locals 14

    const-string v0, "Compose "

    const-string v1, "Ignoring wrong segment for a ComposePwleStep: "

    const-wide/32 v2, 0x800000

    const-string v4, "ComposePwleStep"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v4, v4, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getPwleSizeMax()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v6, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x64

    :goto_0
    invoke-static {v5, v6, v4}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const-string/jumbo v7, "VibrationThread"

    if-eqz v5, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " PWLEs on vibrator "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/vibrator/RampSegment;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/os/vibrator/RampSegment;

    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v9, v0, Lcom/android/server/vibrator/Vibration;->id:J

    const/4 v0, 0x0

    int-to-long v11, v0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/RampSegment;JJ)J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v1, v1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    iget v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    array-length v6, v8

    add-int/2addr v5, v6

    iput v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    const-wide/16 v5, 0x0

    cmp-long v7, v9, v5

    if-lez v7, :cond_4

    array-length v7, v8

    :goto_1
    if-ge v0, v7, :cond_3

    aget-object v11, v8, v0

    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v12

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v11

    sub-long/2addr v9, v11

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v9, v5

    if-lez v0, :cond_4

    iget v0, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v5, v9

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
