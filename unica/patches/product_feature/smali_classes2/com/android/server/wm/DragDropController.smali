.class public final Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mDisplayTopologyListener:Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;

.field public mDragSourceTask:Lcom/android/server/wm/Task;

.field public mDragState:Lcom/android/server/wm/DragState;

.field public mGlobalDragListener:Landroid/window/IGlobalDragListener;

.field public final mGlobalDragListenerDeathRecipient:Lcom/android/server/wm/DragDropController$1;

.field public final mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mUpdateTaskVisibilityAfterDragClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DragDropController;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDisplayTopologyListener:Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    new-instance v0, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Lcom/android/server/wm/DragDropController$1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    return-void
.end method


# virtual methods
.method public final cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_14
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_3a

    :try_start_1c
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_50

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, p1, :cond_3e

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_3c

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3a

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_3a
    move-exception p1

    goto :goto_67

    :catchall_3c
    move-exception p1

    goto :goto_62

    :cond_3e
    :try_start_3e
    const-string/jumbo p1, "WindowManager"

    const-string/jumbo p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    const-string/jumbo p1, "WindowManager"

    const-string/jumbo p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_3c

    :try_start_63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_3a

    :goto_67
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public final dpToPixel(I)F
    .registers 3

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final dragDropActiveLocked()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public dragSurfaceRelinquishedToDropTarget()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final dropForAccessibility(Landroid/view/IWindow;FF)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_25
    move-exception p0

    goto :goto_5c

    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v2, v2, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    if-eqz v2, :cond_57

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_4a

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_4a
    :try_start_4a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    move-result p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :goto_5c
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    return-object p0
.end method

