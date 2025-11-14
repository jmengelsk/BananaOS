.class public Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;
.implements Ljava/lang/Runnable;


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mHandler:Lcom/android/server/wm/WindowManagerService$H;

.field public final mInsetsController:Landroid/view/InsetsController;

.field public final mName:Ljava/lang/String;

.field public final mState:Landroid/view/InsetsState;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    new-instance p1, Landroid/view/InsetsController;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$Host;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/InsetsPolicy$Host;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final notifyInsetsControlChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v2}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl$Array;->get()[Landroid/view/InsetsSourceControl;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    return-object p0
.end method
