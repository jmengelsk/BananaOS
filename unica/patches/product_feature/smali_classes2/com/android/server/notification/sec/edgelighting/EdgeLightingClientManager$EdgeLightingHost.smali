.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public condition:I

.field public final mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    new-instance v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    iput-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    iput p5, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    iput p6, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    if-eqz p2, :cond_2a

    const/4 p1, 0x0

    :try_start_1f
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    return-void

    :catch_23
    const-string p0, "EdgeLightingClientManager"

    const-string p1, "EdgeLightingHost : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 6

    const-string v0, "EdgeLightingClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "binderDied : component = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v0

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v1, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v2, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v1, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v1, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_91

    :cond_4a
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_48

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v1, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_56
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_8e

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-boolean v0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v0, :cond_7b

    return-void

    :cond_7b
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    new-instance v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_8e
    move-exception p0

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p0

    :goto_91
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_48

    throw p0
.end method

.method public final onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 7

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v1, "EdgeLightingClientManager"

    if-nez v0, :cond_7

    goto :goto_22

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStartEdgeLighting pkg = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_22
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2d

    const-string/jumbo p0, "onStartEdgeLighting : token is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    new-instance v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  [Host: component:("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") condition:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    const-string v1, ")]"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
