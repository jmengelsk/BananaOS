.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPermissionListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_3a

    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_35

    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_20

    :try_start_19
    const-string/jumbo v3, "default:0"

    invoke-interface {v2, p1, v3}, Landroid/permission/IOnPermissionsChangeListener;->onPermissionsChanged(ILjava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_22
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    goto :goto_2c

    :catchall_20
    move-exception p1

    goto :goto_2f

    :catch_22
    move-exception v2

    :try_start_23
    const-string/jumbo v3, "PermissionManager"

    const-string/jumbo v4, "Permission listener is dead"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_20

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :goto_2f
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_35
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_3a
    return-void
.end method

.method public final onPermissionsChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method
