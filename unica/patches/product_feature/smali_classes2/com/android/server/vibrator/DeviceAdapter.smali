.class public final Lcom/android/server/vibrator/DeviceAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/CombinedVibration$VibratorAdapter;


# instance fields
.field public final mAvailableVibratorIds:[I

.field public final mAvailableVibrators:Landroid/util/SparseArray;

.field public final mSegmentAdapters:Ljava/util/List;

.field public final mSegmentsValidators:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/vibrator/PrimitiveDelayAdapter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/vibrator/RampToStepAdapter;

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/RampToStepAdapter;-><init>(I)V

    new-instance v2, Lcom/android/server/vibrator/StepToRampAdapter;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/vibrator/RampDownAdapter;

    iget-object v4, p1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v4}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result v4

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/android/server/vibrator/RampDownAdapter;-><init>(II)V

    new-instance v4, Lcom/android/server/vibrator/SplitSegmentsAdapter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    new-instance v7, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    move v7, p1

    :goto_48
    sget-object v8, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    array-length v9, v8

    if-ge v7, v9, :cond_6c

    aget-object v9, v8, v7

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sget-object v10, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    aput v9, v10, v7

    aget-object v8, v8, v7

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget-object v9, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_6c
    new-instance v7, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    new-instance v0, Lcom/android/server/vibrator/PwleSegmentsValidator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/vibrator/PrimitiveSegmentsValidator;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    :goto_95
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_a6

    iget-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_95

    :cond_a6
    return-void
.end method


# virtual methods
.method public final adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 8

    instance-of v0, p2, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_5b

    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    if-nez p1, :cond_12

    return-object p2

    :cond_12
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_3a

    iget-object v4, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    invoke-interface {v4, p1, p2, v0}, Lcom/android/server/vibrator/VibrationSegmentsAdapter;->adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_55

    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationSegmentsValidator;

    invoke-interface {v1, p1, p2}, Lcom/android/server/vibrator/VibrationSegmentsValidator;->hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_52

    const/4 p0, 0x0

    return-object p0

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_55
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p0

    :cond_5b
    return-object p2
.end method

.method public final getAvailableVibratorIds()[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    return-object p0
.end method
