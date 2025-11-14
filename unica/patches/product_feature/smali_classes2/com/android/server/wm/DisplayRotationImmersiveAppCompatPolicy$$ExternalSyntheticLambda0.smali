.class public final synthetic Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

.field public final synthetic f$1:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowOrientationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    :cond_0
    return-void
.end method
