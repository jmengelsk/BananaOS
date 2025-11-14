.class public Lorg/apache/commons/math/distribution/BetaDistributionImpl;
.super Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private alpha:D

.field private beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;-><init>()V

    const-wide/high16 v0, 0x4049000000000000L  # 50.0

    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->alpha:D

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->beta:D

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->z:D

    const-wide v0, 0x3e112e0be826d695L  # 1.0E-9

    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->solverAbsoluteAccuracy:D

    return-void
.end method


# virtual methods
.method public final cumulativeProbability(D)D
    .registers 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_e

    return-wide v0

    :cond_e
    iget-wide v5, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->alpha:D

    iget-wide v7, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->beta:D

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getSolverAbsoluteAccuracy()D
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->solverAbsoluteAccuracy:D

    return-wide v0
.end method
