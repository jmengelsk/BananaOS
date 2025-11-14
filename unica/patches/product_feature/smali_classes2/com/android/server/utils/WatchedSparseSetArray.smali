.class public final Lcom/android/server/utils/WatchedSparseSetArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mStorage:Landroid/util/SparseSetArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseSetArray;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    new-instance v0, Landroid/util/SparseSetArray;

    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-direct {v0, p1}, Landroid/util/SparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return p1
.end method

.method public final remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final remove(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_0
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Lcom/android/server/utils/WatchedSparseSetArray;)V

    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method
