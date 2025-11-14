.class public Lcom/android/server/vibrator/VibratorController$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    return-void
.end method

.method private static native alwaysOnDisable(JJ)V
.end method

.method private static native alwaysOnEnable(JJJJ)V
.end method

.method private static native getAmplitudeList(JI)[I
.end method

.method private static native getInfo(JLandroid/os/VibratorInfo$Builder;)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native getNumberOfPrebakedHapticPattern(J)I
.end method

.method private static native hasFeature(JLjava/lang/String;)Z
.end method

.method private static native isAvailable(J)Z
.end method

.method private static native nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J
.end method

.method private static native off(J)V
.end method

.method private static native on(JJJJ)J
.end method

.method private static native performCommonInputff(J[IZI)V
.end method

.method private static native performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;JJ)J
.end method

.method private static native performEffect(JJJJJ)J
.end method

.method private static native performHapticEngine(J[II)V
.end method

.method private static native performPrebakedHapticPattern(JJJZ)V
.end method

.method private static native performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJJ)J
.end method

.method private static native performPwleV2Effect(J[Landroid/os/vibrator/PwlePoint;JJ)J
.end method

.method private static native performVendorEffect(JLandroid/os/Parcel;JFFJJ)J
.end method

.method private static native sehPerformEffect(JJJLcom/android/server/vibrator/Vibration;Z)J
.end method

.method private static native setAmplitude(JF)V
.end method

.method private static native setExternalControl(JZ)V
.end method

.method private static native setFoldState(JZ)V
.end method

.method private static native setForceTouchAmplitude(JJ)V
.end method

.method private static native setFrequencyType(JJ)V
.end method

.method private static native setIntensity(JJ)V
.end method

.method private static native setTentState(JZ)V
.end method

.method private static native supportIntensityControl(J)Z
.end method

.method private static native supportsEnhancedSamsungHapticPattern(J)Z
.end method

.method private static native supportsFoldState(J)Z
.end method

.method private static native supportsFrequencyControl(J)Z
.end method

.method private static native supportsHapticEngine(J)Z
.end method

.method private static native supportsHasFeature(J)Z
.end method

.method private static native supportsPrebakedHapticPattern(J)Z
.end method

.method private static native supportsTentState(J)Z
.end method


# virtual methods
.method public final alwaysOnDisable(J)V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(JJ)V

    return-void
.end method

.method public final alwaysOnEnable(JJJ)V
    .registers 15

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJJ)V

    return-void
.end method

.method public final compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J
    .registers 13

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final composePwle([Landroid/os/vibrator/RampSegment;IJJ)J
    .registers 15

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J
    .registers 13

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleV2Effect(J[Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getAmplitudeList(I)[I
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(JI)[I

    move-result-object p0

    return-object p0
.end method

.method public final getInfo(Landroid/os/VibratorInfo$Builder;)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(JLandroid/os/VibratorInfo$Builder;)Z

    move-result p0

    return p0
.end method

.method public final getNumberOfPrebakedHapticPattern()I
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNumberOfPrebakedHapticPattern(J)I

    move-result p0

    return p0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNativeFinalizer()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1f

    const-class v0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public final isAvailable()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable(J)Z

    move-result p0

    return p0
.end method

.method public final off()V
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off(J)V

    return-void
.end method

.method public final on(JJJ)J
    .registers 15

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final perform(JJJJ)J
    .registers 19

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performEffect(JJJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final performCommonInputff([IZI)V
    .registers 6

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performCommonInputff(J[IZI)V

    return-void
.end method

.method public final performHapticEngine([II)V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine(J[II)V

    return-void
.end method

.method public final performPrebakedHapticPattern(JJZ)V
    .registers 13

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJJZ)V

    return-void
.end method

.method public final performVendorEffect(Landroid/os/Parcel;JFFJJ)J
    .registers 21

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performVendorEffect(JLandroid/os/Parcel;JFFJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final sehPerformEffect(JJLcom/android/server/vibrator/Vibration;Z)J
    .registers 15

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->sehPerformEffect(JJJLcom/android/server/vibrator/Vibration;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setAmplitude(F)V
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(JF)V

    return-void
.end method

.method public final setExternalControl(Z)V
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(JZ)V

    return-void
.end method

.method public final setFoldState(Z)V
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFoldState(JZ)V

    return-void
.end method

.method public final setForceTouchAmplitude(J)V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setForceTouchAmplitude(JJ)V

    return-void
.end method

.method public final setFrequencyType(J)V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(JJ)V

    return-void
.end method

.method public final setIntensity(J)V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(JJ)V

    return-void
.end method

.method public final setTentState(Z)V
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setTentState(JZ)V

    return-void
.end method

.method public final supportIntensityControl()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl(J)Z

    move-result p0

    return p0
.end method

.method public final supportsEnhancedSamsungHapticPattern()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern(J)Z

    move-result p0

    return p0
.end method

.method public final supportsFoldState()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState(J)Z

    move-result p0

    return p0
.end method

.method public final supportsFrequencyControl()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl(J)Z

    move-result p0

    return p0
.end method

.method public final supportsHapticEngine()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine(J)Z

    move-result p0

    return p0
.end method

.method public final supportsHasFeature()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHasFeature(J)Z

    move-result p0

    return p0
.end method

.method public final supportsPrebakedHapticPattern()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern(J)Z

    move-result p0

    return p0
.end method

.method public final supportsTentState()Z
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsTentState(J)Z

    move-result p0

    return p0
.end method
