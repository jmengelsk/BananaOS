.class public final Lcom/android/server/wm/TransitionController$RemotePlayer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDelegateProcesses:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catchall_1d
    move-exception p0

    goto :goto_26

    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_1d

    throw p0
.end method

.method public final update(Lcom/android/server/wm/WindowProcessController;ZZ)V
    .registers 6

    const/4 v0, 0x1

    if-nez p2, :cond_2e

    iget-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_6
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_d
    if-ltz p3, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_27

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    monitor-exit p2
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_25

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    return-void

    :catchall_25
    move-exception p0

    goto :goto_2c

    :cond_27
    add-int/lit8 p3, p3, -0x1

    goto :goto_d

    :cond_2a
    :try_start_2a
    monitor-exit p2

    return-void

    :goto_2c
    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_25

    throw p0

    :cond_2e
    iget p2, p1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_34

    goto :goto_3a

    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result p2

    if-nez p2, :cond_3b

    :goto_3a
    return-void

    :cond_3b
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->addAnimatingReason(I)V

    new-instance p2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;-><init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V

    if-eqz p3, :cond_50

    iput-boolean v0, p2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v0, 0xc8

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    monitor-enter p3

    :try_start_53
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3

    return-void

    :catchall_60
    move-exception p0

    monitor-exit p3
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_60

    throw p0
.end method
