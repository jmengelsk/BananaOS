.class Lcom/android/server/wm/DisplayAreaGroup;
.super Lcom/android/server/wm/RootDisplayArea;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method private isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x1

    if-ge v1, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ge v1, p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eq p1, p0, :cond_3

    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public bridge synthetic asRemoteInsetsControlTarget()Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public canShowTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getAnimatingTypes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public getRequestedVisibleTypes()I
    .locals 0

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getWindowToken()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public isOrientationDifferentFromDisplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRequestedVisible(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic notifyInsetsControlChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    return-void

    :cond_2
    if-ne p0, p1, :cond_3

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method
