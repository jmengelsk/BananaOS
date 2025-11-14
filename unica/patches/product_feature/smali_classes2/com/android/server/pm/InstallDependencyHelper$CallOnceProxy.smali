.class public final Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mCallback:Lcom/android/server/pm/PackageInstallerSession$6;

.field public mCalled:Z

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/pm/PackageInstallerSession$6;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Lcom/android/server/pm/PackageInstallerSession$6;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/android/server/pm/PackageManagerException;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_13

    throw p1
.end method

.method public final bridge synthetic onError(Ljava/lang/Throwable;)V
    .registers 2

    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onError(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public final onResult()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_13

    throw v0
.end method

.method public final bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult()V

    return-void
.end method
