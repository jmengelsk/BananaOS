.class Lcom/android/server/wm/DisplayAreaGroup;
.super Lcom/android/server/wm/RootDisplayArea;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method private isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x1

    if-ge v1, p1, :cond_17

    move p1, v2

    goto :goto_18

    :cond_17
    move p1, v0

    :goto_18
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ge v1, p0, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    move p0, v0

    :goto_25
    if-eq p1, p0, :cond_28

    return v2

    :cond_28
    return v0
.end method


# virtual methods
.method public bridge synthetic asRemoteInsetsControlTarget()Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public canShowTransient()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getAnimatingTypes()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation(I)I
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result p0

    return p0

    :cond_f
    return p1
.end method

.method public getRequestedVisibleTypes()I
    .registers 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getWindowToken()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    return-void
.end method

.method public isOrientationDifferentFromDisplay()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRequestedVisible(I)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic notifyInsetsControlChanged(I)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_c

    goto :goto_31

    :cond_c
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1e
    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_31

    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2d

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    return-void

    :cond_2d
    if-ne p0, p1, :cond_31

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_31
    :goto_31
    return-void
.end method

.method public bridge synthetic setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    return-void
.end method
