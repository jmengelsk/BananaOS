.class public final Lcom/android/server/vibrator/RampToStepAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# instance fields
.field public final mStepDuration:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    return-void
.end method

.method public static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .locals 2

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 17

    move-object/from16 v0, p1

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    :cond_0
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move/from16 v2, p3

    :goto_0
    if-ge v5, v4, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v7, v6, Landroid/os/vibrator/RampSegment;

    const/4 v8, 0x1

    if-nez v7, :cond_1

    move-object/from16 v11, p0

    move/from16 p3, v8

    goto/16 :goto_3

    :cond_1
    check-cast v6, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v7

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v8, [Landroid/os/vibrator/StepSegment;

    new-instance v9, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v10

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v11

    invoke-static {v0, v11}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v11

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-direct {v9, v10, v11, v6}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    aput-object v9, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v11, p0

    move/from16 v16, v4

    move/from16 p3, v8

    goto/16 :goto_2

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v9

    move-object/from16 v11, p0

    iget v12, v11, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    int-to-long v13, v12

    add-long/2addr v9, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v9, v13

    long-to-int v9, v9

    div-int/2addr v9, v12

    move v10, v3

    :goto_1
    add-int/lit8 v13, v9, -0x1

    if-ge v10, v13, :cond_3

    int-to-float v13, v10

    int-to-float v14, v9

    div-float/2addr v13, v14

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v14

    invoke-static {v0, v14}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v14

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v15

    invoke-static {v0, v15}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v15

    new-instance v3, Landroid/os/vibrator/StepSegment;

    move/from16 p3, v8

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v8

    move/from16 v16, v4

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v4

    invoke-static {v8, v4, v13}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-static {v14, v15, v13}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v8

    invoke-direct {v3, v4, v8, v12}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p3

    move/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move/from16 v16, v4

    move/from16 p3, v8

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/2addr v12, v13

    sub-int/2addr v3, v12

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    new-instance v8, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    invoke-direct {v8, v6, v4, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v7

    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v5, :cond_4

    add-int/2addr v2, v3

    :cond_4
    add-int/2addr v5, v3

    add-int v4, v16, v3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    return v2
.end method
