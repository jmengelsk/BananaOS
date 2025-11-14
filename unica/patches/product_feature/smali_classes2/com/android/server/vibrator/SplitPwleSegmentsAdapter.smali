.class public final Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 28

    const-wide/16 v0, 0x1000

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectDurationMillis()I

    move-result v0

    if-gtz v0, :cond_12

    :goto_11
    return p3

    :cond_12
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    move/from16 v2, p3

    :goto_1f
    if-ge v4, v3, :cond_cd

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/os/vibrator/PwleSegment;

    const/4 v7, 0x1

    if-eqz v6, :cond_36

    check-cast v5, Landroid/os/vibrator/PwleSegment;

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v8

    long-to-int v6, v8

    add-int/2addr v6, v0

    sub-int/2addr v6, v7

    div-int/2addr v6, v0

    if-gt v6, v7, :cond_3a

    :cond_36
    move/from16 p0, v7

    goto/16 :goto_c9

    :cond_3a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v9

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v14

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v10

    int-to-long v12, v6

    div-long/2addr v10, v12

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v12

    const-wide/16 v15, 0x0

    move v13, v9

    move/from16 v18, v12

    move v12, v7

    :goto_5a
    if-ge v12, v6, :cond_a2

    move/from16 p0, v7

    move-object/from16 p1, v8

    add-long v7, v15, v10

    long-to-float v15, v7

    move-object/from16 p2, v5

    move/from16 p3, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v15, v5

    invoke-static {v9, v14, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v6

    invoke-static {v5, v6, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v19

    new-instance v17, Landroid/os/vibrator/PwleSegment;

    long-to-int v5, v10

    int-to-long v5, v5

    move-wide/from16 v22, v5

    move/from16 v20, v13

    invoke-direct/range {v17 .. v23}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    move-object/from16 v5, p1

    move-object/from16 v6, v17

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v18

    invoke-virtual {v6}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p3

    move-wide v15, v7

    move/from16 v7, p0

    move-object v8, v5

    move-object/from16 v5, p2

    goto :goto_5a

    :cond_a2
    move-object/from16 p2, v5

    move/from16 p3, v6

    move/from16 p0, v7

    move-object v5, v8

    new-instance v10, Landroid/os/vibrator/PwleSegment;

    invoke-virtual/range {p2 .. p2}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v6

    sub-long/2addr v6, v15

    long-to-int v6, v6

    int-to-long v6, v6

    move-wide v15, v6

    move/from16 v11, v18

    invoke-direct/range {v10 .. v16}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v6, p3, -0x1

    if-le v2, v4, :cond_c7

    add-int/2addr v2, v6

    :cond_c7
    add-int/2addr v4, v6

    add-int/2addr v3, v6

    :goto_c9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1f

    :cond_cd
    return v2
.end method
