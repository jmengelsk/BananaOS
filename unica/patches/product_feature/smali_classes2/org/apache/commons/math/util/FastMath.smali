.class public abstract Lorg/apache/commons/math/util/FastMath;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COSINE_TABLE_A:[D

.field public static final COSINE_TABLE_B:[D

.field public static final EXP_FRAC_TABLE_A:[D

.field public static final EXP_FRAC_TABLE_B:[D

.field public static final EXP_INT_TABLE_A:[D

.field public static final EXP_INT_TABLE_B:[D

.field public static final FACT:[D

.field public static final LN_MANT:[[D

.field public static final LN_QUICK_COEF:[[D

.field public static final LN_SPLIT_COEF:[[D

.field public static final SINE_TABLE_A:[D

.field public static final SINE_TABLE_B:[D

.field public static final TANGENT_TABLE_A:[D

.field public static final TANGENT_TABLE_B:[D


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const/16 v1, 0x5dc

    new-array v2, v1, [D

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    new-array v1, v1, [D

    sput-object v1, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    const/16 v1, 0x401

    new-array v2, v1, [D

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    new-array v2, v1, [D

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    const/16 v2, 0x14

    new-array v3, v2, [D

    sput-object v3, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    const/16 v4, 0x400

    new-array v5, v4, [[D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    const/4 v9, 0x2

    new-array v10, v9, [D

    fill-array-data v10, :array_0

    new-array v11, v9, [D

    fill-array-data v11, :array_1

    new-array v12, v9, [D

    fill-array-data v12, :array_2

    new-array v13, v9, [D

    fill-array-data v13, :array_3

    new-array v14, v9, [D

    fill-array-data v14, :array_4

    new-array v15, v9, [D

    fill-array-data v15, :array_5

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    new-array v5, v9, [D

    fill-array-data v5, :array_6

    new-array v6, v9, [D

    fill-array-data v6, :array_7

    const-wide/16 v28, 0x0

    new-array v7, v9, [D

    fill-array-data v7, :array_8

    new-array v8, v9, [D

    fill-array-data v8, :array_9

    new-array v4, v9, [D

    fill-array-data v4, :array_a

    new-array v1, v9, [D

    fill-array-data v1, :array_b

    new-array v0, v9, [D

    fill-array-data v0, :array_c

    new-array v2, v9, [D

    fill-array-data v2, :array_d

    move-object/from16 v22, v0

    new-array v0, v9, [D

    fill-array-data v0, :array_e

    move-object/from16 v24, v0

    new-array v0, v9, [D

    fill-array-data v0, :array_f

    move-object/from16 v25, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    filled-new-array/range {v10 .. v25}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    new-array v10, v9, [D

    fill-array-data v10, :array_10

    new-array v11, v9, [D

    fill-array-data v11, :array_11

    new-array v12, v9, [D

    fill-array-data v12, :array_12

    new-array v13, v9, [D

    fill-array-data v13, :array_13

    new-array v14, v9, [D

    fill-array-data v14, :array_14

    new-array v15, v9, [D

    fill-array-data v15, :array_15

    new-array v2, v9, [D

    fill-array-data v2, :array_16

    new-array v4, v9, [D

    fill-array-data v4, :array_17

    new-array v5, v9, [D

    fill-array-data v5, :array_18

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    filled-new-array/range {v10 .. v18}, [[D

    move-result-object v2

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    const/16 v2, 0xe

    new-array v4, v2, [D

    sput-object v4, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    new-array v4, v2, [D

    sput-object v4, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    new-array v4, v2, [D

    sput-object v4, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    new-array v4, v2, [D

    sput-object v4, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    new-array v4, v2, [D

    sput-object v4, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_A:[D

    new-array v4, v2, [D

    sput-object v4, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_B:[D

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    const/4 v3, 0x1

    move v5, v3

    :goto_0
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    const/16 v7, 0x14

    if-ge v5, v7, :cond_0

    add-int/lit8 v8, v5, -0x1

    aget-wide v10, v6, v8

    int-to-double v12, v5

    mul-double/2addr v10, v12

    aput-wide v10, v6, v5

    add-int/2addr v5, v3

    goto :goto_0

    :cond_0
    new-array v5, v9, [D

    new-array v6, v9, [D

    move v7, v4

    const/16 v8, 0x2ee

    :goto_1
    if-ge v7, v8, :cond_4

    new-array v8, v9, [D

    new-array v10, v9, [D

    new-array v11, v9, [D

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    aput-wide v12, v8, v4

    const-wide v12, 0x3ca4d57ee2b1013aL

    aput-wide v12, v8, v3

    invoke-static {v0, v1, v11}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    move v12, v7

    :goto_2
    if-lez v12, :cond_2

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_1

    invoke-static {v11, v8, v10}, Lorg/apache/commons/math/util/FastMath;->quadMult([D[D[D)V

    aget-wide v13, v10, v4

    aput-wide v13, v11, v4

    aget-wide v13, v10, v3

    aput-wide v13, v11, v3

    :cond_1
    invoke-static {v8, v8, v10}, Lorg/apache/commons/math/util/FastMath;->quadMult([D[D[D)V

    aget-wide v13, v10, v4

    aput-wide v13, v8, v4

    aget-wide v13, v10, v3

    aput-wide v13, v8, v3

    shr-int/2addr v12, v3

    goto :goto_2

    :cond_2
    aget-wide v12, v11, v4

    aput-wide v12, v5, v4

    aget-wide v10, v11, v3

    aput-wide v10, v5, v3

    invoke-static {v5}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    const/16 v10, 0x2ee

    add-int/lit16 v11, v7, 0x2ee

    aget-wide v12, v5, v4

    aput-wide v12, v8, v11

    sget-object v12, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    aget-wide v13, v5, v3

    aput-wide v13, v12, v11

    if-eqz v7, :cond_3

    invoke-static {v5, v6}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    rsub-int v11, v7, 0x2ee

    aget-wide v13, v6, v4

    aput-wide v13, v8, v11

    aget-wide v13, v6, v3

    aput-wide v13, v12, v11

    :cond_3
    add-int/2addr v7, v3

    move v8, v10

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_3
    const/16 v7, 0x13

    const/16 v8, 0x401

    if-ge v6, v8, :cond_6

    int-to-double v10, v6

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    new-array v12, v9, [D

    new-array v13, v9, [D

    new-array v14, v9, [D

    new-array v15, v9, [D

    invoke-static {v10, v11, v12}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aput-wide v28, v13, v3

    aput-wide v28, v13, v4

    :goto_4
    if-ltz v7, :cond_5

    invoke-static {v12, v13, v15}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v10, v15, v4

    aput-wide v10, v13, v4

    aget-wide v10, v15, v3

    aput-wide v10, v13, v3

    sget-object v10, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v15}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v15, v14}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    invoke-static {v13, v14, v15}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v10, v15, v4

    aput-wide v10, v13, v4

    aget-wide v10, v15, v3

    aput-wide v10, v13, v3

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_5
    aget-wide v10, v13, v4

    aput-wide v10, v5, v4

    aget-wide v12, v13, v3

    aput-wide v12, v5, v3

    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    aput-wide v10, v7, v6

    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    aget-wide v10, v5, v3

    aput-wide v10, v7, v6

    add-int/2addr v6, v3

    goto :goto_3

    :cond_6
    move v5, v4

    :goto_5
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    const/16 v8, 0x400

    if-ge v5, v8, :cond_8

    int-to-long v10, v5

    const/16 v12, 0x2a

    shl-long/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    new-array v12, v9, [D

    new-array v13, v9, [D

    new-array v14, v9, [D

    new-array v15, v9, [D

    invoke-static {v10, v11, v12}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aget-wide v10, v12, v4

    add-double/2addr v10, v0

    aput-wide v10, v12, v4

    invoke-static {v12}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    invoke-static {v12, v15}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    aget-wide v10, v12, v4

    sub-double v10, v10, v26

    aput-wide v10, v12, v4

    invoke-static {v12}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    invoke-static {v12, v15, v14}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v10, v14, v4

    aput-wide v10, v12, v4

    aget-wide v10, v14, v3

    aput-wide v10, v12, v3

    invoke-static {v12, v12, v13}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    sget-object v10, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    const/16 v11, 0xf

    aget-object v11, v10, v11

    aget-wide v16, v11, v4

    aput-wide v16, v14, v4

    aget-wide v16, v11, v3

    aput-wide v16, v14, v3

    move v11, v2

    :goto_6
    if-ltz v11, :cond_7

    invoke-static {v14, v13, v15}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v16, v15, v4

    aput-wide v16, v14, v4

    aget-wide v16, v15, v3

    aput-wide v16, v14, v3

    aget-object v0, v10, v11

    invoke-static {v14, v0, v15}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v0, v15, v4

    aput-wide v0, v14, v4

    aget-wide v0, v15, v3

    aput-wide v0, v14, v3

    add-int/lit8 v11, v11, -0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_7
    invoke-static {v14, v12, v15}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v0, v15, v4

    aput-wide v0, v14, v4

    aget-wide v0, v15, v3

    aput-wide v0, v14, v3

    aput-object v14, v6, v5

    add-int/2addr v5, v3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_8
    new-array v0, v9, [D

    move v1, v4

    :goto_7
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    sget-object v6, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    sget-object v8, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    sget-object v10, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    const/4 v11, 0x7

    if-ge v1, v11, :cond_f

    int-to-double v11, v1

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double/2addr v11, v13

    new-array v13, v9, [D

    new-array v14, v9, [D

    new-array v15, v9, [D

    move/from16 v16, v3

    new-array v3, v9, [D

    invoke-static {v11, v12, v13}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aput-wide v28, v14, v16

    aput-wide v28, v14, v4

    move/from16 v17, v7

    :goto_8
    sget-object v18, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    if-ltz v17, :cond_b

    invoke-static {v13, v14, v3}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v19, v3, v4

    aput-wide v19, v14, v4

    aget-wide v19, v3, v16

    aput-wide v19, v14, v16

    and-int/lit8 v19, v17, 0x1

    if-nez v19, :cond_9

    move/from16 v19, v4

    move-object/from16 v20, v5

    goto :goto_9

    :cond_9
    move/from16 v19, v4

    move-object/from16 v20, v5

    aget-wide v4, v18, v17

    invoke-static {v4, v5, v3}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v3, v15}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    and-int/lit8 v4, v17, 0x2

    if-eqz v4, :cond_a

    aget-wide v4, v15, v19

    neg-double v4, v4

    aput-wide v4, v15, v19

    aget-wide v4, v15, v16

    neg-double v4, v4

    aput-wide v4, v15, v16

    :cond_a
    invoke-static {v14, v15, v3}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v4, v3, v19

    aput-wide v4, v14, v19

    aget-wide v4, v3, v16

    aput-wide v4, v14, v16

    :goto_9
    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_8

    :cond_b
    move/from16 v19, v4

    move-object/from16 v20, v5

    aget-wide v3, v14, v19

    aput-wide v3, v0, v19

    aget-wide v13, v14, v16

    aput-wide v13, v0, v16

    aput-wide v3, v10, v1

    aget-wide v3, v0, v16

    aput-wide v3, v8, v1

    new-array v3, v9, [D

    new-array v4, v9, [D

    new-array v5, v9, [D

    new-array v8, v9, [D

    invoke-static {v11, v12, v3}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aput-wide v28, v4, v16

    aput-wide v28, v4, v19

    move v10, v7

    :goto_a
    if-ltz v10, :cond_e

    invoke-static {v3, v4, v8}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v11, v8, v19

    aput-wide v11, v4, v19

    aget-wide v11, v8, v16

    aput-wide v11, v4, v16

    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_c

    goto :goto_b

    :cond_c
    aget-wide v11, v18, v10

    invoke-static {v11, v12, v8}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v8, v5}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_d

    aget-wide v11, v5, v19

    neg-double v11, v11

    aput-wide v11, v5, v19

    aget-wide v11, v5, v16

    neg-double v11, v11

    aput-wide v11, v5, v16

    :cond_d
    invoke-static {v4, v5, v8}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v11, v8, v19

    aput-wide v11, v4, v19

    aget-wide v11, v8, v16

    aput-wide v11, v4, v16

    :goto_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_e
    aget-wide v10, v4, v19

    aput-wide v10, v0, v19

    aget-wide v3, v4, v16

    aput-wide v3, v0, v16

    aput-wide v10, v6, v1

    aget-wide v3, v0, v16

    aput-wide v3, v20, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v16

    move/from16 v4, v19

    goto/16 :goto_7

    :cond_f
    move/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    :goto_c
    if-ge v11, v2, :cond_11

    new-array v1, v9, [D

    new-array v3, v9, [D

    new-array v4, v9, [D

    new-array v5, v9, [D

    and-int/lit8 v7, v11, 0x1

    if-nez v7, :cond_10

    div-int/lit8 v7, v11, 0x2

    aget-wide v12, v10, v7

    aput-wide v12, v1, v19

    aget-wide v12, v8, v7

    aput-wide v12, v1, v16

    aget-wide v12, v6, v7

    aput-wide v12, v3, v19

    aget-wide v12, v20, v7

    aput-wide v12, v3, v16

    invoke-static {v1, v3, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v12, v0, v19

    mul-double v12, v12, v26

    aput-wide v12, v10, v11

    aget-wide v12, v0, v16

    mul-double v12, v12, v26

    aput-wide v12, v8, v11

    invoke-static {v3, v3, v4}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    invoke-static {v1, v1, v5}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v12, v5, v19

    neg-double v12, v12

    aput-wide v12, v5, v19

    aget-wide v12, v5, v16

    neg-double v12, v12

    aput-wide v12, v5, v16

    invoke-static {v4, v5, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v3, v0, v19

    aput-wide v3, v6, v11

    aget-wide v3, v0, v16

    aput-wide v3, v20, v11

    goto :goto_d

    :cond_10
    div-int/lit8 v7, v11, 0x2

    aget-wide v12, v10, v7

    aput-wide v12, v1, v19

    aget-wide v12, v8, v7

    aput-wide v12, v1, v16

    aget-wide v12, v6, v7

    aput-wide v12, v3, v19

    aget-wide v12, v20, v7

    aput-wide v12, v3, v16

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v10, v7

    aput-wide v12, v4, v19

    aget-wide v12, v8, v7

    aput-wide v12, v4, v16

    aget-wide v12, v6, v7

    aget-wide v14, v20, v7

    new-array v7, v9, [D

    aput-wide v12, v7, v19

    aput-wide v14, v7, v16

    invoke-static {v1, v7, v5}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    invoke-static {v3, v4, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    invoke-static {v0, v5, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v12, v0, v19

    aput-wide v12, v10, v11

    aget-wide v12, v0, v16

    aput-wide v12, v8, v11

    invoke-static {v3, v7, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    invoke-static {v1, v4, v5}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v3, v5, v19

    neg-double v3, v3

    aput-wide v3, v5, v19

    aget-wide v3, v5, v16

    neg-double v3, v3

    aput-wide v3, v5, v16

    invoke-static {v0, v5, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    aget-wide v3, v0, v19

    aput-wide v3, v6, v11

    aget-wide v3, v0, v16

    aput-wide v3, v20, v11

    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    :cond_11
    move/from16 v0, v19

    :goto_e
    if-ge v0, v2, :cond_12

    new-array v1, v9, [D

    aget-wide v3, v6, v0

    aget-wide v11, v20, v0

    new-array v5, v9, [D

    aput-wide v3, v5, v19

    aput-wide v11, v5, v16

    invoke-static {v5, v1}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    aget-wide v3, v10, v0

    aget-wide v11, v8, v0

    new-array v7, v9, [D

    aput-wide v3, v7, v19

    aput-wide v11, v7, v16

    invoke-static {v7, v1, v5}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    sget-object v1, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_A:[D

    aget-wide v3, v5, v19

    aput-wide v3, v1, v0

    sget-object v1, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_B:[D

    aget-wide v3, v5, v16

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_12
    return-void

    :array_0
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x3fe5555540000000L    # 0.6666666269302368
        0x3e65555555555575L    # 3.9736429850260626E-8
    .end array-data

    :array_2
    .array-data 8
        0x3fd9999980000000L    # 0.3999999761581421
        0x3e5999999998f89bL    # 2.3841857910019882E-8
    .end array-data

    :array_3
    .array-data 8
        0x3fd2492480000000L    # 0.2857142686843872
        0x3e52492492f04decL    # 1.7029898543501842E-8
    .end array-data

    :array_4
    .array-data 8
        0x3fcc71c700000000L    # 0.2222222089767456
        0x3e4c71c65d4f9f93L    # 1.3245471311735498E-8
    .end array-data

    :array_5
    .array-data 8
        0x3fc745d140000000L    # 0.1818181574344635
        0x3e5a2eadbefa2565L    # 2.4384203044354907E-8
    .end array-data

    :array_6
    .array-data 8
        0x3fc3b13b00000000L    # 0.1538461446762085
        0x3e43a0e93f3d8b15L    # 9.140260083262505E-9
    .end array-data

    :array_7
    .array-data 8
        0x3fc1111100000000L
        0x3e43cd12b7438617L    # 9.220590270857665E-9
    .end array-data

    :array_8
    .array-data 8
        0x3fbe1e1d40000000L    # 0.11764700710773468
        0x3e4a9d505e323f26L    # 1.2393345855018391E-8
    .end array-data

    :array_9
    .array-data 8
        0x3fbaf29580000000L    # 0.10526403784751892
        0x3e41b855b8f7ea77L    # 8.251545029714408E-9
    .end array-data

    :array_a
    .array-data 8
        0x3fb8608e40000000L    # 0.0952233225107193
        0x3e4b38ab3aca7380L    # 1.2675934823758863E-8
    .end array-data

    :array_b
    .array-data 8
        0x3fb64e8f40000000L    # 0.08713622391223907
        0x3e488bd8ad726e7fL    # 1.1430250008909141E-8
    .end array-data

    :array_c
    .array-data 8
        0x3fb41380c0000000L    # 0.07842259109020233
        0x3e24a721115060edL    # 2.404307984052299E-9
    .end array-data

    :array_d
    .array-data 8
        0x3fb56e9340000000L    # 0.08371849358081818
        0x3e494302f4f7069bL    # 1.176342548272881E-8
    .end array-data

    :array_e
    .array-data 8
        0x3f9f52e000000000L    # 0.030589580535888672
        0x3e164345ef031be1L    # 1.2958646899018938E-9
    .end array-data

    :array_f
    .array-data 8
        0x3fc32d66c0000000L    # 0.14982303977012634
        0x3e4a5298001e0c82L    # 1.225743062930824E-8
    .end array-data

    :array_10
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    :array_11
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_12
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    :array_13
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    :array_14
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    :array_15
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    :array_16
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    :array_17
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    :array_18
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data
.end method

.method public static abs(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    neg-double p0, p0

    return-wide p0

    :cond_0
    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0
.end method

.method public static exp(D)D
    .locals 14

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    sget-object v3, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    sget-object v4, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    const/16 v5, 0x2c5

    if-gez v2, :cond_3

    neg-double v6, p0

    double-to-int v2, v6

    const/16 v6, 0x2ea

    if-le v2, v6, :cond_0

    return-wide v0

    :cond_0
    if-le v2, v5, :cond_1

    const-wide v0, 0x4044188000000000L    # 40.19140625

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x438fa553a68e6b40L    # 2.8504009514401178E17

    :goto_0
    div-double/2addr p0, v0

    return-wide p0

    :cond_1
    if-ne v2, v5, :cond_2

    const-wide v0, 0x3ff7e80000000000L    # 1.494140625

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x4011d270274c83abL    # 4.455505956692757

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    rsub-int v0, v2, 0x2ee

    aget-wide v4, v4, v0

    aget-wide v0, v3, v0

    neg-int v2, v2

    goto :goto_1

    :cond_3
    double-to-int v2, p0

    if-le v2, v5, :cond_4

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_4
    add-int/lit16 v0, v2, 0x2ee

    aget-wide v4, v4, v0

    aget-wide v0, v3, v0

    :goto_1
    int-to-double v2, v2

    sub-double v6, p0, v2

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    aget-wide v10, v7, v6

    sget-object v7, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    aget-wide v12, v7, v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    sub-double/2addr p0, v6

    const-wide v2, 0x3fa5580030b20837L    # 0.04168701738764507

    mul-double/2addr v2, p0

    const-wide v6, 0x3fc55555329ee223L    # 0.1666666505023083

    add-double/2addr v2, v6

    mul-double/2addr v2, p0

    const-wide v6, 0x3fe0000000009631L    # 0.5000000000042687

    add-double/2addr v2, v6

    mul-double/2addr v2, p0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    mul-double/2addr v2, p0

    const-wide p0, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    add-double/2addr v2, p0

    mul-double p0, v4, v10

    mul-double/2addr v4, v12

    mul-double/2addr v10, v0

    add-double/2addr v10, v4

    mul-double/2addr v0, v12

    add-double/2addr v0, v10

    add-double v4, v0, p0

    mul-double/2addr v4, v2

    add-double/2addr v4, v0

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public static log(D)D
    .locals 18

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    cmpl-double v5, p0, p0

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v9, p0, v5

    if-nez v9, :cond_3

    return-wide v5

    :cond_3
    const/16 v5, 0x34

    shr-long v5, v3, v5

    long-to-int v5, v5

    add-int/lit16 v5, v5, -0x3ff

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v9, v3

    cmp-long v6, v9, v7

    const/4 v9, 0x1

    if-nez v6, :cond_5

    if-nez v2, :cond_4

    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_4
    shl-long v2, v3, v9

    move-wide v3, v2

    :goto_1
    const-wide/high16 v10, 0x10000000000000L

    and-long/2addr v10, v3

    cmp-long v2, v10, v7

    if-nez v2, :cond_5

    add-int/lit8 v5, v5, -0x1

    shl-long/2addr v3, v9

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eq v5, v2, :cond_6

    if-nez v5, :cond_8

    :cond_6
    const-wide v10, 0x3ff028f5c28f5c29L    # 1.01

    cmpg-double v2, p0, v10

    if-gez v2, :cond_8

    const-wide v10, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v2, p0, v10

    if-lez v2, :cond_8

    sub-double v0, p0, v7

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v4, v0, v2

    add-double v7, v0, v4

    sub-double/2addr v7, v4

    sub-double/2addr v0, v7

    sget-object v4, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    const/16 v5, 0x8

    aget-object v5, v4, v5

    aget-wide v10, v5, v6

    aget-wide v12, v5, v9

    const/4 v5, 0x7

    :goto_2
    if-ltz v5, :cond_7

    mul-double v14, v10, v7

    mul-double/2addr v10, v0

    mul-double v16, v12, v7

    add-double v16, v16, v10

    mul-double/2addr v12, v0

    add-double v12, v12, v16

    mul-double v10, v14, v2

    add-double v16, v14, v10

    sub-double v16, v16, v10

    sub-double v14, v14, v16

    add-double/2addr v14, v12

    aget-object v10, v4, v5

    aget-wide v11, v10, v6

    add-double v16, v16, v11

    aget-wide v10, v10, v9

    add-double/2addr v14, v10

    mul-double v10, v16, v2

    add-double v12, v16, v10

    sub-double v10, v12, v10

    sub-double v16, v16, v10

    add-double v12, v16, v14

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    mul-double v4, v10, v7

    mul-double/2addr v10, v0

    mul-double/2addr v7, v12

    add-double/2addr v7, v10

    mul-double/2addr v12, v0

    add-double/2addr v12, v7

    mul-double/2addr v2, v4

    add-double v0, v4, v2

    sub-double/2addr v0, v2

    sub-double/2addr v4, v0

    add-double/2addr v4, v12

    add-double/2addr v4, v0

    return-wide v4

    :cond_8
    sget-object v2, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    const-wide v10, 0xffc0000000000L

    and-long/2addr v10, v3

    const/16 v12, 0x2a

    shr-long v12, v10, v12

    long-to-int v12, v12

    aget-object v2, v2, v12

    const-wide v12, 0x3ffffffffffL

    and-long/2addr v3, v12

    long-to-double v3, v3

    const-wide/high16 v12, 0x4330000000000000L    # 4.503599627370496E15

    long-to-double v10, v10

    add-double/2addr v10, v12

    div-double/2addr v3, v10

    const-wide v10, -0x403ab85bc817c0f3L    # -0.16624882440418567

    mul-double/2addr v10, v3

    const-wide v12, 0x3fc99995c0570824L    # 0.19999954120254515

    add-double/2addr v10, v12

    mul-double/2addr v10, v3

    const-wide v12, -0x40300000007fae53L    # -0.2499999997677497

    add-double/2addr v10, v12

    mul-double/2addr v10, v3

    const-wide v12, 0x3fd5555555555198L    # 0.3333333333332802

    add-double/2addr v10, v12

    mul-double/2addr v10, v3

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    add-double/2addr v10, v12

    mul-double/2addr v10, v3

    add-double/2addr v10, v7

    mul-double/2addr v10, v3

    int-to-double v3, v5

    const-wide v7, 0x3fe62e42c0000000L    # 0.6931470632553101

    mul-double/2addr v7, v3

    aget-wide v5, v2, v6

    add-double v12, v7, v5

    sub-double v7, v12, v7

    sub-double/2addr v7, v5

    neg-double v5, v7

    add-double/2addr v5, v0

    add-double v7, v12, v10

    sub-double v12, v7, v12

    sub-double/2addr v12, v10

    neg-double v10, v12

    add-double/2addr v5, v10

    const-wide v10, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    mul-double/2addr v3, v10

    add-double v10, v7, v3

    sub-double v7, v10, v7

    sub-double/2addr v7, v3

    neg-double v3, v7

    add-double/2addr v5, v3

    aget-wide v2, v2, v9

    add-double v7, v10, v2

    sub-double v9, v7, v10

    sub-double/2addr v9, v2

    neg-double v2, v9

    add-double/2addr v5, v2

    add-double v2, v7, v0

    sub-double v7, v2, v7

    sub-double/2addr v7, v0

    neg-double v0, v7

    add-double/2addr v5, v0

    add-double/2addr v5, v2

    return-wide v5
.end method

.method public static max(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :goto_0
    return-wide p2

    :cond_3
    :goto_1
    return-wide p0
.end method

.method public static quadMult([D[D[D)V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v0, v0, [D

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    invoke-static {v4, v5, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aget-wide v4, p1, v3

    invoke-static {v4, v5, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v4, v0, v3

    aput-wide v4, p2, v3

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    aput-wide v5, p2, v4

    aget-wide v5, p1, v4

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double v9, v5, v7

    aget-wide v11, p2, v4

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    sub-double/2addr v11, v5

    aput-wide v11, p2, v4

    aput-wide v9, p2, v3

    aget-wide v5, v0, v4

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    sub-double/2addr v11, v9

    aput-wide v11, p2, v4

    aput-wide v7, p2, v3

    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aget-wide v5, p1, v3

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double v9, v5, v7

    aget-wide v11, p2, v4

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    sub-double/2addr v11, v5

    aput-wide v11, p2, v4

    aput-wide v9, p2, v3

    aget-wide v5, v0, v4

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    sub-double/2addr v11, v9

    aput-wide v11, p2, v4

    aput-wide v7, p2, v3

    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    aget-wide p0, p1, v4

    invoke-static {p0, p1, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    aget-wide p0, p2, v3

    aget-wide v1, v0, v3

    add-double v5, p0, v1

    aget-wide v7, p2, v4

    sub-double p0, v5, p0

    sub-double/2addr p0, v1

    sub-double/2addr v7, p0

    aput-wide v7, p2, v4

    aput-wide v5, p2, v3

    aget-wide p0, v0, v4

    add-double v0, v5, p0

    sub-double v5, v0, v5

    sub-double/2addr v5, p0

    sub-double/2addr v7, v5

    aput-wide v7, p2, v4

    aput-wide v0, p2, v3

    return-void
.end method

.method public static resplit([D)V
    .locals 10

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    add-double v6, v1, v4

    sub-double v1, v6, v1

    sub-double/2addr v1, v4

    neg-double v1, v1

    const-wide v4, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v4, v6, v4

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    if-gez v4, :cond_0

    const-wide v4, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v4, v6, v4

    if-lez v4, :cond_0

    mul-double/2addr v8, v6

    add-double v4, v6, v8

    sub-double/2addr v4, v8

    aput-wide v4, p0, v0

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    aput-wide v6, p0, v3

    return-void

    :cond_0
    const-wide/high16 v4, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    aput-wide v4, p0, v0

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    aput-wide v6, p0, v3

    return-void
.end method

.method public static split(D[D)V
    .locals 7

    const-wide v0, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    if-gez v0, :cond_0

    const-wide v5, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v0, p0, v5

    if-lez v0, :cond_0

    mul-double/2addr v3, p0

    add-double v5, p0, v3

    sub-double/2addr v5, v3

    aput-wide v5, p2, v2

    sub-double/2addr p0, v5

    aput-wide p0, p2, v1

    return-void

    :cond_0
    const-wide/high16 v5, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v5, p0

    add-double/2addr v5, p0

    sub-double/2addr v5, p0

    mul-double/2addr v5, v3

    aput-wide v5, p2, v2

    sub-double/2addr p0, v5

    aput-wide p0, p2, v1

    return-void
.end method

.method public static splitAdd([D[D[D)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    add-double/2addr v1, p0

    aput-wide v1, p2, v0

    invoke-static {p2}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    return-void
.end method

.method public static splitMult([D[D[D)V
    .locals 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double/2addr v1, v3

    aput-wide v1, p2, v0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    mul-double/2addr v1, v4

    aget-wide v6, p0, v3

    aget-wide p0, p1, v0

    mul-double/2addr p0, v6

    add-double/2addr p0, v1

    mul-double/2addr v6, v4

    add-double/2addr v6, p0

    aput-wide v6, p2, v3

    invoke-static {p2}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    return-void
.end method

.method public static splitReciprocal([D[D)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget-wide v5, p0, v2

    aput-wide v5, p0, v0

    aput-wide v3, p0, v2

    :cond_0
    aget-wide v5, p0, v0

    const-wide v7, 0x3fefffff80000000L    # 0.9999997615814209

    div-double v5, v7, v5

    aput-wide v5, p1, v0

    aget-wide v5, p0, v0

    const-wide/high16 v9, 0x3e90000000000000L    # 2.384185791015625E-7

    mul-double/2addr v9, v5

    aget-wide v11, p0, v2

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    mul-double v7, v5, v5

    mul-double/2addr v5, v11

    add-double/2addr v5, v7

    div-double/2addr v9, v5

    aput-wide v9, p1, v2

    cmpl-double v1, v9, v9

    if-eqz v1, :cond_1

    aput-wide v3, p1, v2

    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    move v1, v0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    aget-wide v3, p1, v0

    aget-wide v5, p0, v0

    mul-double v7, v3, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    aget-wide v7, p0, v2

    mul-double v11, v3, v7

    sub-double/2addr v9, v11

    aget-wide v11, p1, v2

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    add-double/2addr v3, v11

    mul-double/2addr v3, v9

    add-double/2addr v3, v11

    aput-wide v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
