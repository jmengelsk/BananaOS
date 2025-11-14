.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsState;

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$0:Landroid/view/InsetsState;

    iput-object p3, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$2:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$0:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$2:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v2, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v2, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
