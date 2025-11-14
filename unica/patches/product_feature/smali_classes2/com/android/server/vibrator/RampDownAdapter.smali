.class public final Lcom/android/server/vibrator/RampDownAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# instance fields
.field public final mRampDownDuration:I

.field public final mStepDuration:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    iput p2, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    return-void
.end method

.method public static endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 5

    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    check-cast p0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_12

    return v1

    :cond_12
    return v3

    :cond_13
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_22

    check-cast p0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_22

    return v1

    :cond_22
    return v3
.end method

.method public static isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 5

    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    check-cast p0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    cmpl-float p0, p0, v3

    if-nez p0, :cond_12

    return v1

    :cond_12
    return v2

    :cond_13
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_2a

    check-cast p0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    cmpl-float p0, p0, v3

    if-nez p0, :cond_2a

    return v1

    :cond_2a
    return v2
.end method

.method public static updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 9

    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_1d

    check-cast p0, Landroid/os/vibrator/RampSegment;

    new-instance v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    long-to-int v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v0

    :cond_1d
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_32

    check-cast p0, Landroid/os/vibrator/StepSegment;

    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result p0

    long-to-int p1, p1

    invoke-direct {v0, v1, p0, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0

    :cond_32
    return-object p0
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    if-gtz v1, :cond_7

    return p3

    :cond_7
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    move/from16 v3, p3

    :goto_14
    if-ge v6, v5, :cond_d7

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v8}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-static {v7}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v8

    if-nez v8, :cond_36

    :cond_30
    move/from16 p1, v4

    move/from16 p2, v5

    goto/16 :goto_cf

    :cond_36
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v8

    instance-of v10, v7, Landroid/os/vibrator/StepSegment;

    if-eqz v10, :cond_57

    check-cast v7, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v10

    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v7

    invoke-virtual {v0, v10, v7, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v7

    :goto_52
    move/from16 p1, v4

    move/from16 p2, v5

    goto :goto_a9

    :cond_57
    instance-of v10, v7, Landroid/os/vibrator/RampSegment;

    if-eqz v10, :cond_a4

    check-cast v7, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v11

    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v13

    int-to-long v14, v1

    cmp-long v7, v8, v14

    const/16 v16, 0x0

    if-gtz v7, :cond_7d

    new-array v7, v4, [Landroid/os/vibrator/VibrationEffectSegment;

    new-instance v10, Landroid/os/vibrator/RampSegment;

    const/4 v12, 0x0

    long-to-int v15, v8

    move v14, v13

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    aput-object v10, v7, v16

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_52

    :cond_7d
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/os/vibrator/VibrationEffectSegment;

    new-instance v10, Landroid/os/vibrator/RampSegment;

    const/4 v12, 0x0

    move/from16 p1, v4

    move/from16 p2, v5

    move-wide v4, v14

    long-to-int v15, v4

    move v14, v13

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    aput-object v10, v7, v16

    sub-long/2addr v8, v4

    new-instance v12, Landroid/os/vibrator/RampSegment;

    const/4 v14, 0x0

    long-to-int v4, v8

    move v15, v13

    const/4 v13, 0x0

    move/from16 v16, v15

    move/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    aput-object v12, v7, p1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_a9

    :cond_a4
    move/from16 p1, v4

    move/from16 p2, v5

    const/4 v7, 0x0

    :goto_a9
    if-eqz v7, :cond_cf

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-lt v3, v6, :cond_ca

    if-ne v3, v6, :cond_c6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, p2, 0x1

    goto :goto_c8

    :cond_c6
    move/from16 v5, p2

    :goto_c8
    add-int/2addr v3, v4

    goto :goto_cc

    :cond_ca
    move/from16 v5, p2

    :goto_cc
    add-int/2addr v6, v4

    add-int/2addr v5, v4

    goto :goto_d1

    :cond_cf
    :goto_cf
    move/from16 v5, p2

    :goto_d1
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, p1

    goto/16 :goto_14

    :cond_d7
    move/from16 p1, v4

    if-gez v3, :cond_dd

    goto/16 :goto_15a

    :cond_dd
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v5}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v5

    if-eqz v5, :cond_15a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v5}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v5

    if-nez v5, :cond_fc

    goto :goto_15a

    :cond_fc
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v5}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v6

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_121

    sub-long v10, v6, v8

    invoke-static {v5, v10, v11}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_121
    add-int/lit8 v3, v3, 0x1

    instance-of v1, v4, Landroid/os/vibrator/StepSegment;

    if-eqz v1, :cond_13d

    check-cast v4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return v3

    :cond_13d
    instance-of v0, v4, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_15a

    check-cast v4, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v11

    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v13

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v10, Landroid/os/vibrator/RampSegment;

    const/4 v12, 0x0

    long-to-int v15, v0

    move v14, v13

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15a
    :goto_15a
    return v3
.end method

.method public final createStepsDown(FFJ)Ljava/util/List;
    .registers 12

    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget p0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    div-int/2addr v0, p0

    int-to-float v1, v0

    div-float v1, p1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :goto_15
    if-ge v4, v0, :cond_26

    new-instance v5, Landroid/os/vibrator/StepSegment;

    int-to-float v6, v4

    mul-float/2addr v6, v1

    sub-float v6, p1, v6

    invoke-direct {v5, v6, p2, p0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_26
    long-to-int p1, p3

    sub-int/2addr v0, v3

    mul-int/2addr v0, p0

    sub-int/2addr p1, v0

    new-instance p0, Landroid/os/vibrator/StepSegment;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
