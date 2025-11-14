.class public final Lcom/android/server/wm/DisplayContent$ImeContainer;
.super Lcom/android/server/wm/DisplayArea$Tokens;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mNeedsLayer:Z


# virtual methods
.method public final assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public final assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public final forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public final forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public final getOrientation(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    return p1
.end method

.method public final setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    aget-boolean p2, v1, p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x15986070f6acc9d2L

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, v2, v3, v0, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_1
    const/4 p0, 0x4

    aget-boolean p0, v1, p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0xf8a48076e91355cL    # 8.265731032183512E-234

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    return-void
.end method
