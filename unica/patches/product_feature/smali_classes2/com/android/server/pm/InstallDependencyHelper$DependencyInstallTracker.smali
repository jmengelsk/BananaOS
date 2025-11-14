.class public final Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field public final mPendingSessionIds:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Landroid/util/ArraySet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final onSessionComplete(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    monitor-exit p0

    return v1

    :catchall_10
    move-exception p1

    goto :goto_2d

    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult()V

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_2b
    monitor-exit p0

    return v1

    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_10

    throw p1
.end method
