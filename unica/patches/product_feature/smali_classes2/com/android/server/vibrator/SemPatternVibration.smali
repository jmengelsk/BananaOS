.class public final Lcom/android/server/vibrator/SemPatternVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mHasEngineData:Z

.field public mIsExecutablePkg:Ljava/lang/String;


# virtual methods
.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .registers 25

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

    if-eqz v5, :cond_16c

    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getEngineData(I)[I

    move-result-object v5

    array-length v15, v5

    const-wide/16 v16, 0x0

    const-string/jumbo v9, "VibratorHelper"

    if-ne v15, v3, :cond_34

    aget v10, v5, v1

    if-gez v10, :cond_34

    const-string v2, " is not supported for engine."

    invoke-static {v7, v14, v2, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    move v15, v1

    move/from16 v18, v4

    move-object/from16 v20, v12

    goto/16 :goto_170

    :cond_34
    iput-boolean v4, v0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    array-length v10, v5

    const/4 v15, 0x5

    if-ne v10, v15, :cond_55

    aget v10, v5, v1

    if-ne v10, v2, :cond_55

    aget v10, v5, v4

    if-nez v10, :cond_55

    aget v10, v5, v3

    if-nez v10, :cond_55

    const/4 v10, 0x3

    aget v10, v5, v10

    if-nez v10, :cond_55

    aget v10, v5, v2

    if-nez v10, :cond_55

    const-string v0, "Empty pattern for haptic engine."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_55
    array-length v10, v5

    add-int/lit8 v15, v10, -0x1

    move/from16 v18, v4

    const-string/jumbo v4, "] = "

    if-le v10, v2, :cond_148

    div-int/lit8 v19, v15, 0x4

    move-object/from16 v20, v12

    mul-int/lit8 v12, v19, 0x4

    if-eq v12, v15, :cond_6c

    :goto_67
    move v15, v1

    move-object/from16 v21, v5

    goto/16 :goto_14c

    :cond_6c
    aget v12, v5, v1

    if-ne v15, v12, :cond_12d

    if-ne v7, v11, :cond_c9

    array-length v4, v5

    array-length v9, v5

    if-gt v9, v2, :cond_7c

    new-array v2, v3, [J

    fill-array-data v2, :array_216

    goto :goto_cd

    :cond_7c
    add-int/lit8 v9, v4, -0x1

    div-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [J

    aput-wide v16, v9, v1

    aget v10, v5, v3

    if-eqz v10, :cond_8d

    move v12, v1

    move/from16 v10, v18

    goto :goto_90

    :cond_8d
    move v10, v1

    move/from16 v12, v18

    :goto_90
    move/from16 v15, v18

    :goto_92
    if-ge v15, v4, :cond_c1

    move/from16 v19, v2

    add-int/lit8 v2, v15, 0x1

    if-ge v2, v4, :cond_bb

    if-eqz v12, :cond_a4

    aget v21, v5, v2

    if-eqz v21, :cond_a4

    add-int/lit8 v10, v10, 0x1

    move v12, v1

    goto :goto_ae

    :cond_a4
    if-nez v12, :cond_ae

    aget v2, v5, v2

    if-nez v2, :cond_ae

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v18

    :cond_ae
    :goto_ae
    aget-wide v21, v9, v10

    aget v2, v5, v15

    move/from16 v23, v12

    int-to-long v11, v2

    add-long v21, v21, v11

    aput-wide v21, v9, v10

    move/from16 v12, v23

    :cond_bb
    add-int/lit8 v15, v15, 0x4

    move/from16 v2, v19

    const/4 v11, -0x1

    goto :goto_92

    :cond_c1
    add-int/lit8 v10, v10, 0x1

    new-array v2, v10, [J

    invoke-static {v9, v1, v2, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cd

    :cond_c9
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    move-result-object v2

    :goto_cd
    array-length v4, v2

    if-ne v4, v3, :cond_d8

    aget-wide v9, v2, v1

    cmp-long v4, v9, v16

    if-gez v4, :cond_d8

    move v15, v1

    goto :goto_f4

    :cond_d8
    array-length v4, v2

    move v9, v1

    move v10, v9

    :goto_db
    if-ge v9, v4, :cond_eb

    aget-wide v11, v2, v9

    move v15, v1

    move-object/from16 v19, v2

    int-to-long v1, v10

    add-long/2addr v1, v11

    long-to-int v10, v1

    add-int/lit8 v9, v9, 0x1

    move v1, v15

    move-object/from16 v2, v19

    goto :goto_db

    :cond_eb
    move v15, v1

    int-to-long v1, v10

    new-array v4, v3, [J

    aput-wide v16, v4, v15

    aput-wide v1, v4, v18

    move-object v2, v4

    :goto_f4
    array-length v1, v2

    if-ne v1, v3, :cond_103

    aget-wide v3, v2, v15

    cmp-long v1, v3, v16

    if-gez v1, :cond_103

    const-string v0, " is not supported.(colorful)"

    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_103
    const/4 v1, -0x1

    if-le v6, v1, :cond_10e

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result v1

    if-nez v1, :cond_10e

    goto/16 :goto_1b0

    :cond_10e
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

    :cond_12d
    move v15, v1

    move-object/from16 v21, v5

    :goto_130
    if-ge v1, v10, :cond_165

    const-string/jumbo v0, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-static {v1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v21, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    :cond_148
    move-object/from16 v20, v12

    goto/16 :goto_67

    :goto_14c
    move v1, v15

    :goto_14d
    if-ge v1, v10, :cond_165

    const-string/jumbo v0, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-static {v1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v21, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    :cond_165
    const-string/jumbo v0, "data is not haptic engine data"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :cond_16c
    const-wide/16 v16, 0x0

    goto/16 :goto_2d

    :goto_170
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_191

    aget-wide v2, v1, v15

    cmp-long v2, v2, v16

    if-nez v2, :cond_189

    aget-wide v3, v1, v18

    cmp-long v3, v3, v16

    if-nez v3, :cond_189

    const-string v0, " is blank pattern.(common)"

    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_189
    if-gez v2, :cond_191

    const-string v0, " is not supported.(common)"

    invoke-static {v7, v14, v0, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_191
    array-length v2, v1

    if-eqz v2, :cond_1df

    array-length v2, v1

    :goto_195
    if-ge v15, v2, :cond_1d9

    aget-wide v3, v1, v15

    cmp-long v3, v3, v16

    if-eqz v3, :cond_1d5

    array-length v2, v1

    if-ge v6, v2, :cond_1df

    iget-object v2, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_1a5

    goto :goto_1df

    :cond_1a5
    const/4 v3, -0x1

    if-le v6, v3, :cond_1b1

    if-ne v7, v3, :cond_1b1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result v2

    if-nez v2, :cond_1b1

    :goto_1b0
    return-object v20

    :cond_1b1
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

    :cond_1d5
    const/4 v3, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_195

    :cond_1d9
    const-string/jumbo v2, "isAll0() is true"

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1df
    :goto_1df
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

    :array_216
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public final isExecutablePattern([J)Z
    .registers 14

    array-length v0, p1

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    const-string/jumbo v2, "VibratorManagerService"

    const/4 v3, 0x0

    if-lt v1, v0, :cond_24

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

    :cond_24
    aget-wide v4, p1, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2d

    goto :goto_5e

    :cond_2d
    div-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v1, :cond_39

    div-int/lit8 v5, v0, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-eq v5, v0, :cond_41

    :cond_39
    if-eq v4, v1, :cond_4a

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, v0, :cond_4a

    :cond_41
    add-int/lit8 v4, v0, -0x1

    aget-wide v4, p1, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_4a

    goto :goto_5e

    :cond_4a
    move v4, v3

    :goto_4b
    if-ge v4, v0, :cond_63

    add-int v5, v4, v1

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    if-ge v5, v0, :cond_60

    aget-wide v8, p1, v8

    aget-wide v10, p1, v5

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-lez v5, :cond_60

    :goto_5e
    const/4 p0, 0x1

    return p0

    :cond_60
    add-int/lit8 v4, v4, 0x2

    goto :goto_4b

    :cond_63
    const-string/jumbo v4, "This pattern is not executable. repeat = "

    invoke-static {v1, v4, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_6a
    if-ge v1, v0, :cond_85

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

    goto :goto_6a

    :cond_85
    iget-object v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_c0

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

    :goto_a9
    if-ge v1, v0, :cond_c0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v1

    invoke-static {v4, v5, v6, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    :cond_c0
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "semColorfulVibrate : "

    goto :goto_10

    :cond_d
    const-string/jumbo v1, "semPatternVibrate : "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
