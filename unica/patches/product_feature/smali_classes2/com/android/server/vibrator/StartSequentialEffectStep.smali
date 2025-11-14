.class public final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final currentIndex:I

.field public mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .registers 1

    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final cancelImmediately()V
    .registers 1

    return-void
.end method

.method public final getVibratorOnDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method public final nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;
    .registers 8

    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    add-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v3, v2, v0

    new-instance v1, Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v1
.end method

.method public final play()Ljava/util/List;
    .registers 16

    const-string/jumbo v0, "StartSequentialEffectStep for effect #"

    const-string/jumbo v1, "StartSequentialEffectStep"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    const-wide/16 v4, 0x0

    :try_start_17
    const-string/jumbo v6, "VibrationThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    iget v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    instance-of v6, v0, Landroid/os/CombinedVibration$Mono;

    if-eqz v6, :cond_45

    new-instance v6, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    goto :goto_52

    :cond_45
    instance-of v6, v0, Landroid/os/CombinedVibration$Stereo;

    if-eqz v6, :cond_51

    new-instance v6, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    :try_end_50
    .catchall {:try_start_17 .. :try_end_50} :catchall_c6

    goto :goto_52

    :cond_51
    const/4 v6, 0x0

    :goto_52
    if-nez v6, :cond_6f

    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v6, v4

    if-ltz v0, :cond_6b

    if-lez v0, :cond_62

    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_66

    :cond_62
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    move-result-object v0

    :goto_66
    if-eqz v0, :cond_6b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_6f
    :try_start_6f
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v0, v0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    iget-object v9, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v9, v9, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v9, v9, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/server/vibrator/VibratorController;
    :try_end_97
    .catchall {:try_start_6f .. :try_end_97} :catchall_c6

    if-nez v9, :cond_b4

    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v6, v4

    if-ltz v0, :cond_b0

    if-lez v0, :cond_a7

    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_ab

    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    move-result-object v0

    :goto_ab
    if-eqz v0, :cond_b0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_b4
    :try_start_b4
    instance-of v8, v7, Landroid/os/vibrator/StepSegment;

    const/4 v10, -0x1

    if-eqz v8, :cond_fb

    check-cast v7, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v8

    if-le v8, v10, :cond_c9

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v0

    goto :goto_cf

    :catchall_c6
    move-exception v0

    goto/16 :goto_14d

    :cond_c9
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget v0, v0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    :goto_cf
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v8

    if-eqz v8, :cond_dd

    int-to-long v12, v0

    const/4 v14, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/vibrator/VibratorController;->performPrebakedHapticPattern(JJZ)V

    goto :goto_e5

    :cond_dd
    iget-boolean v8, v9, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz v8, :cond_e5

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    :cond_e5
    :goto_e5
    iget-boolean v0, v9, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    if-eqz v0, :cond_11f

    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    float-to-long v7, v0

    iget-object v10, v9, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_f1
    .catchall {:try_start_b4 .. :try_end_f1} :catchall_c6

    :try_start_f1
    iget-object v0, v9, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(J)V

    monitor-exit v10

    goto :goto_11f

    :catchall_f8
    move-exception v0

    monitor-exit v10
    :try_end_fa
    .catchall {:try_start_f1 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw v0

    :cond_fb
    instance-of v7, v7, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v7, :cond_11f

    iget-boolean v7, v9, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz v7, :cond_11a

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v7

    if-le v7, v10, :cond_10f

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v0

    :goto_10d
    int-to-long v7, v0

    goto :goto_116

    :cond_10f
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget v0, v0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    goto :goto_10d

    :goto_116
    invoke-virtual {v9, v7, v8}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    goto :goto_11f

    :cond_11a
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {v9, v0}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    :cond_11f
    :goto_11f
    invoke-virtual {p0, v6, v1}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v8, v0, v6, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->noteVibratorOn(IJ)V
    :try_end_132
    .catchall {:try_start_fa .. :try_end_132} :catchall_c6

    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v6, v4

    if-ltz v0, :cond_149

    if-lez v0, :cond_140

    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_144

    :cond_140
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    move-result-object v0

    :goto_144
    if-eqz v0, :cond_149

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_149
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :goto_14d
    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_164

    if-lez v4, :cond_15b

    new-instance v4, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v4, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_15f

    :cond_15b
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    move-result-object v4

    :goto_15f
    if-eqz v4, :cond_164

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_164
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-nez v3, :cond_c

    return-wide v4

    :cond_c
    new-array v6, v3, [Lcom/android/server/vibrator/AbstractVibratorStep;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v15, 0x0

    move v13, v15

    :goto_14
    const/4 v7, 0x1

    if-ge v13, v3, :cond_7a

    move-wide v9, v8

    iget-object v8, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v11, v8, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v11, v11, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    iget-object v12, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/vibrator/VibratorController;

    iget-object v12, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/VibrationEffect;

    sget-boolean v14, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v14, :cond_39

    invoke-static {v7}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_39
    instance-of v7, v12, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v7, :cond_47

    check-cast v12, Landroid/os/VibrationEffect$VendorEffect;

    new-instance v7, Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;

    invoke-direct/range {v7 .. v12}, Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$VendorEffect;)V

    move/from16 v16, v13

    goto :goto_74

    :cond_47
    move-object v7, v8

    instance-of v8, v12, Landroid/os/VibrationEffect$Composed;

    if-eqz v8, :cond_5c

    check-cast v12, Landroid/os/VibrationEffect$Composed;

    move-wide v8, v9

    move-object v10, v11

    move-object v11, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const-wide/16 v13, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v7

    move-wide v9, v8

    goto :goto_74

    :cond_5c
    move/from16 v16, v13

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to create next step for unexpected effect: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "VibrationThread"

    invoke-static {v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_74
    aput-object v7, v6, v16

    add-int/lit8 v13, v16, 0x1

    move-wide v8, v9

    goto :goto_14

    :cond_7a
    const-wide/16 v8, -0x1

    if-ne v3, v7, :cond_a6

    aget-object v0, v6, v15

    iget-object v1, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    if-nez v0, :cond_8b

    return-wide v8

    :cond_8b
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v2, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_9d

    return-wide v2

    :cond_9d
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_a6
    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v11, 0x800000

    const-string/jumbo v13, "prepareSyncedVibration"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b6
    iget-object v10, v10, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-wide v13, v10, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_18c

    move-wide/from16 v16, v4

    iget-wide v4, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    and-long/2addr v13, v4

    cmp-long v4, v13, v4

    if-eqz v4, :cond_c8

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    move v2, v15

    goto :goto_d3

    :cond_c8
    :try_start_c8
    iget-object v4, v10, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    iget-wide v4, v4, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v4, v5, v2}, Lcom/android/server/vibrator/VibratorManagerService;->nativePrepareSynced(J[I)Z

    move-result v2
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_18c

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :goto_d3
    move v4, v15

    move-wide/from16 v13, v16

    :goto_d6
    if-ge v4, v3, :cond_11b

    aget-object v5, v6, v4

    iget-object v10, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/VibrationEffect;

    if-nez v5, :cond_eb

    move/from16 v18, v7

    move-wide/from16 v19, v8

    move-wide/from16 v7, v19

    goto :goto_109

    :cond_eb
    move/from16 v18, v7

    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v7

    move-wide/from16 v19, v8

    move-object/from16 v8, p2

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v7, v5, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    cmp-long v5, v7, v16

    if-gez v5, :cond_101

    goto :goto_109

    :cond_101
    invoke-virtual {v10}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_109
    cmp-long v5, v7, v16

    if-gez v5, :cond_110

    move/from16 v1, v18

    goto :goto_120

    :cond_110
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v18

    move-wide/from16 v8, v19

    goto :goto_d6

    :cond_11b
    move/from16 v18, v7

    move-wide/from16 v19, v8

    move v1, v15

    :goto_120
    if-eqz v2, :cond_14d

    if-nez v1, :cond_14d

    cmp-long v3, v13, v16

    if-lez v3, :cond_14d

    iget-object v3, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v3, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "triggerSyncedVibration"

    invoke-static {v11, v12, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_139
    iget-object v3, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    iget-wide v3, v3, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->nativeTriggerSynced(JJ)Z

    move-result v15
    :try_end_143
    .catchall {:try_start_139 .. :try_end_143} :catchall_148

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    and-int/2addr v1, v15

    goto :goto_14d

    :catchall_148
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_14d
    :goto_14d
    if-eqz v1, :cond_167

    move-object/from16 v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_159
    if-ltz v4, :cond_167

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_159

    :cond_167
    if-eqz v2, :cond_188

    if-nez v15, :cond_188

    iget-object v0, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "cancelSyncedVibration"

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_178
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_183

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_188

    :catchall_183
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_188
    :goto_188
    if-eqz v1, :cond_18b

    return-wide v19

    :cond_18b
    return-wide v13

    :catchall_18c
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
