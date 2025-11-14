.class public final synthetic Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v2

    if-nez v2, :cond_29

    if-nez v1, :cond_29

    const-string/jumbo p0, "WindowManager"

    const-string/jumbo p1, "Unknown focus tokens, dropping reportFocusChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception p0

    goto/16 :goto_de

    :cond_29
    :try_start_29
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedInputTarget:Lcom/android/server/wm/InputTarget;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/AccessibilityController;->onFocusChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-string v4, "Focus changing: %s -> %s"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    if-eqz v2, :cond_47

    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v3

    goto :goto_48

    :cond_47
    move-object v3, v0

    :goto_48
    const/4 v4, 0x0

    if-eqz v3, :cond_ce

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-ne v5, p2, :cond_ce

    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    iget-object v5, p2, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_59
    iget-object v6, p2, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_87

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v6, v7, :cond_6c

    goto :goto_87

    :cond_6c
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v5, p2, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    iget-object p2, p2, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8b

    :catchall_85
    move-exception p0

    goto :goto_c9

    :cond_87
    :goto_87
    :try_start_87
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_8b
    const/4 p2, 0x1

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    invoke-interface {v2}, Lcom/android/server/wm/InsetsTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_99
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowFocusChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a8

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_ce

    :catchall_a6
    move-exception p0

    goto :goto_c4

    :cond_a8
    :try_start_a8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowFocusChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v5, v3, [Lcom/android/server/wm/WindowManagerInternal$WindowFocusChangeListener;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowFocusChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_a6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move p0, v4

    :goto_ba
    if-ge p0, v3, :cond_ce

    aget-object v2, v5, p0

    invoke-interface {v2, p2}, Lcom/android/server/wm/WindowManagerInternal$WindowFocusChangeListener;->focusChanged(Landroid/os/IBinder;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_ba

    :goto_c4
    :try_start_c4
    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_a6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_c9
    :try_start_c9
    monitor-exit v5
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_ce
    :goto_ce
    if-eqz v1, :cond_d4

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    :cond_d4
    if-eqz v0, :cond_dd

    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-ne p0, p1, :cond_dd

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    :cond_dd
    return-void

    :goto_de
    :try_start_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