.method public handleDisplayTopologyChange(Landroid/hardware/display/DisplayTopology;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_13

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    goto :goto_28

    :cond_13
    :try_start_13
    const-string/jumbo v0, "WindowManager"

    const-string v1, "DisplayTopology changed, cancelling DragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_28
    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final handleDragEvent()V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2a

    iget v0, v2, Lcom/android/server/wm/DragState;->mMimeType:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->notifyDownEventLocked()V

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_34
    return-void
.end method

.method public final handleMotionEvent(FFIZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_15

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_26

    :cond_15
    if-eqz p4, :cond_1c

    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationToEavesdropDragEventWindowLocked(FF)V

    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(FFIZ)V

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v0, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v0, 0x1100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    const-string v5, ")"

    const-string/jumbo v6, "WindowManager"

    if-eqz v4, :cond_6a

    if-eqz v0, :cond_6a

    if-eqz v1, :cond_22

    goto :goto_6a

    :cond_22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const-wide/16 v7, 0x20

    const-string v1, "DragDropController#notifyUnhandledDrop"

    invoke-static {v7, v8, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v1, "Sending DROP to unhandled listener ("

    invoke-static {v1, p2, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_38
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 v1, 0x0

    const/4 v4, 0x4

    invoke-virtual {p2, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x1388

    invoke-virtual {p2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez p3, :cond_4c

    move p2, v3

    goto :goto_50

    :cond_4c
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p2

    :goto_50
    const/4 p3, -0x1

    if-eq p2, p3, :cond_54

    goto :goto_55

    :cond_54
    move p2, v3

    :goto_55
    invoke-virtual {p1, p2}, Landroid/view/DragEvent;->setDisplayId(I)V

    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    new-instance p3, Lcom/android/server/wm/DragDropController$3;

    invoke-direct {p3, p0, v0}, Lcom/android/server/wm/DragDropController$3;-><init>(Lcom/android/server/wm/DragDropController;I)V

    invoke-interface {p2, p1, p3}, Landroid/window/IGlobalDragListener;->onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_62} :catch_63

    return v2

    :catch_63
    move-exception p0

    const-string p1, "Failed to call global drag listener for unhandled drop"

    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_6a
    :goto_6a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Skipping unhandled listener (listener="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", flags="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    invoke-static {p0, v5, v6, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v3
.end method

.method public onUnhandledDropCallback(Z)V
    .registers 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    return-void
.end method

.method public final performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;)Landroid/os/IBinder;
    .registers 35

    move-object/from16 v2, p0

    move-object/from16 v0, p3

    move/from16 v5, p4

    move-object/from16 v4, p5

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    const-string v1, "Bad requesting window "

    const-string/jumbo v13, "[TWODND] Set DragSourceTask="

    const-string v14, "Calling task to hide="

    const-string/jumbo v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "perform drag: win="

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " surface="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " flags=0x"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " data="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " touch("

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ") thumb center("

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_81
    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_231

    :try_start_89
    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v6, :cond_d6

    const-string/jumbo v0, "WindowManager"

    const-string v1, "Drag already in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_d1

    if-eqz v4, :cond_c1

    :try_start_9a
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_a5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_af

    :try_start_a5
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_b4

    :try_start_ab
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_c1

    :catchall_af
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_3fc

    :catchall_b4
    move-exception v0

    move-object v4, v0

    if-eqz v1, :cond_c0

    :try_start_b8
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_c0

    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c0
    :goto_c0
    throw v4

    :cond_c1
    :goto_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_af

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v10

    :catchall_d1
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_3d8

    :cond_d6
    :try_start_d6
    iget-object v6, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v6, v10, v0, v9}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eqz v6, :cond_e5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v16

    if-nez v16, :cond_eb

    :cond_e5
    move-object/from16 v18, v3

    move-object/from16 v16, v10

    goto/16 :goto_39f

    :cond_eb
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_11e

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "display content is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_d6 .. :try_end_fa} :catchall_d1

    if-eqz v4, :cond_c1

    :try_start_fc
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_af

    :try_start_107
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_10d
    .catchall {:try_start_107 .. :try_end_10d} :catchall_111

    :try_start_10d
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_af

    goto :goto_c1

    :catchall_111
    move-exception v0

    move-object v4, v0

    if-eqz v1, :cond_11d

    :try_start_115
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_119

    goto :goto_11d

    :catchall_119
    move-exception v0

    :try_start_11a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11d
    :goto_11d
    throw v4
    :try_end_11e
    .catchall {:try_start_11a .. :try_end_11e} :catchall_af

    :cond_11e
    move-object/from16 v16, v10

    :try_start_120
    iget-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v10, :cond_139

    iget-object v10, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_139

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_13b

    :cond_139
    move-object/from16 v9, v16

    :goto_13b
    and-int/lit16 v10, v5, 0x200

    if-nez v10, :cond_145

    const v10, 0x3f350481  # 0.7071f

    :goto_142
    move-object/from16 v17, v6

    goto :goto_148

    :cond_145
    const/high16 v10, 0x3f800000  # 1.0f

    goto :goto_142

    :goto_148
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6
    :try_end_14c
    .catchall {:try_start_120 .. :try_end_14c} :catchall_d1

    move-object/from16 v18, v3

    :try_start_14e
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    new-instance v0, Lcom/android/server/wm/DragState;

    move-object/from16 v19, v1

    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_162
    .catchall {:try_start_14e .. :try_end_162} :catchall_39d

    move/from16 v1, p1

    :try_start_164
    iput v1, v0, Lcom/android/server/wm/DragState;->mPid:I

    move/from16 v1, p2

    iput v1, v0, Lcom/android/server/wm/DragState;->mUid:I

    iput v10, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    iget v1, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v1, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iput-object v15, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    iput-object v8, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v8, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v11, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    and-int/lit16 v1, v5, 0x4000

    const/4 v3, -0x1

    if-nez v1, :cond_17e

    goto :goto_189

    :cond_17e
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_189

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_187

    goto :goto_189

    :cond_187
    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :cond_189
    :goto_189
    iput v3, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    const/4 v1, 0x1

    if-eqz v9, :cond_1c7

    and-int/lit16 v0, v5, 0x100

    if-eqz v0, :cond_1c7

    const-string/jumbo v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v9, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    iput-object v9, v2, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    goto :goto_1c7

    :catchall_1c2
    move-exception v0

    move-object/from16 v4, v16

    goto/16 :goto_3d8

    :cond_1c7
    :goto_1c7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_1d8

    const/high16 v0, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1d8

    if-eqz v12, :cond_1d8

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean v1, v0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    :cond_1d8
    and-int/lit16 v0, v5, 0x400

    if-nez v0, :cond_366

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v4, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v6, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, v6, v9}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    const/high16 v3, 0x200000

    and-int/2addr v3, v5

    if-eqz v3, :cond_21e

    if-eqz v11, :cond_21e

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-eqz v3, :cond_216

    invoke-virtual {v11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ClipDescription;->setDragFromRecent(Z)V

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean v1, v3, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    goto :goto_21e

    :cond_216
    invoke-virtual {v11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->setDragFromRecent(Z)V
    :try_end_21e
    .catchall {:try_start_164 .. :try_end_21e} :catchall_1c2

    :cond_21e
    :goto_21e
    :try_start_21e
    monitor-exit v18
    :try_end_21f
    .catchall {:try_start_21e .. :try_end_21f} :catchall_363

    :try_start_21f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_231

    :try_start_222
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_230} :catch_234
    .catchall {:try_start_222 .. :try_end_230} :catchall_231

    goto :goto_23e

    :catchall_231
    move-exception v0

    goto/16 :goto_401

    :catch_234
    move-exception v0

    :try_start_235
    const-string/jumbo v3, "WindowManager"

    const-string v4, "Exception thrown while waiting for touch focus transfer"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_23e
    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_246
    .catchall {:try_start_235 .. :try_end_246} :catchall_231

    if-nez v0, :cond_26a

    :try_start_248
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Unable to transfer touch focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    monitor-exit v3
    :try_end_258
    .catchall {:try_start_248 .. :try_end_258} :catchall_267

    :goto_258
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v16

    :catchall_267
    move-exception v0

    goto/16 :goto_35e

    :cond_26a
    :try_start_26a
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    const/16 v0, 0x2002

    move/from16 v7, p6

    and-int/2addr v7, v0

    if-ne v7, v0, :cond_2ba

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/wm/DragState;->mDeviceId:I

    move/from16 v9, p8

    iput v9, v0, Lcom/android/server/wm/DragState;->mPointerId:I

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v10, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/16 v12, 0x3fd

    invoke-static {v10, v12}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v10

    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v13, v12, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v12, v12, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v12, :cond_2b4

    iget-object v12, v12, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    if-nez v12, :cond_2a3

    goto :goto_2b4

    :cond_2a3
    invoke-virtual {v12}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v12

    move-object/from16 p6, v12

    :goto_2a9
    move-object/from16 p1, v0

    move/from16 p4, v7

    move/from16 p5, v9

    move-object/from16 p2, v10

    move/from16 p3, v13

    goto :goto_2b7

    :cond_2b4
    :goto_2b4
    move-object/from16 p6, v16

    goto :goto_2a9

    :goto_2b7
    invoke-virtual/range {p1 .. p6}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    :cond_2ba
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v9, p11

    iput v9, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    move/from16 v10, p12

    iput v10, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v0, :cond_2fc

    if-eqz v11, :cond_2fc

    const-string/jumbo v7, "WindowManager"

    invoke-virtual {v11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipDescription;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const-string/jumbo v12, "image/*"

    invoke-virtual {v7, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2eb

    iget-object v7, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v11, 0x0

    iput v11, v7, Lcom/android/server/wm/DragState;->mMimeType:I

    goto :goto_2fc

    :cond_2eb
    invoke-virtual {v11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const-string/jumbo v11, "text/*"

    invoke-virtual {v7, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2fc

    iget-object v7, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v1, v7, Lcom/android/server/wm/DragState;->mMimeType:I

    :cond_2fc
    :goto_2fc
    iget-object v7, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v7, v7, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v11

    if-eqz v11, :cond_325

    iget-object v11, v8, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v11, :cond_32e

    sub-float v9, v5, v9

    iget v12, v11, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v12

    iget v13, v11, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v13

    float-to-int v9, v9

    sub-float v10, v6, v10

    mul-float/2addr v10, v12

    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v10, v12

    float-to-int v10, v10

    int-to-float v9, v9

    int-to-float v10, v10

    invoke-virtual {v7, v4, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v9, v11, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v7, v4, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_32e

    :cond_325
    if-eqz v0, :cond_32e

    sub-float v9, v5, v9

    sub-float v10, v6, v10

    invoke-virtual {v7, v4, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_32e
    :goto_32e
    iget-object v9, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v9, v9, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    invoke-virtual {v7, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v4, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_342

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_342
    iget-object v4, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v7, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(FFIZ)V

    if-eqz v0, :cond_34e

    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->handleDragEvent()V

    :cond_34e
    monitor-exit v3
    :try_end_34f
    .catchall {:try_start_26a .. :try_end_34f} :catchall_267

    :try_start_34f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_352
    .catchall {:try_start_34f .. :try_end_352} :catchall_231

    :goto_352
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v15

    :goto_35e
    :try_start_35e
    monitor-exit v3
    :try_end_35f
    .catchall {:try_start_35e .. :try_end_35f} :catchall_267

    :try_start_35f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_363
    .catchall {:try_start_35f .. :try_end_363} :catchall_231

    :catchall_363
    move-exception v0

    goto/16 :goto_3fc

    :cond_366
    move/from16 v5, p9

    move/from16 v6, p10

    :try_start_36a
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const v3, 0xea60

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v3, v1

    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_398
    .catchall {:try_start_36a .. :try_end_398} :catchall_1c2

    :try_start_398
    monitor-exit v18
    :try_end_399
    .catchall {:try_start_398 .. :try_end_399} :catchall_363

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_352

    :catchall_39d
    move-exception v0

    goto :goto_3d8

    :goto_39f
    :try_start_39f
    const-string/jumbo v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b1
    .catchall {:try_start_39f .. :try_end_3b1} :catchall_39d

    if-eqz v4, :cond_3d5

    :try_start_3b3
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_3be
    .catchall {:try_start_3b3 .. :try_end_3be} :catchall_363

    :try_start_3be
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3c4
    .catchall {:try_start_3be .. :try_end_3c4} :catchall_3c8

    :try_start_3c4
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3c7
    .catchall {:try_start_3c4 .. :try_end_3c7} :catchall_363

    goto :goto_3d5

    :catchall_3c8
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_3d4

    :try_start_3cc
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3cf
    .catchall {:try_start_3cc .. :try_end_3cf} :catchall_3d0

    goto :goto_3d4

    :catchall_3d0
    move-exception v0

    :try_start_3d1
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d4
    :goto_3d4
    throw v3

    :cond_3d5
    :goto_3d5
    monitor-exit v18

    goto/16 :goto_258

    :goto_3d8
    if-eqz v4, :cond_3fb

    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_3e4
    .catchall {:try_start_3d1 .. :try_end_3e4} :catchall_363

    :try_start_3e4
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3ea
    .catchall {:try_start_3e4 .. :try_end_3ea} :catchall_3ee

    :try_start_3ea
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3ed
    .catchall {:try_start_3ea .. :try_end_3ed} :catchall_363

    goto :goto_3fb

    :catchall_3ee
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_3fa

    :try_start_3f2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3f5
    .catchall {:try_start_3f2 .. :try_end_3f5} :catchall_3f6

    goto :goto_3fa

    :catchall_3f6
    move-exception v0

    :try_start_3f7
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3fa
    :goto_3fa
    throw v3

    :cond_3fb
    :goto_3fb
    throw v0

    :goto_3fc
    monitor-exit v18
    :try_end_3fd
    .catchall {:try_start_3f7 .. :try_end_3fd} :catchall_363

    :try_start_3fd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_401
    .catchall {:try_start_3fd .. :try_end_401} :catchall_231

    :goto_401
    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
.end method

.method public final reportDropResult(Landroid/view/IWindow;Z)V
    .registers 11

    const-string v0, "Bad result-reporting window "

    const-string v1, "Invalid drop-result claim by "

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Drop result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " reported by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2f
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_111

    :try_start_37
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v4, :cond_56

    const-string/jumbo p1, "WindowManager"

    const-string p2, "Drop result given but no drag in progress"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_53

    :goto_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_53
    move-exception p1

    goto/16 :goto_12e

    :cond_56
    :try_start_56
    iget-object v4, v4, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v4, v2, :cond_113

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_88

    const-string/jumbo p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_44

    :cond_88
    if-nez p2, :cond_99

    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object p1, p1, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    const-string/jumbo v0, "window-drop"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_99

    monitor-exit v3

    goto :goto_44

    :cond_99
    const/4 p1, 0x1

    if-eqz p2, :cond_a9

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_a9

    move v0, p1

    goto :goto_aa

    :cond_a9
    move v0, v5

    :goto_aa
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-interface {v4, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p2, :cond_dc

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_c4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_c4

    goto :goto_c5

    :cond_c4
    move p1, v5

    :goto_c5
    if-nez p1, :cond_d3

    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-boolean p1, p1, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-eqz p1, :cond_dc

    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e8

    if-ne p1, v4, :cond_dc

    :cond_d3
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v0, p1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p1, Lcom/android/server/wm/DragState;->mFlags:I

    goto :goto_dd

    :cond_dc
    move v5, v0

    :goto_dd
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p1, p2, v5}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;
    :try_end_e8
    .catchall {:try_start_56 .. :try_end_e8} :catchall_53

    if-eqz v0, :cond_101

    if-eqz p1, :cond_101

    if-eqz p2, :cond_101

    if-nez v2, :cond_101

    :try_start_f0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/window/IGlobalDragListener;->onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_f7} :catch_f8
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_53

    goto :goto_101

    :catch_f8
    move-exception p1

    :try_start_f9
    const-string/jumbo p2, "WindowManager"

    const-string v0, "Failed to call global drag listener for cross-window drop"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_101
    :goto_101
    monitor-exit v3
    :try_end_102
    .catchall {:try_start_f9 .. :try_end_102} :catchall_53

    :try_start_102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_111

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_111
    move-exception p1

    goto :goto_133

    :cond_113
    :try_start_113
    const-string/jumbo p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "reportDropResult() by non-recipient"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_12e
    monitor-exit v3
    :try_end_12f
    .catchall {:try_start_113 .. :try_end_12f} :catchall_53

    :try_start_12f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_111

    :goto_133
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public final setGlobalDragListener(Landroid/window/IGlobalDragListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Lcom/android/server/wm/DragDropController$1;

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_16
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2d

    :try_start_20
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    :cond_2d
    return-void
.end method
