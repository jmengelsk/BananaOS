.class public final Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

.field public final synthetic val$p:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    iput-wide p2, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D

    return-void
.end method


# virtual methods
.method public final value(D)D
    .registers 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    check-cast v0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->cumulativeProbability(D)D

    move-result-wide v0
    :try_end_8
    .catch Lorg/apache/commons/math/MathException; {:try_start_0 .. :try_end_8} :catch_26

    iget-wide v2, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_12

    return-wide v0

    :cond_12
    new-instance p0, Lorg/apache/commons/math/FunctionEvaluationException;

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math/FunctionEvaluationException;-><init>(DLorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    throw p0

    :catch_26
    move-exception p0

    new-instance v0, Lorg/apache/commons/math/FunctionEvaluationException;

    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getGeneralPattern()Lorg/apache/commons/math/exception/util/Localizable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p0}, Lorg/apache/commons/math/FunctionEvaluationException;-><init>(DLorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    throw v0
.end method
