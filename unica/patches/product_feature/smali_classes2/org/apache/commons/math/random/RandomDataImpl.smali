.class public Lorg/apache/commons/math/random/RandomDataImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private rand:Lorg/apache/commons/math/random/RandomGenerator;

.field private secRand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->secRand:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public final nextInversionDeviate(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;)D
    .locals 43

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/math/random/JDKRandomGenerator;

    invoke-direct {v1}, Lorg/apache/commons/math/random/JDKRandomGenerator;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    :goto_0
    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/math/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v5

    add-double/2addr v1, v3

    move-object/from16 v7, p1

    check-cast v7, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpl-double v0, v1, v3

    if-nez v0, :cond_2

    return-wide v3

    :cond_2
    cmpl-double v0, v1, v5

    if-nez v0, :cond_3

    return-wide v5

    :cond_3
    cmpg-double v8, v1, v3

    if-ltz v8, :cond_1c

    if-gtz v0, :cond_1c

    new-instance v8, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;

    invoke-direct {v8, v7, v1, v2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;-><init>(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;D)V

    :try_start_0
    invoke-static {v8, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->bracket(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;D)[D

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/math/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    aget-wide v9, v0, v1

    const/4 v2, 0x1

    aget-wide v11, v0, v2

    invoke-virtual {v7}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->getSolverAbsoluteAccuracy()D

    move-result-wide v13

    cmpl-double v0, v9, v11

    if-gez v0, :cond_19

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v15

    invoke-virtual {v8, v11, v12}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v17

    mul-double v19, v15, v17

    cmpl-double v0, v19, v3

    const-wide v21, 0x3cd203af9ee75616L    # 1.0E-15

    if-lez v0, :cond_6

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v21

    if-gtz v0, :cond_4

    goto/16 :goto_d

    :cond_4
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v21

    if-gtz v0, :cond_5

    goto/16 :goto_e

    :cond_5
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SAME_SIGN_AT_ENDPOINTS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6
    cmpg-double v0, v19, v3

    if-gez v0, :cond_17

    sub-double v19, v11, v9

    move v0, v1

    move-wide/from16 v23, v17

    move-wide/from16 v25, v19

    move-wide/from16 v27, v25

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    move-wide v15, v11

    move-wide v11, v9

    :goto_1
    const/16 v7, 0x64

    if-ge v0, v7, :cond_16

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v29

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v31

    cmpg-double v7, v29, v31

    if-gez v7, :cond_7

    move-wide v11, v9

    move-wide v9, v15

    move-wide/from16 v19, v17

    move-wide/from16 v17, v23

    goto :goto_2

    :cond_7
    move-wide/from16 v41, v15

    move-wide v15, v11

    move-wide/from16 v11, v41

    move-wide/from16 v41, v23

    move-wide/from16 v23, v19

    move-wide/from16 v19, v41

    :goto_2
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v29

    cmpg-double v7, v29, v21

    if-gtz v7, :cond_8

    goto :goto_3

    :cond_8
    sub-double v29, v9, v11

    invoke-static {v11, v12}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v31

    const-wide v33, 0x3d06849b86a12b9bL    # 1.0E-14

    mul-double v1, v31, v33

    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v31

    cmpg-double v7, v31, v1

    if-gtz v7, :cond_9

    :goto_3
    return-wide v11

    :cond_9
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v31

    cmpg-double v7, v31, v1

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    if-ltz v7, :cond_a

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v33

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v35

    cmpg-double v7, v33, v35

    if-gtz v7, :cond_b

    :cond_a
    move-wide/from16 v23, v3

    goto :goto_7

    :cond_b
    div-double v33, v19, v23

    cmpl-double v7, v15, v9

    if-nez v7, :cond_c

    mul-double v15, v29, v33

    sub-double v23, v5, v33

    :goto_4
    move-wide/from16 v5, v23

    move-wide/from16 v23, v3

    move-wide v3, v5

    move-wide v5, v15

    goto :goto_5

    :cond_c
    div-double v23, v23, v17

    div-double v35, v19, v17

    mul-double v37, v29, v23

    sub-double v39, v23, v35

    mul-double v39, v39, v37

    sub-double v15, v11, v15

    sub-double v35, v35, v5

    mul-double v15, v15, v35

    sub-double v39, v39, v15

    mul-double v15, v39, v33

    sub-double v23, v23, v5

    mul-double v23, v23, v35

    sub-double v33, v33, v5

    mul-double v23, v23, v33

    goto :goto_4

    :goto_5
    cmpl-double v7, v5, v23

    if-lez v7, :cond_d

    neg-double v3, v3

    goto :goto_6

    :cond_d
    neg-double v5, v5

    :goto_6
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v15, v5

    const-wide/high16 v35, 0x3ff8000000000000L    # 1.5

    mul-double v35, v35, v29

    mul-double v35, v35, v3

    mul-double v37, v1, v3

    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v37

    sub-double v35, v35, v37

    cmpl-double v7, v15, v35

    if-gez v7, :cond_f

    mul-double v25, v25, v31

    mul-double v25, v25, v3

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpl-double v7, v5, v15

    if-ltz v7, :cond_e

    goto :goto_7

    :cond_e
    div-double/2addr v5, v3

    goto :goto_8

    :cond_f
    :goto_7
    mul-double v27, v29, v31

    move-wide/from16 v5, v27

    :goto_8
    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, v1

    if-lez v3, :cond_10

    add-double v1, v11, v5

    goto :goto_9

    :cond_10
    cmpl-double v3, v29, v23

    if-lez v3, :cond_11

    mul-double v1, v1, v31

    add-double/2addr v1, v11

    goto :goto_9

    :cond_11
    cmpg-double v3, v29, v23

    if-gtz v3, :cond_12

    mul-double v1, v1, v31

    sub-double v1, v11, v1

    goto :goto_9

    :cond_12
    move-wide v1, v11

    :goto_9
    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v3

    cmpl-double v7, v3, v23

    if-lez v7, :cond_13

    const/4 v7, 0x1

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    :goto_a
    cmpl-double v15, v17, v23

    if-lez v15, :cond_14

    const/4 v15, 0x1

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    if-ne v7, v15, :cond_15

    sub-double v5, v1, v11

    move-wide/from16 v25, v5

    move-wide/from16 v27, v25

    move-wide v9, v11

    move-wide/from16 v17, v19

    goto :goto_c

    :cond_15
    move-wide/from16 v25, v27

    move-wide/from16 v27, v5

    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v23

    move-wide/from16 v23, v3

    move-wide v3, v5

    move-wide v15, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    :cond_16
    new-instance v0, Lorg/apache/commons/math/MaxIterationsExceededException;

    invoke-direct {v0}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>()V

    throw v0

    :cond_17
    move-wide/from16 v23, v3

    cmpl-double v0, v15, v23

    if-nez v0, :cond_18

    :goto_d
    return-wide v9

    :cond_18
    :goto_e
    return-wide v11

    :cond_19
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    move-wide/from16 v23, v3

    move-wide/from16 v1, v23

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-virtual {v7}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->getSolverAbsoluteAccuracy()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1a

    const-wide/16 v3, 0x0

    goto :goto_f

    :cond_1a
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-virtual {v7}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->getSolverAbsoluteAccuracy()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1b

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_f
    return-wide v3

    :cond_1b
    new-instance v1, Lorg/apache/commons/math/MathException;

    invoke-direct {v1, v0}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/ConvergenceException;)V

    throw v1

    :cond_1c
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final reSeed(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math/random/JDKRandomGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math/random/RandomDataImpl;->rand:Lorg/apache/commons/math/random/RandomGenerator;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math/random/RandomGenerator;->setSeed(J)V

    return-void
.end method
