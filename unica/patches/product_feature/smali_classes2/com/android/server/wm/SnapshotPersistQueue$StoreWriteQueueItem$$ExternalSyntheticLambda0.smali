.class public final synthetic Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
