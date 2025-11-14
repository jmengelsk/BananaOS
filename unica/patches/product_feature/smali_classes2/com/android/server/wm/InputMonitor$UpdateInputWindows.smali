.class public final Lcom/android/server/wm/InputMonitor$UpdateInputWindows;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    iput-boolean v2, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    iget-boolean v2, v1, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v2, :cond_1c

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_30

    :cond_1c
    :try_start_1c
    iget-object v1, v1, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-static {p0, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->-$$Nest$mupdateInputWindows(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
