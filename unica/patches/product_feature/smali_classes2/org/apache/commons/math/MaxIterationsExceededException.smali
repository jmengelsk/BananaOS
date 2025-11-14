.class public Lorg/apache/commons/math/MaxIterationsExceededException;
.super Lorg/apache/commons/math/ConvergenceException;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final serialVersionUID:J = -0x6c8a943861b452e6L


# instance fields
.field private final maxIterations:I


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->MAX_ITERATIONS_EXCEEDED:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    iput v1, p0, Lorg/apache/commons/math/MaxIterationsExceededException;->maxIterations:I

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    const p1, 0x7fffffff

    iput p1, p0, Lorg/apache/commons/math/MaxIterationsExceededException;->maxIterations:I

    return-void
.end method
