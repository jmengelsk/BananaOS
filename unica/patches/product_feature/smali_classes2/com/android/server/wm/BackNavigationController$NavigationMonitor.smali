.class Lcom/android/server/wm/BackNavigationController$NavigationMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mListenerDeathRecipient:Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

.field public mNavigatingWindow:Lcom/android/server/wm/WindowState;

.field public mObserver:Landroid/os/RemoteCallback;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    new-instance p1, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;-><init>(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

    return-void
.end method


# virtual methods
.method public final cancelBackNavigating(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x797c

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-boolean p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    sget p1, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v2, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iput-object v0, p1, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    :cond_4
    sget p1, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void
.end method

.method public final stopMonitorForRemote()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    return-void
.end method
