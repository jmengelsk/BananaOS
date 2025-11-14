.class public final Lcom/ibm/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public transient eclipObliquity:D

.field public fGmtOffset:J

.field public fLatitude:D

.field public transient julianDay:D

.field public transient siderealT0:D

.field public transient sunLongitude:D

.field public time:J


# direct methods
.method public static final normalize(DD)D
    .locals 2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final getJulianDay()D
    .locals 4

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    const-wide v2, -0xbfc83e532200L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    return-wide v0
.end method

.method public final getSunRiseSet(Z)J
    .locals 41

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    iget-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long v7, v3, v5

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    mul-long/2addr v7, v9

    sub-long/2addr v7, v5

    const-wide/32 v11, 0x2932e00

    add-long/2addr v7, v11

    if-eqz p1, :cond_0

    const-wide/16 v11, -0x6

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x6

    :goto_0
    const-wide/32 v13, 0x36ee80

    mul-long/2addr v11, v13

    add-long/2addr v11, v7

    invoke-virtual {v0, v11, v12}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    iget-wide v7, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    const/4 v13, 0x0

    :goto_1
    iget-wide v14, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    const-wide/16 v16, 0x1

    cmpl-double v14, v14, v16

    const/4 v15, 0x1

    const/16 v18, 0x0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    if-nez v14, :cond_2

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v19

    const-wide v21, 0x4142ad09c0000000L    # 2447891.5

    sub-double v19, v19, v21

    const-wide v21, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    move-wide/from16 v23, v9

    mul-double v9, v19, v21

    invoke-static {v9, v10, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v9

    const-wide v19, 0x4013818b33ddeee0L    # 4.87650757829735

    add-double v9, v9, v19

    const-wide v19, 0x4013bdaf8cee89a2L    # 4.935239984568769

    sub-double v9, v9, v19

    invoke-static {v9, v10, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v9

    move-wide/from16 v21, v9

    :cond_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    const-wide v27, 0x3f911d3671ac14c6L    # 0.016713

    mul-double v25, v25, v27

    sub-double v25, v21, v25

    sub-double v25, v25, v9

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v29, v29, v27

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    sub-double v27, v27, v29

    div-double v27, v25, v27

    sub-double v21, v21, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    const-wide v27, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v14, v25, v27

    if-gtz v14, :cond_1

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v21, v21, v25

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->tan(D)D

    move-result-wide v21

    const-wide v27, 0x3ff08b3d7194c2c4L    # 1.033994144130859

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    mul-double v27, v27, v21

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->atan(D)D

    move-result-wide v21

    mul-double v21, v21, v25

    move-wide/from16 v25, v5

    add-double v5, v21, v19

    invoke-static {v5, v6, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v5

    const/4 v14, 0x2

    new-array v14, v14, [D

    aput-wide v5, v14, v18

    aput-wide v9, v14, v15

    aget-wide v5, v14, v18

    iput-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    goto :goto_2

    :cond_2
    move-wide/from16 v25, v5

    move-wide/from16 v23, v9

    :goto_2
    iget-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    iget-wide v9, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    cmpl-double v9, v9, v16

    const-wide v19, 0x40e1d5a000000000L    # 36525.0

    const-wide v21, 0x4142b42c80000000L    # 2451545.0

    if-nez v9, :cond_3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v9

    sub-double v9, v9, v21

    div-double v9, v9, v19

    const-wide v27, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    mul-double v27, v27, v9

    const-wide v29, 0x4037707570c564f9L    # 23.439292

    sub-double v29, v29, v27

    const-wide v27, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    mul-double v27, v27, v9

    mul-double v27, v27, v9

    sub-double v29, v29, v27

    const-wide v27, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    mul-double v27, v27, v9

    mul-double v27, v27, v9

    mul-double v27, v27, v9

    add-double v27, v27, v29

    const-wide v9, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v9, v9, v27

    iput-wide v9, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    :cond_3
    iget-wide v9, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/16 v31, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->tan(D)D

    move-result-wide v31

    mul-double v37, v29, v9

    mul-double v31, v31, v27

    move-wide/from16 v39, v1

    sub-double v1, v37, v31

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    mul-double v33, v33, v9

    mul-double v35, v35, v27

    mul-double v35, v35, v29

    add-double v35, v35, v33

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    neg-double v9, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v27

    mul-double v27, v27, v9

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    if-eqz p1, :cond_4

    sub-double v9, v39, v9

    :cond_4
    add-double/2addr v9, v1

    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    mul-double/2addr v9, v1

    div-double v9, v9, v39

    iget-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    cmpl-double v1, v1, v16

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v1

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    add-double v1, v1, v16

    sub-double v1, v1, v21

    div-double v1, v1, v19

    const-wide v16, 0x40a2c01a48b65237L    # 2400.051336

    mul-double v16, v16, v1

    const-wide v19, 0x401aca1c8e5eb098L    # 6.697374558

    add-double v16, v16, v19

    const-wide v19, 0x3efb1e471b7b0e47L    # 2.5862E-5

    mul-double v19, v19, v1

    mul-double v19, v19, v1

    add-double v1, v19, v16

    move-wide/from16 v16, v5

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    invoke-static {v1, v2, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v5

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    :goto_3
    iget-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    sub-double/2addr v9, v1

    const-wide v1, 0x3fefe9a1dd91bf50L    # 0.9972695663

    mul-double/2addr v9, v1

    invoke-static {v9, v10, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v1

    iget-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    add-long v9, v5, v25

    div-long v9, v9, v23

    mul-long v9, v9, v23

    sub-long v9, v9, v25

    const-wide v19, 0x414b774000000000L    # 3600000.0

    mul-double v1, v1, v19

    double-to-long v1, v1

    add-long/2addr v9, v1

    sub-long v1, v9, v5

    invoke-virtual {v0, v9, v10}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    add-int/2addr v13, v15

    const/4 v5, 0x5

    if-ge v13, v5, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x1388

    cmp-long v1, v1, v5

    if-gtz v1, :cond_6

    goto :goto_4

    :cond_6
    move-wide/from16 v9, v23

    move-wide/from16 v5, v25

    goto/16 :goto_1

    :cond_7
    :goto_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    const-wide v7, 0x3f8dc7ef4cc6ee9aL    # 0.014541501551199421

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x406e000000000000L    # 240.0

    mul-double/2addr v5, v7

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v5, v7

    div-double/2addr v5, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v1

    double-to-long v1, v5

    iget-wide v5, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    if-eqz p1, :cond_8

    neg-long v1, v1

    :cond_8
    add-long/2addr v5, v1

    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    return-wide v5
.end method

.method public final setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    return-void
.end method
