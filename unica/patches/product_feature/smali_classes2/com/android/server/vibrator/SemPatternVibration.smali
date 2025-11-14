.class public final Lcom/android/server/vibrator/SemPatternVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mHasEngineData:Z

.field public mIsExecutablePkg:Ljava/lang/String;


# virtual methods
.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-boolean v5, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsHapticEngineSupported:Z

    iget v6, v0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    iget v7, v0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    iget-object v8, v0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const-string/jumbo v13, "VibratorManagerService"

    const-string/jumbo v14, "This "

    if-eqz v5, :cond_11

    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getEngineData(I)[I

    move-result-object v5

    array-length v15, v5

    const-wide/16 v16, 0x0

    const-string/jumbo v9, "VibratorHelper"

    if-ne v15, v3, :cond_0

    aget v10, v5, v1

    if-gez v10, :cond_0

    const-string v2, " is not supported for engine."

    invoke-static {v7, v14, v2, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v15, v1

    move/from16 v18, v4

    move-object/from16 v20, v12

    goto/16 :goto_b

    :cond_0
    iput-boolean v4, v0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    array-length v10, v5

    const/4 v15, 0x5

    if-ne v10, v15, :cond_1

    aget v10, v5, v1

    if-ne v10, v2, :cond_1

    aget v10, v5, v4

    if-nez v10, :cond_1

    aget v10, v5, v3

    if-nez v10, :cond_1

    const/4 v10, 0x3

    aget v10, v5, v10

    if-nez v10, :cond_1

    aget v10, v5, v2

    if-nez v10, :cond_1

    const-string v0, "Empty pattern for haptic engine."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_1
    array-length v10, v5

    add-int/lit8 v15, v10, -0x1

    move/from16 v18, v4

    const-string/jumbo v4, "] = "

    if-le v10, v2, :cond_f

    div-int/lit8 v19, v15, 0x4

    move-object/from16 v20, v12

    mul-int/lit8 v12, v19, 0x4

    if-eq v12, v15, :cond_2

    :goto_1
    move v15, v1

    move-object/from16 v21, v5

    goto/16 :goto_9

    :cond_2
    aget v12, v5, v1

    if-ne v15, v12, :cond_e

    if-ne v7, v11, :cond_9

    array-length v4, v5

    array-length v9, v5

    if-gt v9, v2, :cond_3

    new-array v2, v3, [J

    fill-array-data v2, :array_0

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v4, -0x1

    div-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [J

    aput-wide v16, v9, v1

    aget v10, v5, v3

    if-eqz v10, :cond_4

    move v12, v1

    move/from16 v10, v18

    goto :goto_2

    :cond_4
    move v10, v1

    move/from16 v12, v18

    :goto_2
    move/from16 v15, v18

    :goto_3
    if-ge v15, v4, :cond_8

    move/from16 v19, v2

    add-int/lit8 v2, v15, 0x1

    if-ge v2, v4, :cond_7

    if-eqz v12, :cond_5

    aget v21, v5, v2

    if-eqz v21, :cond_5

    add-int/lit8 v10, v10, 0x1

    move v12, v1

    goto :goto_4

    :cond_5
    if-nez v12, :cond_6

    aget v2, v5, v2

    if-nez v2, :cond_6

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v18

    :cond_6
    :goto_4
    aget-wide v21, v9, v10

    aget v2, v5, v15

    move/from16 v23, v12

    int-to-long v11, v2

    add-long v21, v21, v11

    aput-wide v21, v9, v10

    move/from16 v12, v23

    :cond_7
    add-int/lit8 v15, v15, 0x4

    move/from16 v2, v19

    const/4 v11, -0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v10, v10, 0x1

    new-array v2, v10, [J

    invoke-static {v9, v1, v2, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_9
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    move-result-object v2

    :goto_5
    array-length v4, v2

    if-ne v4, v3, :cond_a

    aget-wide v9, v2, v1

    cmp-long v4, v9, v16

    if-gez v4, :cond_a

    move v15, v1

    goto :goto_7

    :cond_a
    array-length v4, v2

    move v9, v1

    move v10, v9

    :goto_6
    if-ge v9, v4, :cond_b

    aget-wide v11, v2, v9

    move v15, v1

    move-object/from16 v19, v2

    int-to-long v1, v10

    add-long/2addr v1, v11

    long-to-int v10, v1

    add-int/lit8 v9, v9, 0x1

    move v1, v15

    move-object/from16 v2, v19

    goto :goto_6

    :cond_b
    move v15, v1

    int-to-long v1, v10

    new-array v4, v3, [J

    aput-wide v16, v4, v15

    aput-wide v1, v4, v18

    move-object v2, v4

    :goto_7
    array-length v1, v2

    if-ne v1, v3, :cond_c

    aget-wide v3, v2, v15

    cmp-long v1, v3, v16

    if-gez v1, :cond_c

    const-string v0, " is not supported.(colorful)"

    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_c
    const/4 v1, -0x1

    if-le v6, v1, :cond_d

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_d

    :cond_d
    new-instance v15, Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {v0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    const/16 v22, 0x0

    iget v0, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    move/from16 v20, v0

    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-object/from16 v21, v5

    invoke-direct/range {v15 .. v22}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;)V

    return-object v15

    :cond_e
    move v15, v1

    move-object/from16 v21, v5

    :goto_8
    if-ge v1, v10, :cond_10

    const-string/jumbo v0, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-static {v1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v21, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v20, v12

    goto/16 :goto_1

    :goto_9
    move v1, v15

    :goto_a
    if-ge v1, v10, :cond_10

    const-string/jumbo v0, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-static {v1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v21, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    const-string/jumbo v0, "data is not haptic engine data"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :cond_11
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    :goto_b
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_13

    aget-wide v2, v1, v15

    cmp-long v2, v2, v16

    if-nez v2, :cond_12

    aget-wide v3, v1, v18

    cmp-long v3, v3, v16

    if-nez v3, :cond_12

    const-string v0, " is blank pattern.(common)"

    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_12
    if-gez v2, :cond_13

    const-string v0, " is not supported.(common)"

    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_13
    array-length v2, v1

    if-eqz v2, :cond_18

    array-length v2, v1

    :goto_c
    if-ge v15, v2, :cond_17

    aget-wide v3, v1, v15

    cmp-long v3, v3, v16

    if-eqz v3, :cond_16

    array-length v2, v1

    if-ge v6, v2, :cond_18

    iget-object v2, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_14

    goto :goto_e

    :cond_14
    const/4 v3, -0x1

    if-le v6, v3, :cond_15

    if-ne v7, v3, :cond_15

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_d
    return-object v20

    :cond_15
    invoke-static {v1, v6}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    iget v2, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v1, v2}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v11

    new-instance v9, Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {v0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v10

    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v1

    int-to-long v12, v1

    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    iget v14, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;)V

    return-object v9

    :cond_16
    const/4 v3, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_17
    const-string/jumbo v2, "isAll0() is true"

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_e
    const-string/jumbo v2, "semPatternVibrate() is failed by illegal argument."

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "semPatternVibrate() - pattern.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repeat = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "semPatternVibrate() - token = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public final isExecutablePattern([J)Z
    .locals 12

    array-length v0, p1

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    const-string/jumbo v2, "VibratorManagerService"

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "isExecutablePattern() - length = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", repeat = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    aget-wide v4, p1, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    div-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v1, :cond_2

    div-int/lit8 v5, v0, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-eq v5, v0, :cond_3

    :cond_2
    if-eq v4, v1, :cond_4

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, v0, :cond_4

    :cond_3
    add-int/lit8 v4, v0, -0x1

    aget-wide v4, p1, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_6

    add-int v5, v4, v1

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    if-ge v5, v0, :cond_5

    aget-wide v8, p1, v8

    aget-wide v10, p1, v5

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-lez v5, :cond_5

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "This pattern is not executable. repeat = "

    invoke-static {v1, v4, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_7

    const-string/jumbo v4, "pattern["

    const-string/jumbo v5, "] = "

    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, p1, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    const-string v5, ":"

    invoke-static {v1, v4, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v1

    invoke-static {v4, v5, v6, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "semColorfulVibrate : "

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "semPatternVibrate : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
