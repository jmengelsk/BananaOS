.class public abstract Lorg/apache/commons/math/special/Beta;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static regularizedBeta(DDD)D
    .registers 47

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    if-nez v1, :cond_1a1

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1a1

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-wide/16 v4, 0x0

    cmpg-double v1, p0, v4

    if-ltz v1, :cond_1a1

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    cmpl-double v1, p0, v6

    if-gtz v1, :cond_1a1

    cmpg-double v1, p2, v4

    if-lez v1, :cond_1a1

    cmpg-double v8, p4, v4

    if-gtz v8, :cond_2a

    goto/16 :goto_1a1

    :cond_2a
    add-double v9, p2, v6

    add-double v11, p2, p4

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    add-double v15, v11, v13

    div-double/2addr v9, v15

    cmpl-double v9, p0, v9

    if-lez v9, :cond_43

    sub-double v15, v6, p0

    move-wide/from16 v19, p2

    move-wide/from16 v17, p4

    invoke-static/range {v15 .. v20}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v0

    sub-double/2addr v6, v0

    return-wide v6

    :cond_43
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v9

    mul-double v9, v9, p2

    sub-double v15, v6, p0

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v15

    mul-double v15, v15, p4

    add-double/2addr v15, v9

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v9

    sub-double/2addr v15, v9

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_77

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_77

    if-lez v1, :cond_77

    if-gtz v8, :cond_68

    goto :goto_77

    :cond_68
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    move-result-wide v1

    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    move-result-wide v8

    add-double/2addr v8, v1

    invoke-static {v11, v12}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    move-result-wide v1

    sub-double v2, v8, v1

    :cond_77
    :goto_77
    sub-double/2addr v15, v2

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    move-result-wide v1

    mul-double/2addr v1, v6

    const-wide v8, 0x7fefffffffffffffL  # Double.MAX_VALUE

    move-wide/from16 v23, v4

    move-wide v15, v6

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    const/4 v10, 0x0

    const/16 v25, 0x1

    :goto_8e
    const v0, 0x7fffffff

    if-ge v10, v0, :cond_18d

    const-wide v26, 0x3d06849b86a12b9bL  # 1.0E-14

    cmpl-double v8, v8, v26

    if-lez v8, :cond_18d

    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_ba

    int-to-double v8, v10

    div-double/2addr v8, v13

    sub-double v26, p4, v8

    mul-double v26, v26, v8

    mul-double v26, v26, p0

    mul-double/2addr v8, v13

    add-double v8, v8, p2

    sub-double v28, v8, v6

    mul-double v28, v28, v8

    div-double v26, v26, v28

    move-wide/from16 v39, v26

    move-wide/from16 v26, v4

    move-wide/from16 v3, v39

    goto :goto_d1

    :cond_ba
    int-to-double v8, v10

    sub-double/2addr v8, v6

    div-double/2addr v8, v13

    add-double v26, p2, v8

    add-double v28, v11, v8

    mul-double v28, v28, v26

    move-wide/from16 v26, v4

    mul-double v3, v28, p0

    neg-double v3, v3

    mul-double/2addr v8, v13

    add-double v8, v8, p2

    add-double v28, v8, v6

    mul-double v28, v28, v8

    div-double v3, v3, v28

    :goto_d1
    mul-double v8, v6, v17

    mul-double v28, v3, v19

    add-double v28, v28, v8

    mul-double v8, v6, v21

    mul-double v30, v3, v23

    add-double v30, v30, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_ed

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_ea

    goto :goto_ed

    :cond_ea
    const/16 v34, 0x0

    goto :goto_13f

    :cond_ed
    :goto_ed
    invoke-static {v6, v7, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v8

    cmpg-double v0, v8, v26

    if-lez v0, :cond_17d

    move-wide/from16 v32, v6

    move/from16 v34, v25

    const/4 v0, 0x0

    :goto_fa
    const/4 v5, 0x5

    if-ge v0, v5, :cond_13f

    mul-double v35, v32, v8

    cmpl-double v5, v6, v3

    if-lez v5, :cond_114

    div-double v28, v17, v32

    div-double v30, v3, v35

    mul-double v37, v30, v19

    add-double v37, v37, v28

    div-double v28, v21, v32

    mul-double v30, v30, v23

    :goto_10f
    add-double v30, v30, v28

    move-wide/from16 v28, v37

    goto :goto_125

    :cond_114
    cmpl-double v5, v3, v26

    if-eqz v5, :cond_125

    div-double v28, v6, v35

    mul-double v30, v28, v17

    div-double v37, v19, v32

    add-double v37, v37, v30

    mul-double v28, v28, v21

    div-double v30, v23, v32

    goto :goto_10f

    :cond_125
    :goto_125
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_135

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_132

    goto :goto_135

    :cond_132
    const/16 v34, 0x0

    goto :goto_137

    :cond_135
    :goto_135
    move/from16 v34, v25

    :goto_137
    if-nez v34, :cond_13a

    goto :goto_13f

    :cond_13a
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v32, v35

    goto :goto_fa

    :cond_13f
    :goto_13f
    if-nez v34, :cond_16d

    div-double v3, v28, v30

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_15d

    div-double v8, v3, v15

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v8

    move-wide v15, v3

    move-wide/from16 v19, v17

    move-wide/from16 v23, v21

    move-wide/from16 v4, v26

    move-wide/from16 v17, v28

    move-wide/from16 v21, v30

    goto/16 :goto_8e

    :cond_15d
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    throw v0

    :cond_16d
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    throw v0

    :cond_17d
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    throw v0

    :cond_18d
    if-ge v10, v0, :cond_191

    div-double/2addr v1, v15

    return-wide v1

    :cond_191
    new-instance v0, Lorg/apache/commons/math/MaxIterationsExceededException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>([Ljava/lang/Object;)V

    throw v0

    :cond_1a1
    :goto_1a1
    return-wide v2
.end method
