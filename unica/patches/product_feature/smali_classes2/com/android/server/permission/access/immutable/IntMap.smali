.class public abstract Lcom/android/server/permission/access/immutable/IntMap;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final toMutable()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/IntMap;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
