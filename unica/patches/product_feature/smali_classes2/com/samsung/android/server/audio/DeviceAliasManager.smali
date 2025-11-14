.class public final Lcom/samsung/android/server/audio/DeviceAliasManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDevices:Landroid/util/SparseArray;

.field public final mLeOnlyDevices:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mLeOnlyDevices:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v3}, [I

    move-result-object v3

    filled-new-array {v4, v5}, [I

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    new-array v1, v0, [I

    :goto_3c
    if-ge v4, v0, :cond_47

    const/4 v2, 0x3

    if-ne v4, v2, :cond_42

    goto :goto_44

    :cond_42
    aput v4, v1, v4

    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_47
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    const/high16 v3, 0x20000000

    const v4, 0x20000002

    filled-new-array {v3, v4}, [I

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    const/16 v5, 0x80

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v5, v4}, [I

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v3, v5}, [I

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mLeOnlyDevices:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mLeOnlyDevices:Landroid/util/SparseArray;

    new-instance v0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v3}, [I

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
