.class public final Lcom/android/server/vibrator/SplitSegmentsAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 25

    const-wide/16 v0, 0x400

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    return p3

    :cond_1
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move/from16 v3, p3

    :goto_1
    if-ge v5, v4, :cond_a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/os/vibrator/RampSegment;

    const/4 v7, 0x1

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v8, v0

    sub-int/2addr v8, v7

    div-int/2addr v8, v0

    if-gt v8, v7, :cond_3

    :goto_2
    move/from16 p0, v7

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v10

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    cmpl-float v11, v10, v12

    if-nez v11, :cond_5

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v10

    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v11

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_4

    :cond_6
    cmpl-float v12, v11, v12

    if-nez v12, :cond_7

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v11

    :cond_7
    :goto_4
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v12

    int-to-long v14, v8

    div-long/2addr v12, v14

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v14

    const-wide/16 v15, 0x0

    move/from16 v20, v10

    move/from16 v18, v14

    move v14, v7

    :goto_5
    if-ge v14, v8, :cond_8

    move/from16 p0, v7

    move/from16 p2, v8

    add-long v7, v15, v12

    long-to-float v15, v7

    move-object/from16 p3, v6

    move-wide/from16 v23, v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v15, v6

    invoke-static {v10, v11, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v7

    invoke-static {v6, v7, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v19

    new-instance v17, Landroid/os/vibrator/RampSegment;

    long-to-int v6, v12

    move/from16 v22, v6

    invoke-direct/range {v17 .. v22}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    move-object/from16 v6, v17

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v18

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v20

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v6, p3

    move-wide/from16 v15, v23

    goto :goto_5

    :cond_8
    move-object/from16 p3, v6

    move/from16 p0, v7

    move/from16 p2, v8

    new-instance v12, Landroid/os/vibrator/RampSegment;

    invoke-virtual/range {p3 .. p3}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v6

    sub-long/2addr v6, v15

    long-to-int v6, v6

    move/from16 v17, v6

    move/from16 v16, v11

    move/from16 v13, v18

    move/from16 v15, v20

    invoke-direct/range {v12 .. v17}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v8, p2, -0x1

    if-le v3, v5, :cond_9

    add-int/2addr v3, v8

    :cond_9
    add-int/2addr v5, v8

    add-int/2addr v4, v8

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    return v3
.end method
