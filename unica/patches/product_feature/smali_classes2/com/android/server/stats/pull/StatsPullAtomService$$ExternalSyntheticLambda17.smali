.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:I

.field public final synthetic f$2:[I

.field public final synthetic f$3:[J

.field public final synthetic f$4:[D


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;I[I[J[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$0:Landroid/util/SparseArray;

    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$1:I

    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$2:[I

    iput-object p4, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$3:[J

    iput-object p5, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$4:[D

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$0:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$1:I

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$2:[I

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$3:[J

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$4:[D

    check-cast p2, [J

    sget v4, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const p1, 0xea5f

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    if-nez v4, :cond_2

    mul-int/lit8 v1, v1, 0x3

    new-array v4, v1, [D

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    array-length v0, p2

    if-ge p1, v0, :cond_3

    aget v0, v2, p1

    aget-wide v5, p2, p1

    mul-int/lit8 v0, v0, 0x3

    aget-wide v7, v4, v0

    aget-wide v9, v3, p1

    mul-long/2addr v9, v5

    long-to-double v9, v9

    add-double/2addr v7, v9

    aput-wide v7, v4, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v7, v4, v1

    long-to-double v5, v5

    add-double/2addr v7, v5

    aput-wide v7, v4, v1

    add-int/lit8 v0, v0, 0x2

    aget-wide v7, v4, v0

    aget-wide v9, p0, p1

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    aput-wide v9, v4, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
