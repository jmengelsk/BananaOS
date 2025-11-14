.class Lorg/apache/commons/math/MathRuntimeException$4;
.super Ljava/lang/IllegalArgumentException;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final serialVersionUID:J = -0x3b762231632f99f1L


# instance fields
.field final synthetic val$arguments:[Ljava/lang/Object;

.field final synthetic val$pattern:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    iput-object p2, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalizedMessage()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    iget-object p0, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    new-instance v2, Ljava/text/MessageFormat;

    check-cast v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    iget-object p0, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    new-instance v2, Ljava/text/MessageFormat;

    check-cast v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
