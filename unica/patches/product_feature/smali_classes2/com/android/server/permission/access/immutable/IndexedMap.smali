.class public abstract Lcom/android/server/permission/access/immutable/IndexedMap;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final map:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final toMutable()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
