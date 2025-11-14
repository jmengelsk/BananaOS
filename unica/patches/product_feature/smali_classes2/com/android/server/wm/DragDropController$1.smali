.class public final Lcom/android/server/wm/DragDropController$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragDropController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    iget-object v0, v0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    iget-object v1, v1, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DragDropController;->onUnhandledDropCallback(Z)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_29

    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragDropController;->setGlobalDragListener(Landroid/window/IGlobalDragListener;)V

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
