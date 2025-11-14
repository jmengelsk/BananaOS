.class public final Lcom/android/server/permission/access/immutable/MutableReference;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public immutable:Lcom/android/server/permission/access/immutable/Immutable;

.field public mutable:Lcom/android/server/permission/access/immutable/Immutable;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    iput-object p2, p0, Lcom/android/server/permission/access/immutable/MutableReference;->mutable:Lcom/android/server/permission/access/immutable/Immutable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.immutable.MutableReference<*, *>"

    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    iget-object p1, p1, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final mutate()Lcom/android/server/permission/access/immutable/Immutable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->mutable:Lcom/android/server/permission/access/immutable/Immutable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    invoke-interface {v0}, Lcom/android/server/permission/access/immutable/Immutable;->toMutable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/Immutable;

    iput-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    iput-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->mutable:Lcom/android/server/permission/access/immutable/Immutable;

    return-object v0
.end method

.method public final toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    return-object v0
.end method
