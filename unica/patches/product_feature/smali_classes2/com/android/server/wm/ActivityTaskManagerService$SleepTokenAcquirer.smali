.class public final Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSleepTokens:Landroid/util/SparseArray;

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mSleepTokens:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final acquire(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mSleepTokens:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mTag:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(ILjava/lang/String;)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_2c

    :cond_27
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final release(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_26

    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
