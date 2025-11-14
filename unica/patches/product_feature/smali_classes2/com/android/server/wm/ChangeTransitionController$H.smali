.class public final Lcom/android/server/wm/ChangeTransitionController$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ChangeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ChangeTransitionController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const-string/jumbo v0, "SYNC_ACTIVITY_TIMEOUT!! "

    const-string/jumbo v1, "SYNC_ACTIVITY_TIMEOUT_FOR_TRAMPOLINE!! "

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_67

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    return-void

    :cond_f
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object p1, p1, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_17
    const-string v0, "ChangeTransitionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v1, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_34

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_34

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    goto :goto_34

    :catchall_4d
    move-exception p0

    goto :goto_62

    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_17 .. :try_end_5e} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_62
    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_67
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object p1, p1, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_6f
    const-string v1, "ChangeTransitionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    monitor-exit p1
    :try_end_93
    .catchall {:try_start_6f .. :try_end_93} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_97
    move-exception p0

    :try_start_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
