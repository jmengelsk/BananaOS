.class public final Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceProvisioned:Z

.field public mGlobalActionsAvailable:Z

.field public final mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyguardShowing:Z

.field public mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

.field public final mShowTimeout:Lcom/android/server/policy/GlobalActions$1;

.field public mShowing:Z

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Lcom/android/server/policy/GlobalActions$1;

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const-class p1, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$3;

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActions;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions;->onGlobalActionsAvailableChanged(Z)V

    return-void

    :cond_1
    const-string p0, "GlobalActions"

    const-string/jumbo p1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final ensureLegacyCreated()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    return-void
.end method

.method public final onGlobalActionsAvailableChanged(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Lcom/android/server/policy/GlobalActions$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    iget-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    :cond_0
    return-void
.end method
