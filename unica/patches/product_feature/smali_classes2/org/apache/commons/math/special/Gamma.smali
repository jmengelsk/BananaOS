.class public abstract Lorg/apache/commons/math/special/Gamma;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HALF_LOG_2_PI:D

.field public static final LANCZOS:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math/special/Gamma;->LANCZOS:[D

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math/special/Gamma;->HALF_LOG_2_PI:D

    return-void

    :array_0
    .array-data 8
        0x3fefffffffffffe6L    # 0.9999999999999971
        0x404c93ff87c1acceL    # 57.15623566586292
        -0x3fb2337608fa76d0L    # -59.59796035547549
        0x402c45aea23d22a1L    # 14.136097974741746
        -0x4020847be9da401cL    # -0.4919138160976202
        0x3f01d2af4786183aL    # 3.399464998481189E-5
        0x3f08644bb7c5e3bdL    # 4.652362892704858E-5
        -0x40e63633621a8b49L    # -9.837447530487956E-5
        0x3f24b8939ed4e66dL    # 1.580887032249125E-4
        -0x40d470b232d541caL    # -2.1026444172410488E-4
        0x3f2c801018e9e826L    # 2.1743961811521265E-4
        -0x40da7666366ad9c0L    # -1.643181065367639E-4
        0x3f1621360b773d55L    # 8.441822398385275E-5
        -0x410489734a2e1dfaL    # -2.6190838401581408E-5
        0x3ecef40a04fc9810L    # 3.6899182659531625E-6
    .end array-data
.end method

.method public static logGamma(D)D
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xe

    :goto_0
    sget-object v3, Lorg/apache/commons/math/special/Gamma;->LANCZOS:[D

    if-lez v2, :cond_1

    aget-wide v3, v3, v2

    int-to-double v5, v2

    add-double/2addr v5, p0

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-wide v2, v3, v2

    add-double/2addr v0, v2

    const-wide v2, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    add-double/2addr v4, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    sub-double/2addr v6, v2

    sget-wide v2, Lorg/apache/commons/math/special/Gamma;->HALF_LOG_2_PI:D

    add-double/2addr v6, v2

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide p0

    add-double/2addr p0, v6

    return-wide p0

    :cond_2
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method
