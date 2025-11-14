.class public final Lcom/android/server/vr/VrManagerService$2;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :catch_0
    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IPersistentVrStateCallbacks;->onPersistentVrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown message type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v0, p1, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_6

    move v1, v2

    :cond_6
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :catch_1
    :goto_1
    if-lez p1, :cond_7

    add-int/lit8 p1, p1, -0x1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    return-void
.end method
