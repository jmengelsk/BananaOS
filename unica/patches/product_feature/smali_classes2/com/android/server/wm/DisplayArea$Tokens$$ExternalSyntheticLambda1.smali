.class public final synthetic Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayArea$Tokens;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayArea$Tokens;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayArea$Tokens;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_12

    goto :goto_4e

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz p0, :cond_38

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_4e

    :cond_38
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-eqz p0, :cond_3f

    goto :goto_4d

    :cond_3f
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_4e

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4e

    const/4 p1, -0x2

    if-ne p0, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    :goto_4d
    return v2

    :cond_4e
    :goto_4e
    const/4 p0, 0x0

    return p0
.end method
