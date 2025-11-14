.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LockTaskController;

    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    iput p4, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LockTaskController;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$3:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    iput-boolean v3, v0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p0, v4, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v5}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    :cond_0
    iput p0, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v4, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    iget-object v6, v3, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    invoke-interface {v3, v5, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->notifyLockTaskStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
