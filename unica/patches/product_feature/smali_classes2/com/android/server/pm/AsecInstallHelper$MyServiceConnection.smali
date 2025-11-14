.class public final Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;


# instance fields
.field public mBinding:Z

.field public mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

.field public mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/pm/containerservice/IContainerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;-><init>(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    sget-wide p0, Lcom/android/server/pm/AsecInstallHelper;->UNBIND_DELAY:J

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method
