.class final Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

.field private static final serialVersionUID:J = 0x72723771cb044cd2L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;-><init>()V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 1

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    return-object p0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3

    instance-of p0, p1, Ljava/lang/Void;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    check-cast p1, Ljava/lang/Void;

    const-string/jumbo p0, "value"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 1

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p0, p1, Ljava/util/Map;

    if-eqz p0, :cond_e

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 1

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;

    return-object p0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge size()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "{}"

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .registers 1

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    return-object p0
.end method
