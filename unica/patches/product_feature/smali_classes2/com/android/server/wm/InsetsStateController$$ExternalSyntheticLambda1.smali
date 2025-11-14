.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsStateController;

    iput p2, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$2:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsStateController;

    iget v1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$2:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    const/4 v4, 0x1

    if-ge v3, v1, :cond_46

    invoke-virtual {p0, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    if-nez v5, :cond_1d

    goto :goto_43

    :cond_1d
    invoke-virtual {p0, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    iget-boolean v8, v5, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    if-eqz v8, :cond_26

    goto :goto_43

    :cond_26
    iget-object v8, v5, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-nez v8, :cond_2b

    goto :goto_43

    :cond_2b
    invoke-virtual {v8}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_36

    iget-wide v11, v8, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_37

    :cond_36
    move-wide v11, v9

    :goto_37
    cmp-long v6, v6, v11

    if-eqz v6, :cond_3c

    goto :goto_43

    :cond_3c
    iput-boolean v4, v5, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    iget-object v4, v5, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v4, v5, v9, v10, v2}, Lcom/android/server/wm/InsetsStateController;->notifySurfaceTransactionReady(Lcom/android/server/wm/InsetsSourceProvider;JZ)V

    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_46
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, v0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_56
    if-ltz v3, :cond_99

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_69
    if-ltz v7, :cond_7f

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/InsetsSourceProvider;

    iget-boolean v9, v8, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    if-nez v9, :cond_79

    iget-object v8, v8, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v8, v5, :cond_7c

    :cond_79
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7c
    add-int/lit8 v7, v7, -0x1

    goto :goto_69

    :cond_7f
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-interface {v5, v1}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    iget-object v6, v0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_96
    add-int/lit8 v3, v3, -0x1

    goto :goto_56

    :cond_99
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_9e
    if-ltz v1, :cond_b1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsTarget;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9e

    :cond_b1
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method
