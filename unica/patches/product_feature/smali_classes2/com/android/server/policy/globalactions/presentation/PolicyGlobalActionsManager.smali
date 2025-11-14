.class public final Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;


# instance fields
.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-void
.end method


# virtual methods
.method public final isFOTAAvailableForGlobalActions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onGlobalActionsHidden()V
    .locals 0

    return-void
.end method

.method public final onGlobalActionsShown()V
    .locals 0

    return-void
.end method

.method public final reboot(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    return-void
.end method

.method public final shutdown()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void
.end method
