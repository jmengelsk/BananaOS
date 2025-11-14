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
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object p0
.end method

.method public final handleSnapshot()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    if-eqz v0, :cond_5

    goto :goto_25

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eqz p0, :cond_25

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void
.end method
