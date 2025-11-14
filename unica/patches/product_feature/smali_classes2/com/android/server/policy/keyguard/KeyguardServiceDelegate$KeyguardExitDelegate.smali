.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;
.super Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# virtual methods
.method public final onKeyguardExitResult(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    :cond_7
    return-void
.end method
