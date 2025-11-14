.class public final Lcom/android/server/wm/MirrorActiveUids;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

.field public final mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

.field public final mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static updateCount(IZLandroid/util/SparseIntArray;)V
    .registers 5

    invoke-virtual {p2, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    :goto_f
    add-int/2addr p0, v1

    if-lez p0, :cond_16

    invoke-virtual {p2, v0, p0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    return-void

    :cond_16
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    return-void

    :cond_1a
    if-eqz p1, :cond_1f

    invoke-virtual {p2, p0, v1}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public final declared-synchronized getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-lez v2, :cond_29

    iget-object v3, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_29

    :catchall_27
    move-exception p1

    goto :goto_2e

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    monitor-exit p0

    return-object v0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_27

    throw p1
.end method

.method public final declared-synchronized hasNonAppVisibleWindow(I)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-lez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method
