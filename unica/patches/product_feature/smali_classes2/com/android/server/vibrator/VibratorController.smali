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
    .registers 11

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

    if-nez p2, :cond_38

    const-string/jumbo p2, "VibratorController"

    const-string/jumbo v1, "Vibrator controller initialization failed to load some HAL info for vibrator "

    invoke-static {p1, v1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_38
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    monitor-enter v0

    :try_start_3c
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine()Z

    move-result p2

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_f3

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    monitor-enter v0

    :try_start_44
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl()Z

    move-result p2

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_f0

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    monitor-enter v0

    :try_start_4c
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl()Z

    move-result p2

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_ed

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    monitor-enter v0

    :try_start_54
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern()Z

    move-result p2

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_ea

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    monitor-enter v0

    :try_start_5c
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern()Z

    move-result p2

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_e7

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    const-string p2, "INDEX_WIDE_BAND"

    monitor-enter v0

    :try_start_66
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_e4

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_86

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-nez v1, :cond_81

    if-eqz p2, :cond_7b

    goto :goto_81

    :cond_7b
    const/16 p2, 0x9

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    :goto_7f
    move p2, v4

    goto :goto_9f

    :cond_81
    :goto_81
    const/4 p2, 0x5

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    move p2, v3

    goto :goto_9f

    :cond_86
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-eqz p2, :cond_97

    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    if-eqz p2, :cond_93

    const/4 p2, 0x7

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    move p2, v2

    goto :goto_9f

    :cond_93
    const/4 p2, 0x6

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_7f

    :cond_97
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz p2, :cond_9e

    iput v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_7f

    :cond_9e
    move p2, p1

    :goto_9f
    const-string/jumbo v1, "VibratorController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "motor group: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-eq p2, p1, :cond_c4

    if-eq p2, v4, :cond_c0

    if-eq p2, v2, :cond_bc

    if-eq p2, v3, :cond_b8

    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_NONE"

    goto :goto_c7

    :cond_b8
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_D"

    goto :goto_c7

    :cond_bc
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_C"

    goto :goto_c7

    :cond_c0
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_B"

    goto :goto_c7

    :cond_c4
    const-string/jumbo p1, "SEM_SUPPORTED_VIBRATION_TYPE_A"

    :goto_c7
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    const-string v2, ")"

    invoke-static {p1, v2, v1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iput p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    monitor-enter v0

    :try_start_d9
    invoke-virtual {p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState()Z

    move-result p1

    monitor-exit v0
    :try_end_de
    .catchall {:try_start_d9 .. :try_end_de} :catchall_e1

    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFoldState:Z

    return-void

    :catchall_e1
    move-exception p0

    :try_start_e2
    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw p0

    :catchall_e4
    move-exception p0

    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p0

    :catchall_e7
    move-exception p0

    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0

    :catchall_ea
    move-exception p0

    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw p0

    :catchall_ed
    move-exception p0

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw p0

    :catchall_f0
    move-exception p0

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p0

    :catchall_f3
    move-exception p0

    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

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
    .registers 1

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    return p0
.end method

.method public final off()V
    .registers 5

    const-string/jumbo v0, "VibratorController#off"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_21

    :try_start_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on(Landroid/os/VibrationEffect$VendorEffect;JJ)J
    .registers 20

    const-string/jumbo v0, "VibratorController#on (vendor)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_4d

    :try_start_10
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

    if-lez p1, :cond_45

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_42

    goto :goto_45

    :catchall_42
    move-exception v0

    move-object p0, v0

    goto :goto_50

    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return-wide v6

    :catchall_4d
    move-exception v0

    move-object p0, v0

    goto :goto_57

    :goto_50
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_4d

    throw p0
.end method

.method public final on(Landroid/os/vibrator/PrebakedSegment;JJ)J
    .registers 19

    const-string/jumbo v0, "VibratorController#on (Prebaked)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_39

    :try_start_c
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

    if-lez p1, :cond_32

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_32

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_37

    :cond_32
    :goto_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_2f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v4

    :goto_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2f

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on([Landroid/os/vibrator/PrimitiveSegment;JJ)J
    .registers 18

    const-string/jumbo v0, "VibratorController#on (Primitive)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3e

    const-wide/16 v3, 0x0

    if-nez v0, :cond_19

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3e

    :try_start_1c
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-lez p3, :cond_37

    const/high16 p3, -0x40800000  # -1.0f

    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p3, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_37

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_3c

    :cond_37
    :goto_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_34

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_34

    :try_start_3d
    throw p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on([Landroid/os/vibrator/PwlePoint;JJ)J
    .registers 18

    const-string/jumbo v0, "VibratorController#on (PWLE v2)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3e

    const-wide/16 v3, 0x0

    if-nez v0, :cond_19

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3e

    :try_start_1c
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-lez p3, :cond_37

    const/high16 p3, -0x40800000  # -1.0f

    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p3, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_37

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_3c

    :cond_37
    :goto_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_34

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_34

    :try_start_3d
    throw p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final on([Landroid/os/vibrator/RampSegment;JJ)J
    .registers 19

    const-string/jumbo v0, "VibratorController#on (PWLE)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_44

    const-wide/16 v3, 0x0

    if-nez v0, :cond_19

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_44

    :try_start_1c
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

    if-lez p1, :cond_3d

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_3d

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_42

    :cond_3d
    :goto_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_3a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v6

    :goto_42
    :try_start_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3a

    :try_start_43
    throw p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final performPrebakedHapticPattern(JJZ)V
    .registers 14

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJZ)V

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_12

    throw p0
.end method

.method public final reloadVibratorInfoIfNeeded()V
    .registers 8

    const-string v0, "Failed retry of HAL getInfo for vibrator "

    const-string/jumbo v1, "VibratorController#reloadVibratorInfoIfNeeded"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_57

    if-eqz v1, :cond_13

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_57

    :try_start_16
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v4, :cond_21

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_55

    :cond_21
    :try_start_21
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

    if-nez p0, :cond_50

    const-string/jumbo p0, "VibratorController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_1f

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_55
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_1f

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setAmplitude(F)V
    .registers 8

    const-string/jumbo v0, "VibratorController#setAmplitude"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2d

    :try_start_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_2b

    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v4, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-ne v3, v4, :cond_26

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_1c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1c

    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setExternalControl(Z)V
    .registers 7

    if-eqz p1, :cond_6

    const-string/jumbo v0, "VibratorController#enableExternalControl"

    goto :goto_9

    :cond_6
    const-string/jumbo v0, "VibratorController#disableExternalControl"

    :goto_9
    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_f
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_22

    if-nez v0, :cond_1d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1d
    if-eqz p1, :cond_24

    :try_start_1f
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

    goto :goto_26

    :catchall_22
    move-exception p0

    goto :goto_39

    :cond_24
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    :goto_26
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_22

    :try_start_29
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_36

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_22

    :goto_39
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setIntensity(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

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
    .registers 14

    const-string/jumbo v0, "VibratorController#updateAlwaysOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3d

    if-nez v0, :cond_17

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3d

    if-nez p2, :cond_26

    :try_start_1c
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_36

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_3b

    :cond_26
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v5, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    int-to-long v9, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_23

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_23

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v1, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eq p1, v1, :cond_e

    move v2, v3

    :cond_e
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-eq v0, v2, :cond_1c

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void
.end method
