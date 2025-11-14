.class final Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->flags:I

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/text/Regex;

    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/text/Regex$Serialized;->flags:I

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string/jumbo v1, "compile(...)"

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
