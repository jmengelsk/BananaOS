.class public abstract Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static bracket(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;D)[D
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v5, p1, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ltz v5, :cond_7

    cmpl-double v5, p1, v6

    if-gtz v5, :cond_7

    move-wide/from16 v8, p1

    move-wide v10, v8

    move v5, v2

    :goto_0
    sub-double/2addr v8, v6

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v8

    add-double/2addr v10, v6

    cmpl-double v12, v10, v6

    if-lez v12, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v13, v10, v6

    if-gez v13, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v12, :cond_2

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2

    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v12

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-wide v10, v6

    :goto_2
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v12

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    move-result-wide v14

    add-int/2addr v5, v1

    mul-double v16, v12, v14

    cmpl-double v16, v16, v3

    move/from16 v17, v1

    const v1, 0x7fffffff

    if-lez v16, :cond_5

    if-ge v5, v1, :cond_5

    cmpl-double v18, v8, v3

    if-gtz v18, :cond_4

    cmpg-double v18, v10, v6

    if-ltz v18, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v1, v17

    goto :goto_0

    :cond_5
    :goto_3
    if-gtz v16, :cond_6

    const/4 v0, 0x2

    new-array v0, v0, [D

    aput-wide v8, v0, v2

    aput-wide v10, v0, v17

    return-object v0

    :cond_6
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    filled-new-array/range {v16 .. v24}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_BRACKETING_PARAMETERS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
