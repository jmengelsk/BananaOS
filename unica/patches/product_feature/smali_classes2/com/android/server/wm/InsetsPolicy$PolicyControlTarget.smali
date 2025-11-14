.class public final Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    return-void
.end method


# virtual methods
.method public final canShowTransient()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getRequestedVisibleTypes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyInsetsControlChanged(I)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    iget-object v0, p1, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ge v1, v0, :cond_4

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p1, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v5, v5, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method
