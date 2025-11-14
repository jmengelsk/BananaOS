.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static emptyMap()Ljava/util/Map;
    .registers 2

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>"

    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
