.class public final synthetic Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatReachabilityPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatReachabilityPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_c
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez p0, :cond_19

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    goto :goto_2b

    :cond_19
    const/4 v1, 0x1

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mSingleTap:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_17

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    :try_start_20
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSingleTap:Z

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception v1

    :try_start_28
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSingleTap:Z

    throw v1

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
