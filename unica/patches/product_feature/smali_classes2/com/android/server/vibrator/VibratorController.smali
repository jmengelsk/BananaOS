.class public final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public volatile mCurrentAmplitude:F

.field public volatile mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field public final mSupportEnhancedSamsungHapticPattern:Z

.field public final mSupportFoldState:Z

.field public final mSupportFrequencyControl:Z

.field public final mSupportHapticEngine:Z

.field public final mSupportIndexWideBand:Z

.field public final mSupportIntensityControl:Z

.field public final mSupportPrebakedHapticPattern:Z

.field public final mVibratorGroup:I

.field public volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field public volatile mVibratorInfoLoadSuccessful:Z

.field public final mVibratorStateListeners:Landroid/os/RemoteCallbackList;

.field private mVibratorType:I


# direct methods
.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    new-instance p2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {p2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    sget-object p2, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p2, :cond_0

    const-string/jumbo p2, "VibratorController"

    const-string/jumbo v1, "Vibrator controller initialization failed to load some HAL info for vibrator "

    invoke-static {p1, v1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine()Z

    move-result p2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    monitor-enter v0

    :try_start_1
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl()Z

    move-result p2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    monitor-enter v0

    :try_start_2
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl()Z

    move-result p2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    monitor-enter v0

    :try_start_3
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern()Z

    move-result p2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    monitor-enter v0

    :try_start_4
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern()Z

    move-result p2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    const-string p2, "INDEX_WIDE_BAND"

    monitor-enter v0

    :try_start_5
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x9

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    :goto_0
    move p2, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x5

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    move p2, v3

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x7

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    move p2, v2

    goto :goto_2

    :cond_4
    const/4 p2, 0x6

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_0

    :cond_5
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz p2, :cond_6

    iput v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_0

    :cond_6
    move p2, p1

    :goto_2
    const-string/jumbo v1, "VibratorController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "motor group: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-eq p2, p1, :cond_a

    if-eq p2, v4, :cond_9

    if-eq p2, v2, :cond_8

    if-eq p2, v3, :cond_7

    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_NONE"

    goto :goto_3

    :cond_7
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_D"

    goto :goto_3

    :cond_8
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_C"

    goto :goto_3

    :cond_9
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_B"

    goto :goto_3

    :cond_a
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_A"

    :goto_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    const-string v2, ")"

    invoke-static {p1, v2, v1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    monitor-enter v0

    :try_start_6
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState()Z

    move-result p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFoldState:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Vibrator (id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "currentState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "currentAmplitude = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vibratorInfoLoadSuccessful = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    const-string/jumbo v2, "vibratorStateListener size = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getMotorType()I
    .locals 0

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    return p0
.end method

.method public final off()V
    .locals 4

    const-string/jumbo v0, "VibratorController#off"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on(Landroid/os/VibrationEffect$VendorEffect;JJ)J
    .locals 14

    const-string/jumbo v0, "VibratorController#on (vendor)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getEffectStrength()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getScale()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getAdaptiveScale()F

    move-result v9

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performVendorEffect(Landroid/os/Parcel;JFFJJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return-wide v6

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_1
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final on(Landroid/os/vibrator/PrebakedSegment;JJ)J
    .locals 13

    const-string/jumbo v0, "VibratorController#on (Prebaked)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p1

    int-to-long v7, p1

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v4

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on([Landroid/os/vibrator/PrimitiveSegment;JJ)J
    .locals 12

    const-string/jumbo v0, "VibratorController#on (Primitive)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-lez p3, :cond_1

    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p3, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on([Landroid/os/vibrator/PwlePoint;JJ)J
    .locals 12

    const-string/jumbo v0, "VibratorController#on (PWLE v2)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-lez p3, :cond_1

    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p3, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on([Landroid/os/vibrator/RampSegment;JJ)J
    .locals 13

    const-string/jumbo v0, "VibratorController#on (PWLE)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v8

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJJ)J

    move-result-wide v6

    cmp-long p1, v6, v3

    if-lez p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v6

    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final performPrebakedHapticPattern(JJZ)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJZ)V

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reloadVibratorInfoIfNeeded()V
    .locals 7

    const-string v0, "Failed retry of HAL getInfo for vibrator "

    const-string/jumbo v1, "VibratorController#reloadVibratorInfoIfNeeded"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v4, :cond_1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    new-instance v5, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v5, v4}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v6, v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v5}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p0, :cond_2

    const-string/jumbo p0, "VibratorController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setAmplitude(F)V
    .locals 6

    const-string/jumbo v0, "VibratorController#setAmplitude"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v4, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-ne v3, v4, :cond_1

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setExternalControl(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "VibratorController#enableExternalControl"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "VibratorController#disableExternalControl"

    :goto_0
    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    :goto_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setIntensity(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VibratorController{mVibratorInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorInfoLoadSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorStateListeners count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .locals 11

    const-string/jumbo v0, "VibratorController#updateAlwaysOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v5, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    int-to-long v9, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v1, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq p1, v1, :cond_1

    move v2, v3

    :cond_1
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method
