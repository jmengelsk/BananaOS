.class public abstract Lorg/apache/commons/math/MathRuntimeException;
.super Ljava/lang/RuntimeException;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final serialVersionUID:J = 0x7db74ddedac69d52L


# direct methods
.method public static varargs createIllegalArgumentException(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3

    new-instance v0, Lorg/apache/commons/math/MathRuntimeException$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math/MathRuntimeException$4;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    return-object v0
.end method
