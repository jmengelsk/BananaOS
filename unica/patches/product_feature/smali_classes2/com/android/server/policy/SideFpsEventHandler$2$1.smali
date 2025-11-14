.class public final Lcom/android/server/policy/SideFpsEventHandler$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

.field public final synthetic this$1:Lcom/android/server/policy/SideFpsEventHandler$2;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onBiometricAction(I)V
    .locals 2

    const-string/jumbo v0, "onBiometricAction "

    const-string/jumbo v1, "SideFpsEventHandler"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "mTurnOffDialog"

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    const-string/jumbo v0, "onStateChanged : "

    const-string/jumbo v1, "SideFpsEventHandler"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v1, v1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v1, v1, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "STATE_IDLE"

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
