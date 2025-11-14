.class public final Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    iget-object v0, v0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;->run()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
