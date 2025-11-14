.class public Lorg/apache/commons/math/MathException;
.super Ljava/lang/Exception;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final serialVersionUID:J = 0x6715a06381085ecfL


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final pattern:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/ConvergenceException;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    iput-object v0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    invoke-virtual {p1}, Lorg/apache/commons/math/MathException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getArguments()[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final getGeneralPattern()Lorg/apache/commons/math/exception/util/Localizable;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    return-object p0
.end method

.method public final getLocalizedMessage()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/text/MessageFormat;

    iget-object v2, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    check-cast v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/text/MessageFormat;

    iget-object v2, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    check-cast v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method public final printStackTrace()V
    .registers 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/MathException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintStream;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw p0
.end method
