.class public final Lcom/android/server/pm/Settings$KeySetToValueMap;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public final mKeySet:Ljava/util/Set;

.field public final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final isEmpty()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
