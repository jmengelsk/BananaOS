.class public final Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public mHasSet:Z

.field public mSnapshot:Landroid/window/TaskSnapshot;

.field public mSupplier:Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object p0
.end method

.method public final handleSnapshot()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eqz p0, :cond_3

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
