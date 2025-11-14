.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LockTaskController;

    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LockTaskController;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    iget-boolean v3, v0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    iget-object v4, v0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v5, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    iget-object v6, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v7, 0x1c

    invoke-virtual {v6, v7, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget v4, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v4, p0}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    iget v4, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v4, p0}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, p0}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_1
    if-ne v1, v4, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    :cond_2
    iget p0, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

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
