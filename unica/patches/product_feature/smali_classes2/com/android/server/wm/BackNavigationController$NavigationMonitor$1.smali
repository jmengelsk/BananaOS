.class public final Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
