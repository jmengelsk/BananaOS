.class public final Lcom/android/server/permission/access/immutable/MutableIntMap;
.super Lcom/android/server/permission/access/immutable/IntMap;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/IntMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method
