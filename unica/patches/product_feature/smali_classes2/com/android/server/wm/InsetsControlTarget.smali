.class public interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/InsetsTarget;


# virtual methods
.method public asRemoteInsetsControlTarget()Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public canShowTransient()Z
    .locals 0

    instance-of p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    return p0
.end method

.method public getRequestedVisibleTypes()I
    .locals 0

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p0

    return p0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public isRequestedVisible(I)Z
    .locals 0

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyInsetsControlChanged(I)V
    .locals 0

    return-void
.end method

.method public setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method
