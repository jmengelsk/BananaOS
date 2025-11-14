.class public final Lcom/android/server/vibrator/SemIndexVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget v1, v0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    const v3, 0xc3a4

    if-ne v1, v3, :cond_1

    const-string/jumbo v0, "VibratorManagerService"

    const-string/jumbo v1, "Silent vibration is ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance v3, Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {v0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v6, v0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v6, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isRamIndexValid(I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isResourceIndexValid(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v2

    :cond_3
    :goto_0
    move-object v10, v2

    goto/16 :goto_7

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isHybridIndexValid(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v2, "VibratorHelper"

    const-string/jumbo v9, "get hybrid index data"

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    array-length v11, v10

    if-nez v11, :cond_5

    const-string/jumbo v11, "index : "

    const-string v12, " has not hybrid data"

    invoke-static {v1, v11, v12, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    array-length v1, v10

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-ge v12, v1, :cond_a

    aget v13, v10, v12

    const v14, 0xc368

    add-int/2addr v14, v13

    if-gez v13, :cond_6

    new-instance v15, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    mul-int/lit8 v19, v13, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/server/vibrator/CommonPatternInfo;-><init>(IIIII)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-static {v14}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isRamIndexValid(I)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string/jumbo v13, "get ram index data"

    invoke-static {v2, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    invoke-static {v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result v17

    invoke-static {v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v16

    if-nez v16, :cond_7

    const/16 v13, 0x64

    :goto_2
    move/from16 v18, v13

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v13}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v13

    iget v13, v13, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    goto :goto_2

    :goto_3
    invoke-virtual {v6, v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v19

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    move-result v20

    const/16 v16, 0x51

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/server/vibrator/CommonPatternInfo;-><init>(IIIII)V

    filled-new-array {v15}, [Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-static {v14}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isResourceIndexValid(I)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v13

    array-length v14, v13

    move v15, v11

    :goto_4
    if-ge v15, v14, :cond_9

    aget-object v11, v13, v15

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    aput-object v1, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :goto_7
    iget v0, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v9, 0x0

    move-wide v6, v7

    move v8, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;)V

    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semIndexVibrate : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
